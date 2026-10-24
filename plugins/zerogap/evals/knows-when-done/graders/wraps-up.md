---
type: llm
focus: last_message
---

PASS if the reply grades round 3 as right and then moves toward finishing: either one last round asking the user to explain the topic in their own words, or a wrap-up that names `no-cache` versus `no-store` or ETags as weakest at the start.

FAIL if the reply starts another full round of new technical questions as if the quiz were still mid-way, or ends without grading round 3.
