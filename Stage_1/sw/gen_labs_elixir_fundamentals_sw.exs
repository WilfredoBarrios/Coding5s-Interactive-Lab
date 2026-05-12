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
    AI itatoa mifano 3 hadi 5 ya vitendo. Ili kujenga kumbukumbu ya misuli (muscle memory) ya kudumu, andika kila mfano kwa mkono kwenye seli hapa chini. Chambua mifano iliyotolewa na usome maelezo ya ndani kwa uangalifu—yana mantiki ya kusanifu unayohitaji ili kubobea katika mada hii. Nakili tu na ubandike yafuatayo kwenye soga yako ya AI, kisha tuma.

    <details>
    <summary><strong>✨ Click to expand the Stage 1 Prompt</strong></summary>

    ```text
    <%= prompt %>
    ```

    </details>

    ---

    ### 🎓 Mentor Stage 1 | Practice | Elixir Fundamentals | 📊 Level: <%= String.capitalize(level) %>
    Hii ndiyo "mentor prompt". Inakili na uibandike kwenye msaidizi wako wa AI pamoja na kodi yako na maelezo mafupi ya mantiki (yote katika ujumbe mmoja). Itumie kurekebisha makosa, kufanya kodi yako iwe ya kitaalamu zaidi, kuomba changamoto mpya, au kupata maelezo ya kina zaidi. Unaweza pia kumuuliza mwalimu (mentor) maswali maalum au kuomba changamoto mpya ili kujaribu ujuzi wako. Kiigizo hiki cha mwalimu wa ngazi ya juu hutoa maoni bora ili kuimarisha angalizo lako la kihandisi.

    <details>
    <summary><strong>🛡️ Click to expand the Stage 1 Mentor Prompt</strong></summary>

    ```text
    <%= mentor_prompt %>
    ```

    </details>

    ---

    ### 💻 Live Execution
    Tumia seli ya utekelezaji ya Elixir hapa chini kuandika kila mfano kwa mkono na kujenga kumbukumbu ya misuli ya kudumu. 💡 Kidokezo cha Pro: Unaweza kuongeza seli zaidi za utekelezaji kwa kubofya kitufe cha + Elixir chini ya sehemu yoyote.

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
LabGenerator.run("elixir_fundamentals_sw.csv")
