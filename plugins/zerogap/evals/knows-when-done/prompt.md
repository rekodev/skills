---
description: The user has got it after several questions. Grade the last answer and wrap up, with no new questions and no extra own-words round.
max_turns: 5
allowed_tools: [Skill, AskUserQuestion]
---

Keep quizzing me on HTTP caching. Recap so far: early on I mixed up `no-cache` and `no-store` and missed why ETags matter, and I've got the last four questions right. Here's the latest:

Question 9: fingerprinted assets

Why does `immutable` help with fingerprinted assets?

My answer: The URL changes when the file changes, so the browser can skip revalidating it even when the user reloads the page.

I think I've got it now.
