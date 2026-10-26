---
type: llm
focus: trace
---

PASS if the grade (a ✅, 🟡 or ❌ mark and what was missing) appears in Claude's reply text, and Claude then asks exactly one next question, a deeper one on `no-cache` or `no-store` that builds on the correction. The next question may be asked in the reply or through AskUserQuestion with a single question.

FAIL if the grade appears only inside an AskUserQuestion question or option, if Claude asks several new questions at once, or if the next question moves to an unrelated caching topic.
