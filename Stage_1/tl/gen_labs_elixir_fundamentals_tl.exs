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
    Ang AI ay magbibigay ng 3 hanggang 5 praktikal na halimbawa. Upang bumuo ng pangmatagalang muscle memory, i-type ang bawat halimbawa nang manu-mano sa cell sa ibaba. Suriin ang mga ibinigay na analohiya at basahin nang mabuti ang mga inline comment—naglalaman ang mga ito ng architectural logic na kailangan mo para makabisado ang paksang ito. Kopyahin lamang at i-paste ang mga sumusunod sa iyong AI chat, pagkatapos ay i-submit.

    <details>
    <summary><strong>✨ Click to expand the Stage 1 Prompt</strong></summary>

    ```text
    <%= prompt %>
    ```

    </details>

    ---

    ### 🎓 Mentor Stage 1 | Practice | Elixir Fundamentals | 📊 Level: <%= String.capitalize(level) %>
    Ito ang mentor prompt. Kopyahin at i-paste ito sa iyong AI assistant kasama ang iyong code at isang maikling paliwanag ng logic (lahat sa isang mensahe). Gamitin ito upang i-debug ang mga error, gawing propesyonal ang iyong code, humiling ng bagong hamon, o makakuha ng mas malalim na paliwanag. Maaari ka ring magtanong ng mga partikular na tanong sa mentor o humiling ng mga bagong hamon upang subukin ang iyong mga kasanayan. Ang elite mentor simulator na ito ay nagbibigay ng top-tier na feedback upang patalasin ang iyong engineering intuition.

    <details>
    <summary><strong>🛡️ Click to expand the Stage 1 Mentor Prompt</strong></summary>

    ```text
    <%= mentor_prompt %>
    ```

    </details>

    ---

    ### 💻 Live Execution
    Gamitin ang Elixir execution cell sa ibaba upang manu-manong i-type ang bawat halimbawa at bumuo ng pangmatagalang muscle memory. 💡 Pro Tip: Maaari kang magdagdag ng higit pang mga execution cell sa pamamagitan ng pag-click sa button na + Elixir sa ibaba ng anumang seksyon.

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
LabGenerator.run("elixir_fundamentals_tl.csv")
