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
    # 🟢 Coding5s Lab: Elixir Concurrency & OTP (<%= String.capitalize(level) %>)

    ## 🧬 Stage 1: <%= type %> #<%= id %> - Learn - <%= topic %>

    ### 🤖 Coding5s Prompt (Stage 1 - Concurrency & OTP)
    AI 3 முதல் 5 நடைமுறை உதாரணங்களை வழங்கும். நீடித்த தசை நினைவகத்தை (muscle memory) உருவாக்க, கீழே உள்ள கலத்தில் (cell) ஒவ்வொரு உதாரணத்தையும் கைமுறையாக தட்டச்சு செய்யவும். வழங்கப்பட்ட ஒப்புமைகளை பகுப்பாய்வு செய்து, இன்லைன் கருத்துகளை கவனமாகப் படிக்கவும்—இந்தத் தலைப்பில் தேர்ச்சி பெற உங்களுக்குத் தேவையான கட்டடக்கலை தர்க்கம் அவற்றில் உள்ளது. பின்வருவனவற்றை உங்கள் AI அரட்டையில் நகலெடுத்து ஒட்டி, சமர்ப்பிக்கவும்.

    <details>
    <summary><strong>✨ Click to expand the Stage 1 Prompt</strong></summary>

    ```text
    <%= prompt %>
    ```

    </details>

    ---

    ### 🎓 Mentor Stage 1 Concurrency & OTP | Practice | Elixir | 📊 Level: <%= String.capitalize(level) %>
    இது மென்டர் ப்ராம்ப்ட் (Mentor Prompt). உங்கள் குறியீடு மற்றும் சுருக்கமான தர்க்க விளக்கத்துடன் (அனைத்தும் ஒரே செய்தியில்) உங்கள் AI உதவியாளரிடம் இதை நகலெடுத்து ஒட்டவும். பிழைகளை நீக்க, உங்கள் குறியீட்டை தொழில்முறை ரீதியாக மாற்ற, புதிய சவாலைக் கோர அல்லது ஆழமான விளக்கத்தைப் பெற இதைப் பயன்படுத்தவும். நீங்கள் மென்டரிடம் குறிப்பிட்ட கேள்விகளைக் கேட்கலாம் அல்லது உங்கள் திறமைகளைச் சோதிக்க புதிய சவால்களைக் கோரலாம். இந்த எலைட் மென்டர் சிமுலேட்டர் உங்கள் பொறியியல் உள்ளுணர்வைக் கூர்மைப்படுத்த உயர்மட்ட கருத்துக்களை வழங்குகிறது.

    <details>
    <summary><strong>🛡️ Click to expand the Stage 1 Mentor Prompt</strong></summary>

    ```text
    <%= mentor_prompt %>
    ```

    </details>

    ---

    ### 💻 Live Execution
    ஒவ்வொரு உதாரணத்தையும் கைமுறையாக தட்டச்சு செய்து நீடித்த தசை நினைவகத்தை உருவாக்க கீழே உள்ள Elixir எக்ஸிகியூஷன் செல்லைப் பயன்படுத்தவும். 💡 ப்ரோ டிப்: எந்தப் பகுதியின் கீழும் உள்ள + Elixir பொத்தானைக் கிளிக் செய்வதன் மூலம் கூடுதல் எக்ஸிகியூஷன் செல்களையும் நீங்கள் சேர்க்கலாம்.

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
LabGenerator.run("elixir_fundamentals_ta.csv")
