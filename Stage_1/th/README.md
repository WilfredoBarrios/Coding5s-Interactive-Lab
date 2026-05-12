# 🧪 Elixir Interactive Lab — ภาษาไทย 🇹🇭

[![Livebook](https://img.shields.io/badge/Livebook-FF6B6B?logo=livebook&logoColor=white)](https://livebook.dev)
[![Elixir](https://img.shields.io/badge/Elixir-4B275F?logo=elixir&logoColor=white)](https://elixir-lang.org)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

> **เรียนรู้ Elixir ผ่านการลงมือเขียนโค้ด ไม่ใช่แค่การอ่าน**
> นี่คือหลักสูตรแบบโต้ตอบ (Interactive) ของ **Coding5s** เวอร์ชั่นภาษาไทย ที่ถูกออกแบบมาเพื่อนำคุณไปสู่ความเชี่ยวชาญทางเทคนิคด้วย Livebook

---

## 🚀 เริ่มต้นอย่างไร?

หากต้องการสัมผัสประสบการณ์การเรียนรู้แบบโต้ตอบ คุณจำเป็นต้องติดตั้ง **Livebook** ในเครื่องคอมพิวเตอร์ของคุณ

1. **ติดตั้ง Livebook:** ดาวน์โหลดได้ที่ [livebook.dev](https://livebook.dev)
2. **เปิดห้องแล็บ:** คุณสามารถเลือกดูโฟลเดอร์ด้านล่างและคลิกปุ่ม **"Run in Livebook"** ภายในแต่ละไฟล์ หรือนำ URL ไปใส่ในเซสชัน Livebook ของคุณโดยตรง

---

## 📚 ระเบียบวิธีแบบ Coding5s (5 ขั้นตอน)

แนวทางของเราตั้งอยู่บนหลักการ **"การสร้างแรงเสียดทานทางพุทธิปัญญาที่ควบคุมได้" (Controlled Cognitive Friction)** โดยแต่ละแล็บจะนำคุณไปสู่:

| ขั้นตอน | ชื่อ | เป้าหมาย |
|-------|--------|----------|
| **1** | Practice | เขียนโค้ดจากศูนย์ |
| **2** | Debug | ค้นหาข้อผิดพลาดทางตรรกะที่ตั้งใจสร้างขึ้น |
| **3** | Complete | เติมเต็มส่วนโครงสร้างสถาปัตยกรรมที่ขาดหาย |
| **4** | Refactor | ปรับปรุงโค้ดเดิมให้มีประสิทธิภาพสูงสุด |
| **5** | Extend | เพิ่มฟังก์ชันการทำงานใหม่ๆ |

**พื้นที่เก็บข้อมูล (Repository) นี้ประกอบด้วยขั้นตอนที่ 1 (ฟรี)** สำหรับขั้นตอนที่ 2-5 จะมีอยู่ในเวอร์ชันพรีเมียม

---

## 🧠 เมนเทอร์แบบโซเครตีส (AI)

ภายในแต่ละไฟล์ คุณจะพบกับ **Prompt สำหรับเมนเทอร์ (Mentor Prompt)** ซึ่งไม่ใช่แชทบอททั่วไป แต่เป็นระบบจำลองเมนเทอร์ระดับแนวหน้าที่:

- **จะไม่บอกคำตอบคุณโดยตรง** (ในตอนแรก)
- จะตั้งคำถามเพื่อให้คุณค้นพบข้อผิดพลาดด้วยตัวเอง
- ใช้การเปรียบเทียบกับโลกแห่งความเป็นจริงเพื่ออธิบายแนวคิดของ BEAM
- ช่วยให้คุณเลิกเขียนโค้ดตามความรู้สึก (Vibe Coding) และสร้างสัญชาตญาณทางวิศวกรรมที่แท้จริง
- ถามคำถามได้เลย แล้วคุณจะได้คำตอบในระดับ Senior Engineer

---

## 🛠️ หลักสูตรแบบโต้ตอบ — Stage 1: Practice Lab

คลิกปุ่ม **Run in Livebook** เพื่อเปิดแต่ละแล็บในสภาพแวดล้อมของคุณโดยตรง

| # |  Level |  Type |Topic Name | Interactive Lab |
| :--- | :--- | :--- | :--- | :--- |
| 1 | 🟢Beginner | Topic | บทนำเกี่ยวกับ Mix และการห่อหุ้มโมดูล (mix new, defmodule, def) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/beginner/1_topic_mix_mix_new_defmodule_def.livemd) |
| 2 | 🟢Beginner | Topic | ประเภทข้อมูลพื้นฐาน (Integers, Floats, Atoms, Booleans) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/beginner/2_topic_integers_floats_atoms_booleans.livemd) |
| 3 | 🟢Beginner | Topic | การดำเนินการกับ String และการแทรกตัวแปร (String Operations & Interpolation) (<>, #{}) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/beginner/3_topic_string_string_operations_interpolation.livemd) |
| 4 | 🟢Beginner | Topic | โครงสร้างแบบ Tuple และการแยกโครงสร้างพื้นฐาน ({}) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/beginner/4_topic_tuple.livemd) |
| 5 | 🟢Beginner | Topic | พื้นฐานของ List (Cons operator `[h | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/beginner/5_topic_list_cons_operator_h.livemd) |
| 6 | 🟢Beginner | PROJECT | การแปลงประเภทข้อมูลแบบ Encapsulated และ Greeting Module | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/beginner/6_project_encapsulated_greeting_module.livemd) |
| 7 | 🟢Beginner | Topic | พื้นฐานของ Pattern Matching (= match operator, pin operator ^) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/beginner/7_topic_pattern_matching_match_operator_pin_operator.livemd) |
| 8 | 🟢Beginner | Topic | Keyword Lists และการกำหนดค่าเริ่มต้นให้อาร์กิวเมนต์ (()) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/beginner/8_topic_keyword_lists.livemd) |
| 9 | 🟢Beginner | Topic | พื้นฐานของ Map และการเข้าถึงข้อมูล (%{...}, map.key, map[:key]) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/beginner/9_topic_map_map_key_map_key.livemd) |
| 10 | 🟢Beginner | Topic | ฟังก์ชันแบบหลายเงื่อนไข (Multi-Clause Functions) ผ่าน Pattern Matching | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/beginner/10_topic_multi_clause_functions_pattern_matching.livemd) |
| 11 | 🟢Beginner | Topic | การใช้ Guard Clauses ในการกำหนดเงื่อนไขของฟังก์ชัน (when) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/beginner/11_topic_guard_clauses_when.livemd) |
| 12 | 🟢Beginner | Topic | การเขียนเอกสารกำกับโมดูล (@moduledoc, @doc) และแนวทางปฏิบัติที่ดีที่สุด | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/beginner/12_topic_moduledoc_doc.livemd) |
| 13 | 🟢Beginner | PROJECT | ระบบดึงข้อมูลโปรไฟล์ผู้ใช้ผ่าน Multi-Clause Pattern Matching | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/beginner/13_project_multi_clause_pattern_matching.livemd) |
| 14 | 🟡Intermediate | Topic | ระบบนิเวศของ Mix: การจัดการ Library ภายนอก (Hex) และการจัดฟอร์แมตโค้ด (mix format) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/intermediate/14_topic_mix_library_hex_mix_format.livemd) |
| 15 | 🟡Intermediate | Topic | การประกอบฟังก์ชัน (Functional Composition) และ Pipe Operator (` | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/intermediate/15_topic_functional_composition_pipe_operator.livemd) |
| 16 | 🟡Intermediate | Topic | การควบคุมทิศทางโปรแกรม: คำสั่ง case และ Match Errors | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/intermediate/16_topic_case_match_errors.livemd) |
| 17 | 🟡Intermediate | Topic | การควบคุมทิศทางโปรแกรม: คำสั่ง cond และค่าความจริง (Truthiness) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/intermediate/17_topic_cond_truthiness.livemd) |
| 18 | 🟡Intermediate | Topic | การใช้ Module Attributes เป็นค่าคงที่ (@) และการนิยามโครงสร้างข้อมูล (defstruct) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/intermediate/18_topic_module_attributes_defstruct.livemd) |
| 19 | 🟡Intermediate | Topic | การใช้งาน Structs (การสร้าง, การอัปเดต และการตรวจสอบข้อมูลแบบเข้มงวด) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/intermediate/19_topic_structs.livemd) |
| 20 | 🟡Intermediate | PROJECT | ระบบประมวลผลการเปลี่ยนแปลงสต็อกสินค้าโดยใช้ Struct | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/intermediate/20_project_struct.livemd) |
| 21 | 🟡Intermediate | Topic | การอัปเดต Map และการจัดการข้อมูลเชิงลึก (Map.put, update_in, put_in) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/intermediate/21_topic_map_map_put_update_in_put_in.livemd) |
| 22 | 🟡Intermediate | Topic | โมดูลเกี่ยวกับเวลาและวันที่ (Date, Time, DateTime, NaiveDateTime) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/intermediate/22_topic_date_time_datetime_naivedatetime.livemd) |
| 23 | 🟡Intermediate | Topic | พื้นฐานการเขียนโปรแกรมแบบเรียกซ้ำ (Recursion): Base Cases และ Recursive Steps | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/intermediate/23_topic_recursion_base_cases_recursive_steps.livemd) |
| 24 | 🟡Intermediate | Topic | การเพิ่มประสิทธิภาพ Tail Call Optimization (TCO) และ Accumulators | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/intermediate/24_topic_tail_call_optimization_tco_accumulators.livemd) |
| 25 | 🟡Intermediate | Topic | การใช้งาน Sigils (~s, ~w, ~r) และ Regular Expressions (Regex module) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/intermediate/25_topic_sigils_s_w_r_regular_expressions_regex_module.livemd) |
| 26 | 🟡Intermediate | PROJECT | ระบบประมวลผลข้อมูลที่ซับซ้อนด้วย Recursive Pipeline | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/intermediate/26_project_recursive_pipeline.livemd) |
| 27 | 🟡Intermediate | Topic | โมดูล Enum: การแปลงข้อมูลหลัก (map, filter, reduce) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/intermediate/27_topic_enum_map_filter_reduce.livemd) |
| 28 | 🟡Intermediate | Topic | โมดูล Enum: การรวบรวมข้อมูลและการค้นหา (find, group_by, all?) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/intermediate/28_topic_enum_find_group_by_all.livemd) |
| 29 | 🔴Advanced | Topic | โมดูล Stream: การประมวลผลแบบ Lazy เทียบกับ Eager | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/advanced/29_topic_stream_lazy_eager.livemd) |
| 30 | 🔴Advanced | Topic | การสร้างรายการข้อมูล (Comprehensions) (for, generators, filters, into) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/advanced/30_topic_comprehensions_for_generators_filters_into.livemd) |
| 31 | 🔴Advanced | Topic | รูปแบบการจัดการข้อผิดพลาด: Result Tuples ({:ok, val}, {:error, reason}) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/advanced/31_topic_result_tuples_ok_val_error_reason.livemd) |
| 32 | 🔴Advanced | Topic | การใช้คำสั่งพิเศษ with (การเชื่อมต่อ Result Tuples) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/advanced/32_topic_with_result_tuples.livemd) |
| 33 | 🔴Advanced | PROJECT | ระบบประมวลผลข้อมูลขนาดใหญ่แบบ Lazy Stream และ Filter | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/advanced/33_project_lazy_stream_filter.livemd) |
| 34 | 🔴Advanced | Topic | บริบทของ Module Directives (alias, require, import, use) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/advanced/34_topic_module_directives_alias_require_import_use.livemd) |
| 35 | 🔴Advanced | Topic | การทำ Pattern Matching ข้อมูลแบบ Binary และการจัดการ Bitstring (<<>>) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/advanced/35_topic_pattern_matching_binary_bitstring.livemd) |
| 36 | 🔴Advanced | Topic | การดำเนินการกับระบบไฟล์ (File.read, File.stream!, Path) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/advanced/36_topic_file_read_file_stream_path.livemd) |
| 37 | 🔴Advanced | PROJECT | ระบบประมวลผลไฟล์ Binary และการดึงข้อมูล Meta-data | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/advanced/37_project_binary_meta_data.livemd) |
| 38 | 🔴Advanced | Topic | พื้นฐานของ ExUnit (use ExUnit.Case, test, assert, refute) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/advanced/38_topic_exunit_use_exunit_case_test_assert_refute.livemd) |
| 39 | 🔴Advanced | Topic | การจัดการสถานะในการทดสอบของ ExUnit (setup, setup_all, contexts) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/advanced/39_topic_exunit_setup_setup_all_contexts.livemd) |
| 40 | 🔴Advanced | Topic | ExUnit Doctests (การรันตัวอย่างโค้ดใน @doc เป็นการทดสอบ) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/advanced/40_topic_exunit_doctests_doc.livemd) |
| 41 | 🔴Advanced | Topic | Behaviours (การกำหนด Interface ที่ชัดเจนด้วย @callback, @behaviour) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/advanced/41_topic_behaviours_interface_callback_behaviour.livemd) |
| 42 | 🔴Advanced | Topic | Protocols (การทำ Data Polymorphism ผ่าน defprotocol, defimpl) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/advanced/42_topic_protocols_data_polymorphism_defprotocol_defimpl.livemd) |
| 43 | 🔴Advanced | PROJECT | ระบบประมวลผลเอกสารแบบ Polymorphic พร้อมชุดทดสอบ ExUnit แบบเต็มรูปแบบ | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/advanced/43_project_polymorphic_exunit.livemd) |
| 44 | 🔴Advanced | Topic | Typespecs และการประกาศประเภทข้อมูลแบบกำหนดเอง (@spec, @type, @opaque) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/advanced/44_topic_typespecs_spec_type_opaque.livemd) |
| 45 | 🔴Advanced | Topic | การวิเคราะห์โค้ดแบบ Static ด้วย Dialyzer (การตรวจสอบ Type และการแก้ปัญหาคำเตือน) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/advanced/45_topic_static_dialyzer_type.livemd) |
| 46 | 🔴Advanced | Topic | กลไกการจัดการ Exception (try, rescue, raise เทียบกับ Result Tuples) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/advanced/46_topic_exception_try_rescue_raise_result_tuples.livemd) |
| 47 | 🔴Advanced | Topic | การทำงานร่วมกับ Erlang (การเรียกใช้งานโมดูลดั้งเดิม เช่น :crypto, :math) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/advanced/47_topic_erlang_crypto_math.livemd) |
| 48 | 🔴Advanced | Topic | การสร้างไฟล์ CLI ที่รันได้ (escript, การกำหนดจุดเริ่มต้น main/1) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/advanced/48_topic_cli_escript_main_1.livemd) |
| 49 | 🔴Advanced | Topic | พื้นฐานการเขียนโปรแกรมเชิงเมตา (Metaprogramming) (The AST, quote, unquote) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/advanced/49_topic_metaprogramming_the_ast_quote_unquote.livemd) |
| 50 | 🔴Advanced | PROJECT | เครื่องมือ CLI สำหรับแปลงข้อมูลอัตโนมัติด้วย Escript ที่มีการระบุ Type และทดสอบอย่างสมบูรณ์ | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/th/advanced/50_project_cli_escript_type.livemd) |

> 📌 *ตารางสรุปเนื้อหาทั้งหมด (50 หัวข้อ) ถูกสร้างขึ้นโดยอัตโนมัติจากไฟล์ Excel หลักของเรา ลิงก์ต่างๆ จะทยอยเปิดใช้งานอย่างต่อเนื่อง*

---

## 🏛️ สถาปัตยกรรมและเมนเทอร์

แต่ละแล็บจะมี **Explanation Gate** ซึ่งเมนเทอร์ AI ของเรา (เช่น *Staff Engineer Auditor*) จะตรวจสอบตรรกะของคุณก่อนที่จะอนุญาตให้ผ่านไปยังขั้นตอนถัดไป

- **Safe Guide:** เมนเทอร์ผู้เป็นมิตรสำหรับขั้นตอนที่ 1
- **Border Guard:** เมนเทอร์สายประชดประชันสำหรับการตรวจสอบโค้ด
- **เร็วๆ นี้:** Jinpachi Ego (Stateful5s)

---

## 🔗 ลิงก์ที่มีประโยชน์

[Coding5s.com](https://coding5s.com) | [Udemy (Coding5s Premium)](https://www.udemy.com/user/wilbarrios/) | [GitHub](https://github.com/WilfredoBarrios)

---

## 🤝 การมีส่วนร่วม (Contributions)

หากคุณพบข้อผิดพลาดในการแปลหรือตรรกะในห้องแล็บ หรือต้องการช่วยแปลเป็นภาษาใหม่ๆ

สามารถเปิด **Pull Request** หรือ **Issue** ได้ทันที! เราต้องการให้ Coding5s เป็นแหล่งเรียนรู้ Elixir ที่ดีที่สุดในทุกภาษา

---

## 📄 ใบอนุญาต (License)

MIT © [Wilfredo Barrios](https://github.com/WilfredoBarrios)

---
⚡ *Coding5s System — การเรียนรู้ที่ออกแบบมาเพื่อความเชี่ยวชาญทางเทคนิค*
