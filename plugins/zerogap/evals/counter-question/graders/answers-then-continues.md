---
type: llm
focus: last_message
---

PASS if the reply answers the user's question directly (the index is sorted by `last_name` first, so rows with the same `first_name` are scattered and the database can't jump to them) and then carries the quiz on with one next question, labelled as a question, that builds on the point the user didn't get.

FAIL if the reply ignores or deflects the user's question, answers it only with a hint or another question, asks several new questions at once, or ends the quiz without continuing.
