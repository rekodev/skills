---
description: A complete right answer on a simple part. Grade it and move to the next part instead of digging further.
max_turns: 5
allowed_tools: [Skill, AskUserQuestion]
---

We're in the middle of a quiz on HTTP caching, keep going.

Quizzing on HTTP caching in 4 parts: no-cache vs no-store · ETags · max-age vs s-maxage · immutable

Question 5: what `s-maxage` controls

What does `s-maxage` set?

My answer: It's the max-age for shared caches like CDNs and proxies, and it overrides max-age there. The browser ignores it and keeps using max-age.
