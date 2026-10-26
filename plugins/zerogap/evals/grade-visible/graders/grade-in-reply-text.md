---
type: llm
focus: trace
---

PASS if Claude's reply text, before the next question is asked, contains a ✅ grade for the answer and a progress line naming the part and a count of grades, such as "Part 2/4 · ✅2 🟡1 ❌0". The next question may be asked in the reply or through AskUserQuestion with a single question.

FAIL if the grade is missing from the reply text, appears only in Claude's reasoning or only inside an AskUserQuestion question or option, comes after the next question, or has no progress line.
