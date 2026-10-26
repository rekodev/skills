# Changelog

## 1.1.1

- The grade is a visible message sent before the next question, never kept only in the agent's reasoning, so the ✅, 🟡 or ❌ always shows.
- The topic is split into parts, listed in one line before the first question. Each part opens with an easy question on its key idea.
- After a 🟡 or ❌, the right answer is given and the next question goes deeper on the same part, building on the correction instead of asking it again from another angle. A ✅ moves to the next part when it covers the part, and goes deeper when there is more to it.
- A part gets at most 4 questions, and what is left of it goes under "Still worth a look". This replaces the offer to leave a point after a couple of misses.
- A correction covers only what that question asked, not the whole topic.
- Each grade ends with a progress line, such as "Part 2/4 · ✅3 🟡1 ❌1".
- One thing per question, and no hints inside questions.
- The question tool's header names the current part instead of the question number.

## 1.1.0

- One question at a time instead of rounds of three, each opened with "Question N" and what it covers.
- Each answer is graded as soon as it comes in, in the reply as ordinary text, before the next question.
- After a 🟡 or ❌, follow-ups stay on the same point until an answer on it comes back ✅, then the quiz moves on. When a couple of follow-ups in a row still miss, the quiz gives the full answer and offers to leave the point for now.
- The skill no longer points the agent at pages the user linked, only at material they shared or pointed to.
- A gap in the basics is covered in the grade, and the quiz stays on the material instead of turning to general basics.
- Run right after work with no topic given, the quiz covers what was done in the conversation.
- No separate own-words round at the end: every typed answer is already in the user's own words.

## 1.0.0

- First release: the `quiz` skill.
