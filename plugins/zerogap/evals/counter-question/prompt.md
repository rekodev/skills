---
description: The user asks something back instead of answering. Answer it directly, then carry on with the next question.
max_turns: 5
allowed_tools: [Skill, AskUserQuestion]
---

Keep quizzing me on database indexes. Here's where we are:

Question 3: an index that starts with another column

Why might an index on `(last_name, first_name)` not help a query that filters only on `first_name`?

My answer: Wait, why wouldn't it? Isn't first_name in the index too?
