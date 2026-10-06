---
type: llm
focus: trace
---

PASS if Claude reads docs/rfc.md and then, before producing a rewritten version, asks the user at least one question whose answer would change the rewrite, such as who will read it now, how much shorter it should get, or which technical details must stay, with options to pick from and one marked as recommended.

FAIL if Claude produces a rewritten version of the RFC without asking any such question first.
