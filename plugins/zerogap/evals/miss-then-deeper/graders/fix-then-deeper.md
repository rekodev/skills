---
type: llm
focus: trace
---

PASS if Claude grades the answer as wrong or not quite and gives the right answer for that question: `s-maxage` is the lifetime for shared caches such as CDNs and proxies, overriding `max-age` there, while the browser ignores it. The correction stays on `s-maxage` and `max-age`. Claude then asks exactly one next question on the same part that can only be answered using the correction, for example how long a CDN and a browser each reuse a response with `max-age=60, s-maxage=3600`.

FAIL if Claude only hints or asks the user to try again, if the correction turns into a lesson on other parts such as ETags or `immutable`, if the next question asks the same thing again or moves to another part, if it asks more than one thing, or if it carries a hint.
