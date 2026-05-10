# 🧪 Elixir 交互式实验 — 中文 (简体) 🇨🇳

[![Livebook](https://img.shields.io/badge/Livebook-FF6B6B?logo=livebook&logoColor=white)](https://livebook.dev)
[![Elixir](https://img.shields.io/badge/Elixir-4B275F?logo=elixir&logoColor=white)](https://elixir-lang.org)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

> **通过编写代码来学习 Elixir，而不仅仅是阅读。** > 这是 **Coding5s** 交互式课程的中文版，旨在通过 Livebook 带你从基础迈向技术精通。

---

## 🚀 如何开始？

为了获得交互式的实验体验，你需要在电脑上安装 **Livebook**。

1. **安装 Livebook：** 请在 [livebook.dev](https://livebook.dev) 下载。
2. **打开实验：** 你可以浏览下方的文件夹并点击每个文件中的 **"Run in Livebook"** 按钮，或者直接将 URL 导入到你的 Livebook 会话中。

---

## 📚 Coding5s 方法论 (5 个阶段)

我们的教学方法基于 **受控认知摩擦 (Controlled Cognitive Friction)**。每个实验都将引导你完成：

| 阶段 | 名称 | 目标 |
|-------|--------|----------|
| **1** | Practice | 从零开始编写代码 |
| **2** | Debug | 找出故意的逻辑错误 |
| **3** | Complete | 填补架构空白 |
| **4** | Refactor | 优化现有代码 |
| **5** | Extend | 添加新功能 |

**此仓库包含阶段 1 (免费版)。** 阶段 2-5 仅在高级版 (Premium) 中提供。

---

## 🧠 苏格拉底式导师 (AI)

在每个文件中，你都会发现一个 **导师提示词 (Mentor Prompt)**。这不仅是一个普通的聊天机器人，它是一个精英导师模拟器：

- **不会直接给你答案** (起初)
- 会向你提问，引导你自己发现错误
- 使用现实世界的类比来解释 BEAM 概念
- 帮助你消除 "Vibe Coding"，建立真正的工程直觉
- 向它提问，它将为你提供资深工程师级别的解答。

---

## 🛠️ 交互式课程 — 阶段 1: Practice Lab

点击 **Run in Livebook** 按钮即可在你的本地环境中直接打开交互式实验。

| # |  Level |  Type |Topic Name | Interactive Lab |
| :--- | :--- | :--- | :--- | :--- |
| 1 | 🟢Beginner | Topic | Mix 与 Module Encapsulation 入门 (mix new, defmodule, def) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/beginner/1_topic_mix_module_encapsulation_mix_new_defmodule_def.livemd) |
| 2 | 🟢Beginner | Topic | 原始数据类型 (Integers, Floats, Atoms, Booleans) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/beginner/2_topic_integers_floats_atoms_booleans.livemd) |
| 3 | 🟢Beginner | Topic | 字符串操作与插值 (<>, #{}) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/beginner/3_topic.livemd) |
| 4 | 🟢Beginner | Topic | Tuple 结构与基础解构 ({}) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/beginner/4_topic_tuple.livemd) |
| 5 | 🟢Beginner | Topic | List 基础 (Cons 运算符 [hlt], ++, --) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/beginner/5_topic_list_cons_h_t.livemd) |
| 6 | 🟢Beginner | PROJECT | 封装类型转换与 Greeting Module | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/beginner/6_project_greeting_module.livemd) |
| 7 | 🟢Beginner | Topic | Pattern Matching 基础 (匹配运算符 =, pin 运算符 ^) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/beginner/7_topic_pattern_matching_pin.livemd) |
| 8 | 🟢Beginner | Topic | Keyword Lists 与默认参数 | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/beginner/8_topic_keyword_lists.livemd) |
| 9 | 🟢Beginner | Topic | Map 基础与访问 (%{...}, map.key, map[:key]) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/beginner/9_topic_map_map_key_map_key.livemd) |
| 10 | 🟢Beginner | Topic | 通过 Pattern Matching 实现多子句函数 (Multi-Clause Functions) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/beginner/10_topic_pattern_matching_multi_clause_functions.livemd) |
| 11 | 🟢Beginner | Topic | 函数签名中的 Guard Clauses (when) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/beginner/11_topic_guard_clauses_when.livemd) |
| 12 | 🟢Beginner | Topic | 模块文档 (@moduledoc, @doc) 与最佳实践 | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/beginner/12_topic_moduledoc_doc.livemd) |
| 13 | 🟢Beginner | PROJECT | 通过多子句 Pattern Matching 实现用户档案提取器 | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/beginner/13_project_pattern_matching.livemd) |
| 14 | 🟡Intermediate | Topic | Mix 生态系统：外部依赖 (Hex) 与代码格式化 (mix format) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/intermediate/14_topic_mix_hex_mix_format.livemd) |
| 15 | 🟡Intermediate | Topic | 函数组合与 Pipe Operator (` | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/intermediate/15_topic_pipe_operator.livemd) |
| 16 | 🟡Intermediate | Topic | 控制流：case 语句与匹配错误 (Match Errors) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/intermediate/16_topic_case_match_errors.livemd) |
| 17 | 🟡Intermediate | Topic | 控制流：cond 语句与真值 (Truthiness) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/intermediate/17_topic_cond_truthiness.livemd) |
| 18 | 🟡Intermediate | Topic | 模块属性作为常量 (@) 与定义 Structs (defstruct) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/intermediate/18_topic_structs_defstruct.livemd) |
| 19 | 🟡Intermediate | Topic | 使用 Structs (创建、更新与严格匹配) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/intermediate/19_topic_structs.livemd) |
| 20 | 🟡Intermediate | PROJECT | 基于 Struct 的库存转换流水线 (Pipeline) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/intermediate/20_project_struct_pipeline.livemd) |
| 21 | 🟡Intermediate | Topic | Map 更新与深度操作 (Map.put, update_in, put_in) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/intermediate/21_topic_map_map_put_update_in_put_in.livemd) |
| 22 | 🟡Intermediate | Topic | 时间与日期模块 (Date, Time, DateTime, NaiveDateTime) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/intermediate/22_topic_date_time_datetime_naivedatetime.livemd) |
| 23 | 🟡Intermediate | Topic | 递归基础：基准情况 (Base Cases) 与递归步骤 | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/intermediate/23_topic_base_cases.livemd) |
| 24 | 🟡Intermediate | Topic | 尾递归优化 (TCO) 与累加器 (Accumulators) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/intermediate/24_topic_tco_accumulators.livemd) |
| 25 | 🟡Intermediate | Topic | Sigils (~s, ~w, ~r) 与正则表达式 (Regex 模块) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/intermediate/25_topic_sigils_s_w_r_regex.livemd) |
| 26 | 🟡Intermediate | PROJECT | 递归复杂数据解析流水线 | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/intermediate/26_project.livemd) |
| 27 | 🟡Intermediate | Topic | Enum 模块：核心转换 (map, filter, reduce) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/intermediate/27_topic_enum_map_filter_reduce.livemd) |
| 28 | 🟡Intermediate | Topic | Enum 模块：聚合与搜索 (find, group_by, all?) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/intermediate/28_topic_enum_find_group_by_all.livemd) |
| 29 | 🔴Advanced | Topic | Stream 模块：惰性求值 (Lazy) vs 及早求值 (Eager) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/advanced/29_topic_stream_lazy_vs_eager.livemd) |
| 30 | 🔴Advanced | Topic | 推导式 (for, 生成器, 过滤器, into) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/advanced/30_topic_for_into.livemd) |
| 31 | 🔴Advanced | Topic | 错误处理模式：结果元组 ({:ok, val}, {:error, reason}) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/advanced/31_topic_ok_val_error_reason.livemd) |
| 32 | 🔴Advanced | Topic | with 特殊形式 (链式结果元组) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/advanced/32_topic_with.livemd) |
| 33 | 🔴Advanced | PROJECT | 大规模惰性数据处理流与过滤 | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/advanced/33_project.livemd) |
| 34 | 🔴Advanced | Topic | 模块指令上下文 (alias, require, import, use) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/advanced/34_topic_alias_require_import_use.livemd) |
| 35 | 🔴Advanced | Topic | 二进制 Pattern Matching 与 Bitstring 操作 (<<>>) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/advanced/35_topic_pattern_matching_bitstring.livemd) |
| 36 | 🔴Advanced | Topic | 文件系统操作 (File.read, File.stream!, Path) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/advanced/36_topic_file_read_file_stream_path.livemd) |
| 37 | 🔴Advanced | PROJECT | 封装的二进制文件处理器与元数据提取器 | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/advanced/37_project.livemd) |
| 38 | 🔴Advanced | Topic | ExUnit 基础 (use ExUnit.Case, test, assert, refute) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/advanced/38_topic_exunit_use_exunit_case_test_assert_refute.livemd) |
| 39 | 🔴Advanced | Topic | ExUnit 测试状态管理 (setup, setup_all, contexts) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/advanced/39_topic_exunit_setup_setup_all_contexts.livemd) |
| 40 | 🔴Advanced | Topic | ExUnit Doctests (将 @doc 示例作为测试执行) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/advanced/40_topic_exunit_doctests_doc.livemd) |
| 41 | 🔴Advanced | Topic | Behaviours (使用 @callback, @behaviour 定义显式接口) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/advanced/41_topic_behaviours_callback_behaviour.livemd) |
| 42 | 🔴Advanced | Topic | Protocols (通过 defprotocol, defimpl 实现数据多态) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/advanced/42_topic_protocols_defprotocol_defimpl.livemd) |
| 43 | 🔴Advanced | PROJECT | 带有完整 ExUnit 套件的多态文档解析引擎 | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/advanced/43_project_exunit.livemd) |
| 44 | 🔴Advanced | Topic | Typespecs 与自定义类型声明 (@spec, @type, @opaque) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/advanced/44_topic_typespecs_spec_type_opaque.livemd) |
| 45 | 🔴Advanced | Topic | 使用 Dialyzer 进行静态分析 (类型检查与常见警告解决) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/advanced/45_topic_dialyzer.livemd) |
| 46 | 🔴Advanced | Topic | 异常处理机制 (try, rescue, raise vs 结果元组) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/advanced/46_topic_try_rescue_raise_vs.livemd) |
| 47 | 🔴Advanced | Topic | Erlang 互操作性 (原生模块调用，如 :crypto, :math) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/advanced/47_topic_erlang_crypto_math.livemd) |
| 48 | 🔴Advanced | Topic | 构建 CLI 可执行文件 (escript, 定义 main/1 入口点) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/advanced/48_topic_cli_escript_main_1.livemd) |
| 49 | 🔴Advanced | Topic | 元编程基础 (AST, quote, unquote) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/advanced/49_topic_ast_quote_unquote.livemd) |
| 50 | 🔴Advanced | PROJECT | 用于自动化数据转换的全类型、经测试的 Escript CLI 工具 | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/zh/advanced/50_project_escript_cli.livemd) |

> 📌 *完整的 50 个主题表格由我们的 Excel 大脑自动生成。链接将逐步激活。*

---

## 🏛️ 架构与导师

每个实验都包含一个 **解释门槛 (Explanation Gate)**，在进入下一阶段之前，我们的 AI 导师 (如 *Staff Engineer Auditor*) 会验证你的逻辑。

- **Safe Guide:** 阶段 1 的温和导师
- **边境守卫 (Border Guard):** 用于代码审计的毒舌导师
- **即将推出:** 绘心洁 (Jinpachi Ego - Stateful5s)

---

## 🔗 常用链接

[Coding5s.com](https://coding5s.com) | [Udemy (Coding5s Premium)](https://www.udemy.com/user/wilbarrios/) | [GitHub](https://github.com/WilfredoBarrios) | [LinkedIn](https://linkedin.com/in/wilfredobarrios)

---

## 🤝 贡献说明

如果你发现了翻译错误或实验逻辑漏洞，或者想帮助我们翻译成新的语言？

欢迎随时提交 **Pull Request** 或 **Issue**！我们致力于让 Coding5s 成为多语言学习 Elixir 的最佳资源。

---

## 📄 许可证

MIT © [Wilfredo Barrios](https://github.com/WilfredoBarrios)

---
⚡ *Coding5s System — 为技术精通而生的学习法。*
