---
type: llm
focus: last_message
---

PASS if the reply grades the answer as right and then gives a wrap-up that names `no-cache` versus `no-store` or ETags as weakest at the start.

FAIL if the reply asks another question, starts a final round asking the user to explain the topic in their own words, or ends without grading the answer.
