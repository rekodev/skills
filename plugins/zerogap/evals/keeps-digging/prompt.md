---
description: A follow-up after a partly-right answer goes in the wrong direction. Keep following up on the same point instead of moving on.
max_turns: 5
allowed_tools: [Skill, AskUserQuestion]
---

We're in the middle of a quiz on HTTP caching, keep going.

Question 3: what an ETag is for

Why use an `ETag` as well as `max-age`?

My answer: So the server can tell when the content changed.

🟡 Partly. The server already knows when its content changed. The ETag is for the browser: once `max-age` runs out, it sends the ETag back in `If-None-Match`, and if nothing changed the server answers with a short 304 instead of the full body.

Question 4: revalidating a stale response

A response had `max-age=60` and an ETag. The browser asks for it again after 90 seconds and nothing has changed. What comes back?

My answer: The full response again, because max-age ran out so the cache is thrown away.
