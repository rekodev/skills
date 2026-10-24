---
type: llm
focus: last_message
---

PASS if the reply grades answer 1, does not question the user about the skipped question 2 or ask them to answer it, asks no new quiz questions, and gives a wrap-up that lists question 2 as skipped.

FAIL if the reply asks the user to answer question 2 or 3 after all, starts another round, asks the user to explain the topic in their own words, or offers to keep going with more questions.
