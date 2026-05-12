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
    AI가 3~5개의 실실적인 예시를 제공합니다. 영구적인 근육 기억(muscle memory)을 형성하려면 아래 셀에 각 예시를 직접 입력하세요. 제공된 비유를 분석하고 인라인 주석을 주의 깊게 읽으십시오. 여기에는 이 주제를 마스터하는 데 필요한 아키텍처 로직이 포함되어 있습니다. 다음 내용을 AI 채팅에 복사하여 붙여넣은 다음 제출하세요.

    <details>
    <summary><strong>✨ Click to expand the Stage 1 Prompt</strong></summary>

    ```text
    <%= prompt %>
    ```

    </details>

    ---

    ### 🎓 Mentor Stage 1 | Practice | Elixir Fundamentals | 📊 Level: <%= String.capitalize(level) %>
    이것은 멘토 프롬프트입니다. 코드 및 간단한 로직 설명과 함께(모두 하나의 메시지로) AI 어시스턴트에 복사하여 붙여넣으세요. 오류 디버깅, 코드의 전문화, 새로운 과제 요청 또는 더 깊은 설명을 얻는 데 사용하십시오. 멘토에게 특정 질문을 하거나 실력을 테스트하기 위한 새로운 챌린지를 요청할 수도 있습니다. 이 엘리트 멘토 시뮬레이터는 엔지니어링 직관을 날카롭게 다듬을 수 있도록 최고 수준의 피드백을 제공합니다.

    <details>
    <summary><strong>🛡️ Click to expand the Stage 1 Mentor Prompt</strong></summary>

    ```text
    <%= mentor_prompt %>
    ```

    </details>

    ---

    ### 💻 Live Execution
    아래 Elixir 실행 셀을 사용하여 각 예시를 직접 타이핑하고 영구적인 근육 기억을 쌓으세요. 💡 프로 팁: 섹션 하단의 + Elixir 버튼을 클릭하여 실행 셀을 더 추가할 수 있습니다.

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
LabGenerator.run("elixir_fundamentals_ko.csv")
