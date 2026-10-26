---
description: A right answer mid-quiz. The grade, a ✅ included, is a visible message with the progress line, written before the next question is asked.
max_turns: 5
allowed_tools: [Skill, AskUserQuestion]
---

We're in the middle of a quiz on HTTP caching, keep going.

Quizzing on HTTP caching in 4 parts: no-cache vs no-store · ETags · max-age vs s-maxage · immutable

Question 3: what an ETag check returns

The browser sends `If-None-Match` with the ETag it has, and the resource hasn't changed. What does the server send back?

My answer: A 304 Not Modified with no body, so the browser reuses the copy it already has.
