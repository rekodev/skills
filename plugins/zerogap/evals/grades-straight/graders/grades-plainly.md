---
type: llm
focus: last_message
---

PASS if the reply grades the answer as wrong or not quite and states the correction outright: `no-cache` allows storing but requires revalidation before reuse, and `no-store` is what prevents storing.

FAIL if the reply only hints at what is wrong, asks the user to try again without giving the correct answer, or marks the answer as right.
