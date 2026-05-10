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
    # 🟢 Coding5s Lab: Elixir Foundations (<%= String.capitalize(level) %>)

    ## 🧬 Stage 1: <%= type %> #<%= id %> - Learn - <%= topic %>

    ### 🤖 Coding5s Prompt (Stage 1)
    AI akan memberikan 3 hingga 5 contoh praktis. Untuk membangun memori otot yang bertahan lama, ketik setiap contoh secara manual ke dalam sel di bawah ini. Analisis analogi yang diberikan dan baca komentar sebaris dengan cermat — komentar tersebut berisi logika arsitektural yang Anda perlukan untuk menguasai topik ini. Cukup salin dan tempel berikut ini ke dalam obrolan AI Anda, lalu kirimkan.

    <details>
    <summary><strong>✨ Click to expand the Stage 1 Prompt</strong></summary>

    ```text
    <%= prompt %>
    ```

    </details>

    ---

    ### 🎓 Mentor Stage 1 | Practice | Elixir | 📊 Level: <%= String.capitalize(level) %>
    Ini adalah prompt mentor. Salin dan tempel ke asisten AI Anda bersama dengan kode Anda dan penjelasan logika singkat (semua dalam satu pesan). Gunakan ini untuk memperbaiki kesalahan (debug), memprofesionalkan kode Anda, meminta tantangan baru, hoặc mendapatkan penjelasan yang lebih mendalam. Anda juga dapat mengajukan pertanyaan spesifik kepada mentor atau meminta tantangan baru untuk menguji keterampilan Anda. Simulator mentor elit ini memberikan umpan balik tingkat tinggi untuk mengasah intuisi teknik Anda.

    <details>
    <summary><strong>🛡️ Click to expand the Stage 1 Mentor Prompt</strong></summary>

    ```text
    <%= mentor_prompt %>
    ```

    </details>

    ---

    ### 💻 Live Execution
    सGunakan sel eksekusi Elixir di bawah ini untuk mengetik setiap contoh secara manual dan membangun memori otot yang bertahan lama. 💡 Pro Tip: Anda dapat menambahkan lebih banyak sel eksekusi dengan mengeklik tombol + Elixir di bagian bawah bagian mana pun.

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
LabGenerator.run("elixir_fundamentals_id.csv")
