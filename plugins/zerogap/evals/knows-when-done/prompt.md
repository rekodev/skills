---
description: The user has got it after a few rounds. Move to the own-words round or the wrap-up, not another full round of new questions.
max_turns: 5
allowed_tools: [Skill, AskUserQuestion]
---

Keep quizzing me on HTTP caching. Recap so far: in round 1 I mixed up `no-cache` and `no-store` and missed why ETags matter, in round 2 I got 2 of 3, and I've just answered round 3:

Round 3

1. A response has `Cache-Control: max-age=60` and an ETag. What happens on a request 90 seconds later?
   My answer: The cache is stale, so the browser revalidates with `If-None-Match`, and gets a 304 if nothing changed.

2. When would you pick `no-store` over `no-cache`?
   My answer: For sensitive data like account pages, where nothing should be written to disk at all.

3. Why does `immutable` help with fingerprinted assets?
   My answer: The URL changes when the file changes, so the browser never needs to revalidate while it's fresh.

I think I've got it now.
