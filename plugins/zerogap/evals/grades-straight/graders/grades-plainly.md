---
type: llm
focus: last_message
---

PASS if the reply grades all three answers: the first as wrong or not quite (`no-cache` allows storing but requires revalidation before reuse; `no-store` is what prevents storing), the second as partly right with what is missing named (the ETag lets the browser revalidate cheaply once `max-age` runs out and get a 304 instead of the full body), and the third as right, stating the corrections outright.

FAIL if the reply only hints at what is wrong, asks the user to try again without giving the correct answer, skips grading any of the three, or marks the first answer as right.
