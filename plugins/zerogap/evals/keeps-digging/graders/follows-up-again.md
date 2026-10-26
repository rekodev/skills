---
type: llm
focus: trace
---

PASS if Claude grades the answer to question 4 as wrong or not quite, says outright that the browser revalidates with `If-None-Match` and gets a 304 Not Modified without the body, and then asks one next question that is still about ETags or revalidation.

FAIL if the next question moves to a different caching topic, if Claude asks several questions at once, or if it marks the answer as right.
