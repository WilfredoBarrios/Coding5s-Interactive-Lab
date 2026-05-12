# 🧪 Elixir Interactive Lab — 한국어 🇰🇷

[![Livebook](https://img.shields.io/badge/Livebook-FF6B6B?logo=livebook&logoColor=white)](https://livebook.dev)
[![Elixir](https://img.shields.io/badge/Elixir-4B275F?logo=elixir&logoColor=white)](https://elixir-lang.org)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

> **단순히 읽는 것이 아니라, 직접 코드를 작성하며 Elixir를 배우십시오.**
> 이 리포지토리는 기초부터 기술적 숙련도까지 안내하기 위해 설계된 **Coding5s** 인터랙티브 커리큘럼의 한국어 버전입니다.

---

## 🚀 시작하기

이 실습을 인터랙티브하게 체험하려면 컴퓨터에 **Livebook**이 설치되어 있어야 합니다.

1. **Livebook 설치:** [livebook.dev](https://livebook.dev)에서 다운로드하십시오.
2. **실습 열기:** 아래 폴더를 탐색하여 각 파일 내의 **"Run in Livebook"** 버튼을 클릭하거나, Livebook 세션에 URL을 직접 임포트하십시오.

---

## 📚 Coding5s 방법론 (5단계)

우리의 접근 방식은 **'통제된 인지적 마찰(Controlled Cognitive Friction)'**을 기반으로 합니다. 각 실습은 다음 단계를 통해 학습자를 안내합니다.

| 단계 | 이름 | 목표 |
|-------|--------|----------|
| **1** | Practice | 처음부터 코드 작성하기 |
| **2** | Debug | 의도적인 논리 오류 찾기 |
| **3** | Complete | 아키텍처 공백 채우기 |
| **4** | Refactor | 기존 코드 최적화하기 |
| **5** | Extend | 새로운 기능 추가하기 |

**이 리포지토리는 1단계(무료)를 포함하고 있습니다.** 2~5단계는 프리미엄 버전에서 제공됩니다.

---

## 🧠 소크라테스식 멘토 (AI)

각 파일 내부에는 **'멘토 프롬프트(Mentor Prompt)'**가 포함되어 있습니다. 이것은 단순한 챗봇이 아니라 다음과 같은 역할을 수행하는 엘리트 멘터 시뮬레이터입니다.

- **정답을 즉시 알려주지 않습니다** (처음에는)
- 스스로 실수를 발견할 수 있도록 질문을 던집니다
- BEAM 개념을 설명하기 위해 실제 세계의 비유를 사용합니다
- '감(Vibe) 코딩'을 지양하고 진정한 엔지니어링 직관을 구축하도록 돕습니다
- 질문을 던지면 시니어 엔지니어 수준의 답변을 제공합니다

---

## 🛠️ 인터랙티브 커리큘럼 — Stage 1: Practice Lab

'Run in Livebook' 버튼을 클릭하여 각 인터랙티브 실습을 로컬 환경에서 직접 실행하십시오.

| # |  Level |  Type |Topic Name | Interactive Lab |
| :--- | :--- | :--- | :--- | :--- |
| 1 | 🟢Beginner | Topic | Mix 입문 및 모듈 캡슐화 (mix new, defmodule, def) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/beginner/1_topic_mix_mix_new_defmodule_def.livemd) |
| 2 | 🟢Beginner | Topic | 원시 데이터 타입 (Integers, Floats, Atoms, Booleans) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/beginner/2_topic_integers_floats_atoms_booleans.livemd) |
| 3 | 🟢Beginner | Topic | 문자열 연산 및 보간법 (String Operations & Interpolation) (<>, #{}) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/beginner/3_topic_string_operations_interpolation.livemd) |
| 4 | 🟢Beginner | Topic | 튜플(Tuple) 구조 및 기초 구조 분해 ({}) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/beginner/4_topic_tuple.livemd) |
| 5 | 🟢Beginner | Topic | 리스트 기초 (Cons operator `[h | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/beginner/5_topic_cons_operator_h.livemd) |
| 6 | 🟢Beginner | PROJECT | 캡슐화된 타입 변환 및 Greeting 모듈 | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/beginner/6_project_greeting.livemd) |
| 7 | 🟢Beginner | Topic | 패턴 매칭 기초 (= match operator, pin operator ^) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/beginner/7_topic_match_operator_pin_operator.livemd) |
| 8 | 🟢Beginner | Topic | 키워드 리스트 및 기본 인자 (Keyword Lists & Default Arguments) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/beginner/8_topic_keyword_lists_default_arguments.livemd) |
| 9 | 🟢Beginner | Topic | 맵(Map) 기초 및 접근 (%{...}, map.key, map[:key]) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/beginner/9_topic_map_map_key_map_key.livemd) |
| 10 | 🟢Beginner | Topic | 패턴 매칭을 이용한 다중 절 함수 (Multi-Clause Functions) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/beginner/10_topic_multi_clause_functions.livemd) |
| 11 | 🟢Beginner | Topic | 함수 시그니처의 가드 절 (Guard Clauses) (when) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/beginner/11_topic_guard_clauses_when.livemd) |
| 12 | 🟢Beginner | Topic | 모듈 문서화 (@moduledoc, @doc) 및 모범 사례 | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/beginner/12_topic_moduledoc_doc.livemd) |
| 13 | 🟢Beginner | PROJECT | 다중 절 패턴 매칭을 이용한 사용자 프로필 추출기 | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/beginner/13_project.livemd) |
| 14 | 🟡Intermediate | Topic | Mix 생태계: 외부 의존성 (Hex) 및 코드 포맷팅 (mix format) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/intermediate/14_topic_mix_hex_mix_format.livemd) |
| 15 | 🟡Intermediate | Topic | 함수 합성 및 파이프 연산자 (Pipe Operator) (` | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/intermediate/15_topic_pipe_operator.livemd) |
| 16 | 🟡Intermediate | Topic | 제어 흐름: case 문 및 매칭 에러 | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/intermediate/16_topic_case.livemd) |
| 17 | 🟡Intermediate | Topic | 제어 흐름: cond 문 및 진릿값 (Truthiness) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/intermediate/17_topic_cond_truthiness.livemd) |
| 18 | 🟡Intermediate | Topic | 상도로서의 모듈 속성 (@) 및 구조체 정의 (defstruct) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/intermediate/18_topic_defstruct.livemd) |
| 19 | 🟡Intermediate | Topic | 구조체(Structs) 작업 (생성, 업데이트 및 엄격한 매칭) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/intermediate/19_topic_structs.livemd) |
| 20 | 🟡Intermediate | PROJECT | 구조체 기반 인벤토리 변환 파이프라인 | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/intermediate/20_project.livemd) |
| 21 | 🟡Intermediate | Topic | 맵 업데이트 및 깊은 조작 (Map.put, update_in, put_in) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/intermediate/21_topic_map_put_update_in_put_in.livemd) |
| 22 | 🟡Intermediate | Topic | 날짜 및 시간 모듈 (Date, Time, DateTime, NaiveDateTime) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/intermediate/22_topic_date_time_datetime_naivedatetime.livemd) |
| 23 | 🟡Intermediate | Topic | 재귀 기초: 기본 케이스 및 재귀 단계 | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/intermediate/23_topic.livemd) |
| 24 | 🟡Intermediate | Topic | 꼬리 재귀 최적화 Tail Call Optimization (TCO) 및 누산기(Accumulators) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/intermediate/24_topic_tail_call_optimization_tco_accumulators.livemd) |
| 25 | 🟡Intermediate | Topic | 시질 Sigils (~s, ~w, ~r) 및 정규 표현식 (Regex module) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/intermediate/25_topic_sigils_s_w_r_regex_module.livemd) |
| 26 | 🟡Intermediate | PROJECT | 재귀적 복합 데이터 파서 파이프라인 | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/intermediate/26_project.livemd) |
| 27 | 🟡Intermediate | Topic | Enum 모듈: 핵심 변환 (map, filter, reduce) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/intermediate/27_topic_enum_map_filter_reduce.livemd) |
| 28 | 🟡Intermediate | Topic | Enum 모듈: 집계 및 검색 (find, group_by, all?) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/intermediate/28_topic_enum_find_group_by_all.livemd) |
| 29 | 🔴Advanced | Topic | Stream 모듈: 지연 평가 vs 즉시 평가 (Lazy vs Eager Evaluation) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/advanced/29_topic_stream_vs_lazy_vs_eager_evaluation.livemd) |
| 30 | 🔴Advanced | Topic | 열거형 생성 Comprehensions (for, generators, filters, into) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/advanced/30_topic_comprehensions_for_generators_filters_into.livemd) |
| 31 | 🔴Advanced | Topic | 에러 처리 패턴: 결과 튜플 Result Tuples ({:ok, val}, {:error, reason}) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/advanced/31_topic_result_tuples_ok_val_error_reason.livemd) |
| 32 | 🔴Advanced | Topic | with 특수 형식 (결과 튜플 체이닝) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/advanced/32_topic_with.livemd) |
| 33 | 🔴Advanced | PROJECT | 대규모 지연 데이터 처리 스트림 및 필터링 | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/advanced/33_project.livemd) |
| 34 | 🔴Advanced | Topic | 모듈 지시자 컨텍스트 (alias, require, import, use) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/advanced/34_topic_alias_require_import_use.livemd) |
| 35 | 🔴Advanced | Topic | 바이너리 패턴 매칭 및 비트 문자열 조작 (<<>>) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/advanced/35_topic.livemd) |
| 36 | 🔴Advanced | Topic | 파일 시스템 작업 (File.read, File.stream!, Path) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/advanced/36_topic_file_read_file_stream_path.livemd) |
| 37 | 🔴Advanced | PROJECT | 캡슐화된 바이너리 파일 프로세서 및 메타데이터 추출기 | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/advanced/37_project.livemd) |
| 38 | 🔴Advanced | Topic | ExUnit 기초 (use ExUnit.Case, test, assert, refute) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/advanced/38_topic_exunit_use_exunit_case_test_assert_refute.livemd) |
| 39 | 🔴Advanced | Topic | ExUnit 테스트 상태 관리 (setup, setup_all, contexts) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/advanced/39_topic_exunit_setup_setup_all_contexts.livemd) |
| 40 | 🔴Advanced | Topic | ExUnit 독테스트 (테스트로서 @doc 예제 실행) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/advanced/40_topic_exunit_doc.livemd) |
| 41 | 🔴Advanced | Topic | 비헤이비어 Behaviours (@callback, @behaviour를 통한 명시적 인터페이스 정의) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/advanced/41_topic_behaviours_callback_behaviour.livemd) |
| 42 | 🔴Advanced | Topic | 프로토콜 Protocols (defprotocol, defimpl을 통한 데이터 다형성) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/advanced/42_topic_protocols_defprotocol_defimpl.livemd) |
| 43 | 🔴Advanced | PROJECT | 전체 ExUnit 스위트를 포함한 다형성 문서 파서 엔진 | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/advanced/43_project_exunit.livemd) |
| 44 | 🔴Advanced | Topic | 타입스펙 Typespecs 및 사용자 정의 타입 선언 (@spec, @type, @opaque) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/advanced/44_topic_typespecs_spec_type_opaque.livemd) |
| 45 | 🔴Advanced | Topic | Dialyzer를 이용한 정적 분석 (타입 체크 및 일반적인 경고 해결) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/advanced/45_topic_dialyzer.livemd) |
| 46 | 🔴Advanced | Topic | 예외 처리 메커니즘 (try, rescue, raise vs 결과 튜플) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/advanced/46_topic_try_rescue_raise_vs.livemd) |
| 47 | 🔴Advanced | Topic | Erlang 상호 운용성 (네이티브 모듈 호출 예: :crypto, :math) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/advanced/47_topic_erlang_crypto_math.livemd) |
| 48 | 🔴Advanced | Topic | CLI 실행 파일 빌드 (escript, main/1 엔트리 포인트 정의) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/advanced/48_topic_cli_escript_main_1.livemd) |
| 49 | 🔴Advanced | Topic | 메타프로그래밍 기초 (The AST, quote, unquote) | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/advanced/49_topic_the_ast_quote_unquote.livemd) |
| 50 | 🔴Advanced | PROJECT | 자동화된 데이터 변환을 위한 타입 정의 및 테스트 완료된 Escript CLI 도구 | [![Run in Livebook](https://livebook.dev/badge/v1/blue.svg)](https://livebook.dev/run?url=https://github.com/WilfredoBarrios/Coding5s-Elixir-Fundamentals/blob/main/Stage_1/ko/advanced/50_project_escript_cli.livemd) |

> 📌 *전체 50개 주제의 테이블은 마스터 Excel에서 자동 생성됩니다. 링크는 순차적으로 활성화됩니다.*

---

## 🏛️ 아키텍처 및 멘토

각 실습에는 **Explanation Gate(설명 게이트)**가 포함되어 있어, 다음 단계로 넘어가기 전에 AI 멘토(예: *Staff Engineer Auditor*)가 사용자의 로직을 검증합니다.

- **Safe Guide:** 1단계를 위한 친절한 멘토
- **Border Guard:** 코드 검수를 위한 냉철한 멘토
- **개봉 박두:** Jinpachi Ego (Stateful5s)

---

## 🔗 유용한 링크

[Coding5s.com](https://coding5s.com) | [Udemy (Coding5s Premium)](https://www.udemy.com/user/wilbarrios/) | [GitHub](https://github.com/WilfredoBarrios)

---

## 🤝 기여하기 (Contributions)

번역이나 실습 로직에서 오류를 발견하셨나요? 혹은 새로운 언어로 번역하는 데 도움을 주고 싶으신가요?

언제든지 **Pull Request**나 **Issue**를 생성해 주십시오! Coding5s가 모든 언어에서 Elixir를 배우기 위한 최고의 소스가 되기를 바랍니다.

---

## 📄 라이선스

MIT © [Wilfredo Barrios](https://github.com/WilfredoBarrios)

---
⚡ *Coding5s System — 기술적 숙련을 위해 설계된 학습 시스템.*
