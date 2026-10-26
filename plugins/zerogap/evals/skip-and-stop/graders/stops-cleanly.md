---
type: llm
focus: last_message
---

PASS if the reply grades the answer to question 5, does not ask the user to answer the skipped question 4, asks no new quiz questions, and gives a wrap-up that lists question 4 as skipped.

FAIL if the reply asks the user to answer question 4 after all, asks another question, asks the user to explain the topic in their own words, or offers to keep going with more questions.
