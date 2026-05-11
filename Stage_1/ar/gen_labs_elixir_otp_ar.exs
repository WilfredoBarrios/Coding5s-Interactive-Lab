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
    سيوفر الذكاء الاصطناعي من 3 إلى 5 أمثلة عملية. لبناء ذاكرة عضلية دائمة، اكتب كل مثال يدويًا في الخلية أدناه. حلل الأمثلة المذكورة واقرأ التعليقات المضمنة بعناية—فهي تحتوي على المنطق المعماري الذي تحتاجه لإتقان هذا الموضوع. ما عليك سوى نسخ ولصق ما يلي في دردشة الذكاء الاصطناعي الخاصة بك، ثم الإرسال.

    <details>
    <summary><strong>✨ Click to expand the Stage 1 Prompt</strong></summary>

    ```text
    <%= prompt %>
    ```

    </details>

    ---

    ### 🎓 Mentor Stage 1 Concurrency & OTP | Practice | Elixir | 📊 Level: <%= String.capitalize(level) %>
    هذا هو موجه "المنتور" (المدرب). انسخه والصقه في مساعد الذكاء الاصطناعي الخاص بك مع الكود الخاص بك وشرح موجز للمنطق (كل ذلك في رسالة واحدة). استخدمه لتصحيح الأخطاء، أو إضفاء طابع احترافي على الكود، أو طلب تحدٍ جديد، أو الحصول على شرح أعمق. يمكنك أيضًا طرح أسئلة محددة على المدرب أو طلب تحديات جديدة لاختبار مهاراتك. يوفر محاكي المدرب النخبة هذا ملاحظات من المستوى الرفيع لصقل حدسك الهندسي.

    <details>
    <summary><strong>🛡️ Click to expand the Stage 1 Mentor Prompt</strong></summary>

    ```text
    <%= mentor_prompt %>
    ```

    </details>

    ---

    ### 💻 Live Execution
    استخدم خلية تنفيذ Elixir أدناه لكتابة كل مثال يدويًا وبناء ذاكرة عضلية دائمة. 💡 نصيحة احترافية: يمكنك إضافة المزيد من خلايا التنفيذ بالنقر فوق زر + Elixir في أسفل أي قسم.

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
LabGenerator.run("elixir_fundamentals_ar.csv")
