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
    AI จะนำเสนอตัวอย่างที่นำไปใช้ได้จริง 3 ถึง 5 ตัวอย่าง เพื่อสร้างความจำกล้ามเนื้อ (muscle memory) ที่ยั่งยืน ให้พิมพ์แต่ละตัวอย่างด้วยตนเองลงในช่องด้านล่าง วิเคราะห์การเปรียบเทียบที่ให้มาและอ่านคำอธิบายในบรรทัดอย่างละเอียด—ข้อมูลเหล่านี้มีตรรกะทางสถาปัตยกรรมที่คุณต้องใช้ในการฝึกฝนหัวข้อนี้ให้เชี่ยวชาญ เพียงคัดลอกและวางข้อความต่อไปนี้ลงในแชท AI ของคุณแล้วกดส่ง

    <details>
    <summary><strong>✨ Click to expand the Stage 1 Prompt</strong></summary>

    ```text
    <%= prompt %>
    ```

    </details>

    ---

    ### 🎓 Mentor Stage 1 | Practice | Elixir Fundamentals | 📊 Level: <%= String.capitalize(level) %>
    นี่คือพรอมต์สำหรับพี่เลี้ยง (mentor prompt) ให้คัดลอกและวางลงในผู้ช่วย AI ของคุณพร้อมกับโค้ดและคำอธิบายตรรกะสั้นๆ (ทั้งหมดในข้อความเดียว) ใช้เพื่อแก้ไขข้อผิดพลาด ปรับปรุงโค้ดของคุณให้เป็นมืออาชีพ ร้องขอความท้าทายใหม่ หรือขอคำอธิบายที่ลึกซึ้งยิ่งขึ้น คุณยังสามารถถามคำถามเฉพาะเจาะจงกับพี่เลี้ยงหรือร้องขอโจทย์ใหม่ๆ เพื่อทดสอบทักษะของคุณ โปรแกรมจำลองพี่เลี้ยงระดับแนวหน้านี้จะให้คำแนะนำคุณภาพสูงเพื่อขัดเกลาสัญชาตญาณทางวิศวกรรมของคุณ

    <details>
    <summary><strong>🛡️ Click to expand the Stage 1 Mentor Prompt</strong></summary>

    ```text
    <%= mentor_prompt %>
    ```

    </details>

    ---

    ### 💻 Live Execution
    ใช้ช่องรันโค้ด Elixir ด้านล่างเพื่อพิมพ์แต่ละตัวอย่างด้วยตนเองและสร้างความจำกล้ามเนื้อที่ยั่งยืน 💡 เคล็ดลับจากมือโปร: คุณสามารถเพิ่มช่องรันโค้ดได้มากขึ้นโดยคลิกที่ปุ่ม + Elixir ที่ด้านล่างของส่วนใดก็ได้

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
LabGenerator.run("elixir_fundamentals_th.csv")
