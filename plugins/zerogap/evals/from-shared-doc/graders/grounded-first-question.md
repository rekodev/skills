---
type: llm
focus: trace
---

PASS if Claude reads proposal.md and then asks a single first question, labelled as question 1, about the proposal's specifics, such as which paths need two approvals, the 19-hour wait, the 72% of review hours, or the risk of a path missing from the list.

FAIL if Claude asks generic code-review trivia not tied to the proposal, summarizes or explains the whole proposal before asking anything, asks several questions at once, or asks no questions.
