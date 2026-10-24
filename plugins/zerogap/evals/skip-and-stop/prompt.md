---
description: The user answers one question, skips one and stops the quiz. Grade the answer, don't push on the skip, go straight to the wrap-up.
max_turns: 5
allowed_tools: [Skill, AskUserQuestion]
---

Keep quizzing me on HTTP caching. Here's round 2:

Round 2

1. What does `Cache-Control: no-store` prevent?
   My answer: Any cache writing the response down at all, so every request goes to the server.

2. Why do fingerprinted asset URLs pair well with long `max-age`?
   My answer: Skip.

3. What does `stale-while-revalidate` do?
   My answer: Stop the quiz, that's enough for today.
