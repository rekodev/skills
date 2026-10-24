---
description: Mid-quiz answers, one wrong and one partly right. Grade each and say what was missing and why, no hints.
max_turns: 5
allowed_tools: [Skill, AskUserQuestion]
---

We're in the middle of a quiz on HTTP caching, keep going. Here was round 1 and my answers:

Round 1

1. What does `Cache-Control: no-cache` do?
   My answer: It stops the browser from storing the response at all.

2. Why use an `ETag` instead of only `max-age`?
   My answer: So the server can tell when the content changed.

3. When does a `304 Not Modified` come back?
   My answer: When the browser asks with `If-None-Match` and the ETag still matches.

Grade these.
