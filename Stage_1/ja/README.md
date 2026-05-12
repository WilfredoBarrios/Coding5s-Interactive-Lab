# 🧪 Elixir Interactive Lab — 日本語 🇯🇵

[![Livebook](https://img.shields.io/badge/Livebook-FF6B6B?logo=livebook&logoColor=white)](https://livebook.dev)
[![Elixir](https://img.shields.io/badge/Elixir-4B275F?logo=elixir&logoColor=white)](https://elixir-lang.org)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

> **読むだけでなく、コードを書きながら Elixir を学ぶ。** > これは **Coding5s** インタラクティブ・カリキュラムの日本語版です。Livebook を使用して、基礎から技術的な習得まで導くように設計されています。

---

## 🚀 はじめに

このラボをインタラクティブに体験するには、コンピューターに **Livebook** がインストールされている必要があります。

1. **Livebook をインストールする:** [livebook.dev](https://livebook.dev) からダウンロードしてください。
2. **ラボを開く:** 下記のフォルダを参照し、各ファイル内の **"Run in Livebook"** ボタンをクリックするか、Livebook セッションに URL を直接インポートしてください。

---

## 📚 Coding5s メソドロジー (5つのステージ)

私たちの手法は、**「管理された認知的摩擦（Controlled Cognitive Friction）」**に基づいています。各ラボでは以下のステップに沿って学習を進めます。

| ステージ | 名前 | 目的 |
|-------|--------|----------|
| **1** | Practice | ゼロからコードを書く |
| **2** | Debug | 意図的な論理エラーを見つける |
| **3** | Complete | アーキテクチャの欠落を埋める |
| **4** | Refactor | 既存のコードを最適化する |
| **5** | Extend | 新しい機能を追加する |

**このリポジトリにはステージ 1（無料版）が含まれています。** ステージ 2〜5 はプレミアム版で提供されています。

---

## 🧠 ソクラテス式メンター (AI)

各ファイル内には **「メンター・プロンプト（Mentor Prompt）」** が用意されています。これは単なるチャットボットではなく、以下のようなエリートメンターのシミュレーターです。

- **すぐに答えは教えません** (最初は)
- あなたが自分で間違いに気づくように質問を投げかけます
- 現実世界の例えを使って BEAM の概念を説明します
- 「雰囲気（Vibe）コーディング」を脱却し、真のエンジニアリング直感を構築するのを助けます
- 質問をすれば、シニアエンジニアレベルの回答を返してくれます

---

## 🛠️ インタラクティブ・カリキュラム — Stage 1: Practice Lab

「Run in Livebook」ボタンをクリックして、各インタラクティブ・ラボを環境で直接開いてください。

| # |  Level |  Type |Topic Name | Interactive Lab |
| :--- | :--- | :--- | :--- | :--- |
| 1 | 🟢Beginner | Topic | Mix の導入とモジュールのカプセル化 (mix new, defmodule, def) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/beginner/1_topic_mix_mix_new_defmodule_def.livemd) |
| 2 | 🟢Beginner | Topic | プリミティブデータ型 (Integers, Floats, Atoms, Booleans) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/beginner/2_topic_integers_floats_atoms_booleans.livemd) |
| 3 | 🟢Beginner | Topic | 文字列操作と補間 (String Operations & Interpolation) (<>, #{}) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/beginner/3_topic_string_operations_interpolation.livemd) |
| 4 | 🟢Beginner | Topic | タプル構造と基本的なデストラチャリング ({}) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/beginner/4_topic.livemd) |
| 5 | 🟢Beginner | Topic | リストの基礎 (Cons operator `[h | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/beginner/5_topic_cons_operator_h.livemd) |
| 6 | 🟢Beginner | PROJECT | カプセル化された型変換と Greeting モジュール | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/beginner/6_project_greeting.livemd) |
| 7 | 🟢Beginner | Topic | パターンマッチングの基礎 (= match operator, pin operator ^) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/beginner/7_topic_match_operator_pin_operator.livemd) |
| 8 | 🟢Beginner | Topic | キーワードリストとデフォルト引数 (Keyword Lists) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/beginner/8_topic_keyword_lists.livemd) |
| 9 | 🟢Beginner | Topic | マップの基礎とアクセス (%{...}, map.key, map[:key]) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/beginner/9_topic_map_key_map_key.livemd) |
| 10 | 🟢Beginner | Topic | パターンマッチングによるマルチクローズ関数 | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/beginner/10_topic.livemd) |
| 11 | 🟢Beginner | Topic | 関数シグネチャにおけるガード節 (when) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/beginner/11_topic_when.livemd) |
| 12 | 🟢Beginner | Topic | モジュールドキュメント (@moduledoc, @doc) とベストプラクティス | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/beginner/12_topic_moduledoc_doc.livemd) |
| 13 | 🟢Beginner | PROJECT | マルチクローズ・パターンマッチングによるユーザープロファイル抽出 | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/beginner/13_project.livemd) |
| 14 | 🟡Intermediate | Topic | Mix エコシステム: 外部依存関係 (Hex) とコードフォーマット (mix format) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/intermediate/14_topic_mix_hex_mix_format.livemd) |
| 15 | 🟡Intermediate | Topic | 関数合成とパイプ演算子 (` | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/intermediate/15_topic.livemd) |
| 16 | 🟡Intermediate | Topic | 制御フロー: case 文とマッチエラー | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/intermediate/16_topic_case.livemd) |
| 17 | 🟡Intermediate | Topic | 制御フロー: cond 文と真偽値 (Truthiness) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/intermediate/17_topic_cond_truthiness.livemd) |
| 18 | 🟡Intermediate | Topic | 定数としてのモジュール属性 (@) と構造体の定義 (defstruct) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/intermediate/18_topic_defstruct.livemd) |
| 19 | 🟡Intermediate | Topic | 構造体の操作 (作成、更新、厳密なマッチング) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/intermediate/19_topic.livemd) |
| 20 | 🟡Intermediate | PROJECT | 構造体ベースの在庫変換パイプライン | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/intermediate/20_project.livemd) |
| 21 | 🟡Intermediate | Topic | マップの更新と深い階層の操作 (Map.put, update_in, put_in) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/intermediate/21_topic_map_put_update_in_put_in.livemd) |
| 22 | 🟡Intermediate | Topic | 日付と時刻モジュール (Date, Time, DateTime, NaiveDateTime) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/intermediate/22_topic_date_time_datetime_naivedatetime.livemd) |
| 23 | 🟡Intermediate | Topic | 再帰の基礎: ベースケースと再帰ステップ | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/intermediate/23_topic.livemd) |
| 24 | 🟡Intermediate | Topic | 末尾再帰最適化 Tail Call Optimization (TCO) とアキュムレータ | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/intermediate/24_topic_tail_call_optimization_tco.livemd) |
| 25 | 🟡Intermediate | Topic | シジル Sigils (~s, ~w, ~r) と正規表現 (Regex module) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/intermediate/25_topic_sigils_s_w_r_regex_module.livemd) |
| 26 | 🟡Intermediate | PROJECT | 再帰的な複合データパーサー・パイプライン | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/intermediate/26_project.livemd) |
| 27 | 🟡Intermediate | Topic | Enum モジュール: 基本的な変換 (map, filter, reduce) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/intermediate/27_topic_enum_map_filter_reduce.livemd) |
| 28 | 🟡Intermediate | Topic | Enum モジュール: 集計と検索 (find, group_by, all?) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/intermediate/28_topic_enum_find_group_by_all.livemd) |
| 29 | 🔴Advanced | Topic | Stream モジュール: 遅延評価 vs 即時評価 (Lazy vs Eager) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/advanced/29_topic_stream_vs_lazy_vs_eager.livemd) |
| 30 | 🔴Advanced | Topic | 内包表記 Comprehensions (for, generators, filters, into) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/advanced/30_topic_comprehensions_for_generators_filters_into.livemd) |
| 31 | 🔴Advanced | Topic | エラーハンドリングパターン: Result Tuples ({:ok, val}, {:error, reason}) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/advanced/31_topic_result_tuples_ok_val_error_reason.livemd) |
| 32 | 🔴Advanced | Topic | with 特殊形式 (Result Tuples のチェイン) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/advanced/32_topic_with_result_tuples.livemd) |
| 33 | 🔴Advanced | PROJECT | 大規模な遅延データ処理ストリームとフィルタリング | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/advanced/33_project.livemd) |
| 34 | 🔴Advanced | Topic | モジュールディレクティブのコンテキスト (alias, require, import, use) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/advanced/34_topic_alias_require_import_use.livemd) |
| 35 | 🔴Advanced | Topic | バイナリパターンマッチングとビット文字列操作 (<<>>) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/advanced/35_topic.livemd) |
| 36 | 🔴Advanced | Topic | ファイルシステム操作 (File.read, File.stream!, Path) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/advanced/36_topic_file_read_file_stream_path.livemd) |
| 37 | 🔴Advanced | PROJECT | カプセル化されたバイナリファイルプロセッサとメタデータ抽出 | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/advanced/37_project.livemd) |
| 38 | 🔴Advanced | Topic | ExUnit の基礎 (use ExUnit.Case, test, assert, refute) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/advanced/38_topic_exunit_use_exunit_case_test_assert_refute.livemd) |
| 39 | 🔴Advanced | Topic | ExUnit テスト状態管理 (setup, setup_all, contexts) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/advanced/39_topic_exunit_setup_setup_all_contexts.livemd) |
| 40 | 🔴Advanced | Topic | ExUnit ドックテスト (@doc の例をテストとして実行) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/advanced/40_topic_exunit_doc.livemd) |
| 41 | 🔴Advanced | Topic | ビヘイビア Behaviours (@callback, @behaviour による明示的なインターフェース定義) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/advanced/41_topic_behaviours_callback_behaviour.livemd) |
| 42 | 🔴Advanced | Topic | プロトコル Protocols (defprotocol, defimpl によるデータのポリモーフィズム) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/advanced/42_topic_protocols_defprotocol_defimpl.livemd) |
| 43 | 🔴Advanced | PROJECT | フル ExUnit スイートを備えたポリモーフィック・ドキュメントパーサーエンジン | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/advanced/43_project_exunit.livemd) |
| 44 | 🔴Advanced | Topic | 型スペック Typespecs とカスタム型定義 (@spec, @type, @opaque) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/advanced/44_topic_typespecs_spec_type_opaque.livemd) |
| 45 | 🔴Advanced | Topic | Dialyzer による静的解析 (型チェックと一般的な警告の解決) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/advanced/45_topic_dialyzer.livemd) |
| 46 | 🔴Advanced | Topic | 例外処理の仕組み (try, rescue, raise vs Result Tuples) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/advanced/46_topic_try_rescue_raise_vs_result_tuples.livemd) |
| 47 | 🔴Advanced | Topic | Erlang 相互運用性 (ネイティブモジュールの呼び出し 例: :crypto, :math) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/advanced/47_topic_erlang_crypto_math.livemd) |
| 48 | 🔴Advanced | Topic | CLI 実行ファイルの構築 (escript, main/1 エントリポイントの定義) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/advanced/48_topic_cli_escript_main_1.livemd) |
| 49 | 🔴Advanced | Topic | メタプログラミングの基礎 (The AST, quote, unquote) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/advanced/49_topic_the_ast_quote_unquote.livemd) |
| 50 | 🔴Advanced | PROJECT | 自動データ変換のための完全に型定義・テストされた Escript CLI ツール | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ja/advanced/50_project_escript_cli.livemd) |

> 📌 *全50トピックのテーブルは、マスター Excel から自動生成されます。リンクは順次有効化されます。*

---

## 🏛️ アーキテクチャとメンター

各ラボには **「Explanation Gate（解説ゲート）」** があり、次のステージに進む前に、私たちの AI メンター（*Staff Engineer Auditor* など）があなたのロジックを検証します。

- **Safe Guide:** ステージ1向けの温和なメンター
- **Border Guard:** コード監査のための皮肉屋なメンター
- **近日公開:** Jinpachi Ego (Stateful5s)

---

## 🔗 便利なリンク

[Coding5s.com](https://coding5s.com) | [Udemy (Coding5s Premium)](https://www.udemy.com/user/wilbarrios/) | [GitHub](https://github.com/WilfredoBarrios)

---

## 🤝 貢献 (Contributions)

翻訳やラボのロジックに間違いを見つけましたか？あるいは、新しい言語への翻訳をサポートしたいですか？

お気軽に **Pull Request** や **Issue** を作成してください！Coding5s が、あらゆる言語で Elixir を学ぶための最高の情報源になることを目指しています。

---

## 📄 ライセンス

MIT © [Wilfredo Barrios](https://github.com/WilfredoBarrios)

---
⚡ *Coding5s System — 技術的な習得のために設計された学習体験。*
