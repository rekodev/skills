---
description: The user asks something back mid-round. Answer it directly, then carry on with the quiz.
max_turns: 5
allowed_tools: [Skill, AskUserQuestion]
---

Keep quizzing me on database indexes. Here's where we are:

Round 2

1. Why can an index on `(last_name, first_name)` help a query that filters only on `last_name`?
   My answer: Because the index is sorted by last_name first.

2. Why might the same index not help a query that filters only on `first_name`?
   My answer: Wait, why wouldn't it? Isn't first_name in the index too?

3. What does an index cost on writes?
   My answer: Every insert has to update the index as well, so writes get slower.
