# 🧪 Elixir Interactive Lab — Arabic العربية 🇸🇦

[![Livebook](https://img.shields.io/badge/Livebook-FF6B6B?logo=livebook&logoColor=white)](https://livebook.dev)
[![Elixir](https://img.shields.io/badge/Elixir-4B275F?logo=elixir&logoColor=white)](https://elixir-lang.org)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

> **تعلم لغة Elixir من خلال كتابة الكود، وليس فقط قراءته.** > هذه هي النسخة العربية من منهج **Coding5s** التفاعلي، المصمم لنقلك من الأساسيات إلى الاحتراف التقني باستخدام Livebook.

---

## 🚀 كيف تبدأ؟

لتجربة هذا المختبر بشكل تفاعلي، يجب أن يكون برنامج **Livebook** مثبتاً على جهازك.

1. **تثبيت Livebook:** قم بتحميله من [livebook.dev](https://livebook.dev).
2. **فتح مختبر:** يمكنك تصفح المجلدات أدناه والنقر على زر **"Run in Livebook"** داخل كل ملف، أو استيراد الرابط مباشرة في جلسة Livebook الخاصة بك.

---

## 📚 منهجية Coding5s (5 مراحل)

يعتمد نهجنا على **الاحتكاك المعرفي المنضبط**. سيقوم كل مختبر بتوجيهك خلال:

| المرحلة | الاسم | الهدف |
|-------|--------|----------|
| **1** | Practice | كتابة الكود من الصفر |
| **2** | Debug | العثور على الأخطاء المنطقية المتعمدة |
| **3** | Complete | ملء الفجوات المعمارية |
| **4** | Refactor | تحسين الكود الحالي |
| **5** | Extend | إضافة ميزات جديدة |

**يحتوي هذا المستودع على المرحلة 1 (مجانية).** المراحل من 2 إلى 5 متاحة في النسخة المميزة (Premium).

---

## 🧠 Mentor Socratic (ذكاء اصطناعي)

ستجد داخل كل ملف **مطالبة للموجه (Mentor Prompt)**. إنه ليس مجرد chatbot عادي، بل هو محاكي لموجه خبير يقوم بـ:

- **لن يعطيك الإجابة مباشرة** (في البداية)
- سيطرح عليك أسئلة لتكتشف الخطأ بنفسك
- يستخدم أمثلة من العالم الحقيقي لشرح مفاهيم BEAM
- يساعدك على بناء حدس هندسي حقيقي
- اسأله وسيعطيك إجابات بمستوى مهندس أول (Senior).

---

## 🛠️ المنهج التفاعلي — Stage 1: Practice Lab

انقر على زر **Run in Livebook** لفتح كل مختبر تفاعلي مباشرة في بيئتك.

| # |  Level |  Type |Topic Name | Interactive Lab |
| :--- | :--- | :--- | :--- | :--- |
| 1 | 🟢Beginner | Topic | مقدمة عن Mix وتغليف الوحدات (mix new, defmodule, def) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/beginner/1_topic_mix_mix_new_defmodule_def.livemd) |
| 2 | 🟢Beginner | Topic | أنواع البيانات الأولية (Integers, Floats, Atoms, Booleans) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/beginner/2_topic_integers_floats_atoms_booleans.livemd) |
| 3 | 🟢Beginner | Topic | عمليات النصوص والاستكمال (String Operations & Interpolation) (<>, #{}) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/beginner/3_topic_string_operations_interpolation.livemd) |
| 4 | 🟢Beginner | Topic | هياكل الـ Tuple والتفكيك الأساسي ({}) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/beginner/4_topic_tuple.livemd) |
| 5 | 🟢Beginner | Topic | أساسيات القوائم List Fundamentals (Cons operator `[h | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/beginner/5_topic_list_fundamentals_cons_operator_h.livemd) |
| 6 | 🟢Beginner | PROJECT | تحويل الأنواع المغلفة ووحدة الترحيب (Greeting Module) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/beginner/6_project_greeting_module.livemd) |
| 7 | 🟢Beginner | Topic | أساسيات مطابقة الأنماط Pattern Matching (= match operator, pin operator ^) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/beginner/7_topic_pattern_matching_match_operator_pin_operator.livemd) |
| 8 | 🟢Beginner | Topic | قوائم الكلمات المفتاحية Keyword Lists والوسائط الافتراضية (()) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/beginner/8_topic_keyword_lists.livemd) |
| 9 | 🟢Beginner | Topic | أساسيات الـ Map والوصول إليها (%{...}, map.key, map[:key]) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/beginner/9_topic_map_map_key_map_key.livemd) |
| 10 | 🟢Beginner | Topic | الدوال متعددة البنود عبر مطابقة الأنماط (Multi-Clause Functions) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/beginner/10_topic_multi_clause_functions.livemd) |
| 11 | 🟢Beginner | Topic | بنود الحماية في تواقيع الدوال Guard Clauses (when) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/beginner/11_topic_guard_clauses_when.livemd) |
| 12 | 🟢Beginner | Topic | توثيق الوحدات (@moduledoc, @doc) وأفضل الممارسات | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/beginner/12_topic_moduledoc_doc.livemd) |
| 13 | 🟢Beginner | PROJECT | مستخرج ملف تعريف المستخدم عبر مطابقة الأنماط متعددة البنود | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/beginner/13_project.livemd) |
| 14 | 🟡Intermediate | Topic | نظام Mix البيئي: التبعيات الخارجية (Hex) وتنسيق الكود (mix format) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/intermediate/14_topic_mix_hex_mix_format.livemd) |
| 15 | 🟡Intermediate | Topic | التركيب الوظيفي وعامل الأنبوب Pipe Operator (` | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/intermediate/15_topic_pipe_operator.livemd) |
| 16 | 🟡Intermediate | Topic | تدفق التحكم: عبارات case وأخطاء المطابقة | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/intermediate/16_topic_case.livemd) |
| 17 | 🟡Intermediate | Topic | تدفق التحكم: عبارات cond والحقيقة المنطقية (Truthiness) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/intermediate/17_topic_cond_truthiness.livemd) |
| 18 | 🟡Intermediate | Topic | سمات الوحدة كثوابت (@) وتعريف الـ Structs (defstruct) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/intermediate/18_topic_structs_defstruct.livemd) |
| 19 | 🟡Intermediate | Topic | العمل مع الـ Structs (الإنشاء، التحديث، والمطابقة الصارمة) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/intermediate/19_topic_structs.livemd) |
| 20 | 🟡Intermediate | PROJECT | خط أنابيب تحويل المخزون المعتمد على الـ Struct | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/intermediate/20_project_struct.livemd) |
| 21 | 🟡Intermediate | Topic | تحديث الـ Map والتلاعب العميق (Map.put, update_in, put_in) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/intermediate/21_topic_map_map_put_update_in_put_in.livemd) |
| 22 | 🟡Intermediate | Topic | وحدات الوقت والتاريخ (Date, Time, DateTime, NaiveDateTime) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/intermediate/22_topic_date_time_datetime_naivedatetime.livemd) |
| 23 | 🟡Intermediate | Topic | أساسيات التكرار الحلقي Recursion: الحالات الأساسية والخطوات التكرارية | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/intermediate/23_topic_recursion.livemd) |
| 24 | 🟡Intermediate | Topic | تحسين النداء الذييلي Tail Call Optimization (TCO) والمراكمات (Accumulators) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/intermediate/24_topic_tail_call_optimization_tco_accumulators.livemd) |
| 25 | 🟡Intermediate | Topic | الرموز Sigils (~s, ~w, ~r) والتعبيرات النمطية (Regex module) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/intermediate/25_topic_sigils_s_w_r_regex_module.livemd) |
| 26 | 🟡Intermediate | PROJECT | خط أنابيب محلل البيانات المعقدة التكراري | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/intermediate/26_project.livemd) |
| 27 | 🟡Intermediate | Topic | وحدة Enum: التحويلات الأساسية (map, filter, reduce) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/intermediate/27_topic_enum_map_filter_reduce.livemd) |
| 28 | 🟡Intermediate | Topic | وحدة Enum: التجميع والبحث (find, group_by, all?) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/intermediate/28_topic_enum_find_group_by_all.livemd) |
| 29 | 🔴Advanced | Topic | وحدة Stream: التقييم الكسول مقابل التقييم العاجل (Lazy vs Eager) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/advanced/29_topic_stream_lazy_vs_eager.livemd) |
| 30 | 🔴Advanced | Topic | الشمول Comprehensions (for, generators, filters, into) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/advanced/30_topic_comprehensions_for_generators_filters_into.livemd) |
| 31 | 🔴Advanced | Topic | أنماط معالجة الأخطاء: Result Tuples ({:ok, val}, {:error, reason}) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/advanced/31_topic_result_tuples_ok_val_error_reason.livemd) |
| 32 | 🔴Advanced | Topic | الصيغة الخاصة with (تسلسل Result Tuples) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/advanced/32_topic_with_result_tuples.livemd) |
| 33 | 🔴Advanced | PROJECT | معالجة دفق البيانات الكسول واسع النطاق والتصفية | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/advanced/33_project.livemd) |
| 34 | 🔴Advanced | Topic | سياق توجيهات الوحدات (alias, require, import, use) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/advanced/34_topic_alias_require_import_use.livemd) |
| 35 | 🔴Advanced | Topic | مطابقة الأنماط الثنائية والتلاعب بسلاسل البت (<<>>) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/advanced/35_topic.livemd) |
| 36 | 🔴Advanced | Topic | عمليات نظام الملفات (File.read, File.stream!, Path) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/advanced/36_topic_file_read_file_stream_path.livemd) |
| 37 | 🔴Advanced | PROJECT | معالج الملفات الثنائية المغلف ومستخرج البيانات الوصفية | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/advanced/37_project.livemd) |
| 38 | 🔴Advanced | Topic | أساسيات ExUnit (use ExUnit.Case, test, assert, refute) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/advanced/38_topic_exunit_use_exunit_case_test_assert_refute.livemd) |
| 39 | 🔴Advanced | Topic | إدارة حالة اختبار ExUnit (setup, setup_all, contexts) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/advanced/39_topic_exunit_setup_setup_all_contexts.livemd) |
| 40 | 🔴Advanced | Topic | اختبارات التوثيق Doctests (تنفيذ أمثلة @doc كاختبارات) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/advanced/40_topic_doctests_doc.livemd) |
| 41 | 🔴Advanced | Topic | السلوكيات Behaviours (تعريف واجهات صريحة باستخدام @callback, @behaviour) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/advanced/41_topic_behaviours_callback_behaviour.livemd) |
| 42 | 🔴Advanced | Topic | البروتوكولات Protocols (تعدد الأشكال للبيانات عبر defprotocol, defimpl) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/advanced/42_topic_protocols_defprotocol_defimpl.livemd) |
| 43 | 🔴Advanced | PROJECT | محرك تحليل المستندات متعدد الأشكال مع مجموعة اختبارات ExUnit كاملة | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/advanced/43_project_exunit.livemd) |
| 44 | 🔴Advanced | Topic | مواصفات الأنواع Typespecs وتعريفات الأنواع المخصصة (@spec, @type, @opaque) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/advanced/44_topic_typespecs_spec_type_opaque.livemd) |
| 45 | 🔴Advanced | Topic | التحليل الساكن باستخدام Dialyzer (فحص الأنواع وحل التحذيرات الشائعة) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/advanced/45_topic_dialyzer.livemd) |
| 46 | 🔴Advanced | Topic | آليات معالجة الاستثناءات (try, rescue, raise مقابل Result Tuples) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/advanced/46_topic_try_rescue_raise_result_tuples.livemd) |
| 47 | 🔴Advanced | Topic | التشغيل البيني مع Erlang (نداءات الوحدات الأصلية مثل :crypto, :math) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/advanced/47_topic_erlang_crypto_math.livemd) |
| 48 | 🔴Advanced | Topic | بناء ملفات CLI القابلة للتنفيذ (escript وتعريف نقاط الدخول main/1) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/advanced/48_topic_cli_escript_main_1.livemd) |
| 49 | 🔴Advanced | Topic | أساسيات البرمجة الوصفية Metaprogramming (The AST, quote, unquote) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/advanced/49_topic_metaprogramming_the_ast_quote_unquote.livemd) |
| 50 | 🔴Advanced | PROJECT | أداة CLI بنظام Escript مطبوعة ومختبرة بالكامل لتحويل البيانات تلقائيًا | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ar/advanced/50_project_cli_escript.livemd) |


> 📌 *يتم إنشاء الجدول الكامل (50 موضوعاً) تلقائياً من ملف Excel الرئيسي الخاص بنا. سيتم تفعيل الروابط تدريجياً.*

---

## 🏛️ الهندسة والمعماريون

يتضمن كل مختبر **بوابة شرح (Explanation Gate)** حيث يقوم موجهو الذكاء الاصطناعي لدينا (مثل *Staff Engineer Auditor*) بمراجعة منطقك قبل الانتقال إلى المرحلة التالية.

- **Safe Guide:** موجه ودود للمرحلة الأولى
- **Border Guard:** موجه ساخر لمراجعة الكود
- **قريباً:** Jinpachi Ego (Stateful5s)

---

## 🔗 روابط مفيدة

[Coding5s.com](https://coding5s.com) | [Udemy (Coding5s Premium)](https://www.udemy.com/user/wilbarrios/) | [GitHub](https://github.com/WilfredoBarrios)

---

## 🤝 المساهمات

هل وجدت خطأ في الترجمة أو في منطق المختبرات؟ هل تريد المساعدة في الترجمة إلى لغة جديدة؟

لا تتردد في فتح **Pull Request** أو **Issue**! نريد أن يكون Coding5s أفضل مصدر لتعلم Elixir بجميع اللغات.

---

## 📄 الترخيص

MIT © [Wilfredo Barrios](https://github.com/WilfredoBarrios)

---
⚡ *Coding5s System — تعلم مصمم للإتقان التقني.*
