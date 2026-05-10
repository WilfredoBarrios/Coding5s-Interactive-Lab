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
    AI 3 से 5 व्यावहारिक उदाहरण प्रदान करेगा। स्थायी मसल मेमोरी बनाने के लिए, प्रत्येक उदाहरण को नीचे दिए गए सेल में मैन्युअल रूप से टाइप करें। दिए गए उपमाओं (analogies) का विश्लेषण करें और इनलाइन टिप्पणियों को ध्यान से पढ़ें—इनमें वह आर्किटेक्चरल लॉजिक है जिसकी आपको इस विषय में महारत हासिल करने के लिए आवश्यकता है। बस निम्नलिखित को अपने AI चैट में कॉपी और पेस्ट करें, फिर सबमिट करें।

    <details>
    <summary><strong>✨ Click to expand the Stage 1 Prompt</strong></summary>

    ```text
    <%= prompt %>
    ```

    </details>

    ---

    ### 🎓 Mentor Stage 1 | Practice | Elixir | 📊 Level: <%= String.capitalize(level) %>
    यह मेंटर प्रॉम्प्ट है। इसे अपने कोड और संक्षिप्त लॉजिक स्पष्टीकरण के साथ अपने AI असिस्टेंट में कॉपी और पेस्ट करें (सब एक ही मैसेज में)। इसका उपयोग त्रुटियों को सुधारने (debug), अपने कोड को प्रोफेशनल बनाने, नई चुनौती का अनुरोध करने या गहरी व्याख्या प्राप्त करने के लिए करें। आप मेंटर से विशिष्ट प्रश्न भी पूछ सकते हैं या अपने कौशल का परीक्षण करने के लिए नई चुनौतियों का अनुरोध कर सकते हैं। यह एलीट मेंटर सिम्युलेटर आपकी इंजीनियरिंग अंतर्ज्ञान (intuition) को तेज करने के लिए टॉप-टियर फीडबैक प्रदान करता है।

    <details>
    <summary><strong>🛡️ Click to expand the Stage 1 Mentor Prompt</strong></summary>

    ```text
    <%= mentor_prompt %>
    ```

    </details>

    ---

    ### 💻 Live Execution
    स्थायी मसल मेमोरी बनाने के लिए प्रत्येक उदाहरण को मैन्युअल रूप से टाइप करने के लिए नीचे दिए गए Elixir सेल का उपयोग करें। 💡 प्रो टिप: आप किसी भी सेक्शन के नीचे + Elixir बटन पर क्लिक करके और अधिक सेल जोड़ सकते हैं।

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
LabGenerator.run("elixir_fundamentals_hi.csv")
