---
type: llm
focus: last_message
---

PASS if the reply answers the user's question in answer 2 directly (the index is sorted by `last_name` first, so rows with the same `first_name` are scattered and the database can't jump to them), grades answers 1 and 3, and then carries the quiz on, for example with a next round or a follow-up question on the point the user didn't get.

FAIL if the reply ignores or deflects the user's question, answers it only with a hint or another question, or ends the quiz without continuing.
