Mix.install([
  {:nimble_csv, "~> 1.1"}
])

# Definimos el parser para manejar comas y comillas dentro de los prompts
NimbleCSV.define(Coding5sParser, separator: ",", escape: "\"")

defmodule LabGenerator do
  require EEx

  # Template EEx para el archivo Markdown/Livebook
  EEx.function_from_string(
    :def,
    :render_livemd,
    """
    # 🟢 Coding5s Lab: Elixir Fundamentals (<%= String.capitalize(level) %>)

    ## 🧬 Stage 1: <%= type %> #<%= id %> - Learn - <%= topic %>

    ### 🤖 Coding5s Prompt (Stage 1 - Elixir Fundamentals)
    AI 3 నుండి 5 ఆచరణాత్మక ఉదాహరణలను అందిస్తుంది. శాశ్వతమైన మజిల్ మెమరీని (muscle memory) నిర్మించుకోవడానికి, క్రింది సెల్‌లో ప్రతి ఉదాహరణను మాన్యువల్‌గా టైప్ చేయండి. అందించిన సారూప్యతలను (analogies) విశ్లేషించండి మరియు ఇన్‌లైన్ కామెంట్లను జాగ్రత్తగా చదవండి—ఈ అంశంపై పట్టు సాధించడానికి మీకు అవసరమైన ఆర్కిటెక్చరల్ లాజిక్ వాటిలో ఉంటుంది. కింది వాటిని మీ AI చాట్‌లో కాపీ చేసి పేస్ట్ చేసి, సబ్మిట్ చేయండి.

    <details>
    <summary><strong>✨ Click to expand the Stage 1 Prompt</strong></summary>

    ```text
    <%= prompt %>
    ```

    </details>

    ---

    ### 🎓 Mentor Stage 1 | Practice | Elixir Fundamentals | 📊 Level: <%= String.capitalize(level) %>
    ఇది మెంటార్ ప్రాంప్ట్. మీ కోడ్ మరియు సంక్షిప్త లాజిక్ వివరణతో పాటు (అన్నీ ఒకే మెసేజ్‌లో) దీన్ని మీ AI అసిస్టెంట్‌లో కాపీ చేసి పేస్ట్ చేయండి. ఎర్రర్లను డీబగ్ చేయడానికి, మీ కోడ్‌ను ప్రొఫెషనల్‌గా మార్చడానికి, కొత్త ఛాలెంజ్‌ని కోరడానికి లేదా లోతైన వివరణను పొందడానికి దీన్ని ఉపయోగించండి. మీరు మెంటార్‌ను నిర్దిష్ట ప్రశ్నలు అడగవచ్చు లేదా మీ నైపుణ్యాలను పరీక్షించుకోవడానికి కొత్త సవాళ్లను కోరవచ్చు. ఈ ఎలైట్ మెంటార్ సిమ్యులేటర్ మీ ఇంజనీరింగ్ అంతర్ దృష్టిని పదును పెట్టడానికి టాప్-టైర్ ఫీడ్‌బ్యాక్‌ను అందిస్తుంది.

    <details>
    <summary><strong>🛡️ Click to expand the Stage 1 Mentor Prompt</strong></summary>

    ```text
    <%= mentor_prompt %>
    ```

    </details>

    ---

    ### 💻 Live Execution
    ప్రతి ఉదాహరణను మాన్యువల్‌గా టైప్ చేయడానికి మరియు శాశ్వతమైన మజిల్ మెమరీని నిర్మించుకోవడానికి క్రింది Elixir ఎగ్జిక్యూషన్ సెల్‌ను ఉపయోగించండి. 💡 ప్రో టిప్: ఏదైనా సెక్షన్ దిగువన ఉన్న + Elixir బటన్‌ను క్లిక్ చేయడం ద్వారా మీరు మరిన్ని ఎగ్జిక్యూషన్ సెల్‌లను జోడించవచ్చు.

    ```elixir

    ```
    """,
    [:id, :type, :level, :topic, :prompt, :mentor_prompt]
  )

  def run(csv_path) do
    unless File.exists?(csv_path) do
      raise "Archivo #{csv_path} no encontrado."
    end

    IO.puts("Iniciando la generación de laboratorios...")

    csv_path
    |> File.stream!()
    |> Coding5sParser.parse_stream(skip_headers: true)
    # Pasamos cada fila a nuestra función process_row
    |> Enum.each(&process_row/1)

    IO.puts("\n✅ ¡Todos los laboratorios interactivos han sido generados exitosamente!")
  end

  # --- PATTERN MATCHING AL RESCATE ---

  # Molde 1: Fila con 6 columnas (ID, Nivel, Tipo, Tópico, Prompt, Mentor Prompt)
  defp process_row([id, level, type, topic, prompt, mentor_prompt]) do
    generate_file(id, level, type, topic, prompt, mentor_prompt)
  end

  # Molde 2: Catch-all. Si la fila está vacía o tiene un número raro de columnas.
  defp process_row(row) do
    IO.puts("⚠️ Saltando fila con formato inesperado (Columnas: #{length(row)})")
  end

  # --- LÓGICA DE GENERACIÓN ---

  defp generate_file(id, level, type, topic, prompt, mentor_prompt) do
    # Formatear el nivel (ej. " Beginner " -> "beginner")
    folder_level =
      level
      |> String.downcase()
      |> String.trim()

    # Formatear el nombre del archivo: Id_Type_Topic_Name
    filename =
      "#{id}_#{type}_#{topic}"
      |> String.downcase()
      |> String.replace(~r/[^a-z0-9]+/, "_")
      |> String.trim("_")
      |> Kernel.<>(".livemd")

    # Crear directorios
    dir_path = Path.join(["labs", folder_level])
    File.mkdir_p!(dir_path)

    # Inyectar variables en el template (ahora pasamos el mentor_prompt también)
    content = render_livemd(id, type, level, topic, prompt, mentor_prompt)

    # Escribir archivo
    full_path = Path.join(dir_path, filename)
    File.write!(full_path, content)

    IO.puts("Generado: #{full_path}")
  end
end

# Ejecutamos el script
LabGenerator.run("elixir_fundamentals_te.csv")
