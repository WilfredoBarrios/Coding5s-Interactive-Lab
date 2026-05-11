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
    AI ৩ থেকে ৫টি ব্যবহারিক উদাহরণ প্রদান করবে। দীর্ঘস্থায়ী মাসল মেমরি তৈরির জন্য, নীচের সেলে প্রতিটি উদাহরণ ম্যানুয়ালি টাইপ করুন। প্রদত্ত উপমাগুলো বিশ্লেষণ করুন এবং ইনলাইন কমেন্টগুলো মনোযোগ সহকারে পড়ুন—এগুলোতে এই বিষয়টি আয়ত্ত করার জন্য প্রয়োজনীয় আর্কিটেকচারাল লজিক রয়েছে। শুধু নিচের অংশটুকু আপনার AI চ্যাটে কপি এবং পেস্ট করুন, তারপর সাবমিট করুন।

    <details>
    <summary><strong>✨ Click to expand the Stage 1 Prompt</strong></summary>

    ```text
    <%= prompt %>
    ```

    </details>

    ---

    ### 🎓 Mentor Stage 1 Concurrency & OTP | Practice | Elixir | 📊 Level: <%= String.capitalize(level) %>
    এটি মেন্টর প্রম্পট। আপনার কোড এবং সংক্ষিপ্ত লজিক ব্যাখ্যাসহ (সবকিছু একটি একক মেসেজে) এটি আপনার AI অ্যাসিস্ট্যান্টে কপি এবং পেস্ট করুন। এরর ডিবাগ করতে, আপনার কোডকে প্রফেশনাল রূপ দিতে, নতুন চ্যালেঞ্জের অনুরোধ করতে বা আরও গভীর ব্যাখ্যা পেতে এটি ব্যবহার করুন। আপনি মেন্টরকে নির্দিষ্ট প্রশ্ন করতে পারেন বা আপনার দক্ষতা যাচাই করার জন্য নতুন চ্যালেঞ্জের অনুরোধ করতে পারেন। এই এলিট মেন্টর সিমুলেটরটি আপনার ইঞ্জিনিয়ারিং ইনটুইশনকে তীক্ষ্ণ করতে শীর্ষস্থানীয় ফিডব্যাক প্রদান করে।

    <details>
    <summary><strong>🛡️ Click to expand the Stage 1 Mentor Prompt</strong></summary>

    ```text
    <%= mentor_prompt %>
    ```

    </details>

    ---

    ### 💻 Live Execution
    প্রতিটি উদাহরণ ম্যানুয়ালি টাইপ করতে এবং দীর্ঘস্থায়ী মাসল মেমরি তৈরি করতে নীচের Elixir এক্সিকিউশন সেলটি ব্যবহার করুন। 💡 প্রো টিপ: যেকোনো সেকশনের নিচে + Elixir বাটনে ক্লিক করে আপনি আরও এক্সিকিউশন সেল যোগ করতে পারেন।

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
LabGenerator.run("elixir_fundamentals_bn.csv")
