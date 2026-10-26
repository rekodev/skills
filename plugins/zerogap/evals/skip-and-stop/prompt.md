---
description: The user answers and stops the quiz, after skipping an earlier question. Grade the answer, don't push on the skip, go straight to the wrap-up.
max_turns: 5
allowed_tools: [Skill, AskUserQuestion]
---

Keep quizzing me on HTTP caching. So far I got `no-cache` versus `no-store` right, and I skipped question 4 on why fingerprinted asset URLs pair well with a long `max-age`. Here's question 5:

Question 5: what `no-store` prevents

What does `Cache-Control: no-store` prevent?

My answer: Any cache writing the response down at all, so every request goes to the server. And stop the quiz after this, that's enough for today.
