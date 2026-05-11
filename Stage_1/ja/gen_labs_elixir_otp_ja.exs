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
    AIが3〜5つの実践的な例を提示します。永続的なマッスルメモリー（筋肉の記憶）を構築するために、以下のセルに各例を手動で入力してください。提供された類推を分析し、インラインコメントを注意深く読んでください。そこには、このトピックをマスターするために必要なアーキテクチャの論理が含まれています。以下をAIチャットにコピー＆ペーストして送信してください。

    <details>
    <summary><strong>✨ Click to expand the Stage 1 Prompt</strong></summary>

    ```text
    <%= prompt %>
    ```

    </details>

    ---

    ### 🎓 Mentor Stage 1 Concurrency & OTP | Practice | Elixir | 📊 Level: <%= String.capitalize(level) %>
    これはメンタープロンプトです。コードと簡単なロジックの説明（すべて1つのメッセージにまとめて）と一緒にAIアシスタントにコピー＆ペーストしてください。エラーのデバッグ、コードのプロフェッショナル化、新しいチャレンジの要求、またはより深い説明を得るために使用してください。また、メンターに特定の質問をしたり、スキルを試すための新しい課題をリクエストしたりすることもできます。このエリートメンターシミュレーターは、エンジニアリングの直感を研ぎ澄ますためのトップティアのフィードバックを提供します。

    <details>
    <summary><strong>🛡️ Click to expand the Stage 1 Mentor Prompt</strong></summary>

    ```text
    <%= mentor_prompt %>
    ```

    </details>

    ---

    ### 💻 Live Execution
    以下のElixir実行セルを使用して、各例を手動で入力し、永続的なマッスルメモリーを構築してください。💡 プロのヒント：セクションの下部にある「+ Elixir」ボタンをクリックすると、実行セルを追加できます。

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
LabGenerator.run("elixir_fundamentals_ja.csv")
