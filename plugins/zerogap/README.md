# Zero Gap

**Stop guessing whether you know it.** Your agent splits the topic into parts and quizzes you one question at a time. It says plainly what each answer got wrong and why before asking the next, goes deeper on a part until you've got it, and stops when every part is done.

Feeling ready for a meeting isn't the same as being able to explain the idea or defend it when someone pushes back. Reading the doc once more doesn't show you the gaps. Being asked does.

Zero Gap is one skill that turns your agent into a direct study partner:

```
   material you shared or the conversation so far
                       │
                       ▼
        the topic split into parts, listed up front
                       │
                       ▼
     Question N: one question on the current part, typed answer
                       │
                       ▼
   ✅ Right   🟡 Partly   ❌ Not quite  +  the fix for that question
                Part 2/4 · ✅3 🟡1 ❌1
                       │
     🟡, ❌ or more to it? ── a deeper question on the same part
                       │
          part done? ──┴── next part, or the wrap-up after the last
                       │
                       ▼
     wrap-up: solid now · weakest at the start · still worth a look
```

The questions come from your material, not from a generic question bank. Each part starts with an easy question on its key idea. Each answer is graded the moment you send it. When it's off, you get the right answer for that question, usually the *why*, without hints or "try again", and the next question goes deeper on that part and builds on the fix. A right answer that covers the part moves you on, and one that leaves more to cover takes you deeper. A part gets at most 4 questions, and whatever is left after that goes in the wrap-up. If the gap is in the basics underneath, the grade covers them in a line and the quiz stays on your material. Ask something back instead of answering and it answers, because your question shows exactly what isn't clear yet. Push back on a grade with a good reason and it changes the grade.

## A graded answer

```
Quizzing on the proposal in 3 parts: who needs two approvals · how risk
is decided · keeping the risky paths current

Question 3: what happens if a risky change is labelled low-risk

> Nothing much, a reviewer would just catch it.

❌ Not quite. The labelling isn't manual; the paths decide it. The real
risk is a new risky path nobody added to the list, which then gets one
approval.
Part 2/3 · ✅1 🟡1 ❌1

Question 4: why a new folder slips through
Someone adds a new payments/ folder in May. How many approvals does a
change to it get?
```

## When it runs

Your agent loads it on its own when you ask to be quizzed, tested or drilled on something, or to get ready to explain or defend it. You can also call it directly, as `/zerogap:quiz` in Claude Code.

It works in any agent that reads skills, including Claude (chat, Cowork and Claude Code). Every answer is typed, in your own words, never picked from a list. Where the app offers clickable menus, each question has a box for your answer and buttons to skip it or stop the quiz, and the grade shows up in the conversation as normal text; elsewhere, just say skip or stop.

## Examples

**Meeting prep.** "Quiz me on proposal.md, I'm presenting it to the team on Friday." The questions come from the proposal and lean toward what the team is likely to push back on, and some have you argue a point as you would in the room.

**Code your agent wrote.** "Before I merge this, quiz me on the changes you just made." Or just run `/zerogap:quiz` right after the work. The questions come from the diff and the conversation behind it: why it's built this way, what breaks if an input is missing, what a reviewer will ask. You merge code you can explain.

**An interview.** "I've got a system design interview Thursday, here are my notes on caching. Quiz me." Typed answers in your own words, graded straight, until you can explain each idea without the notes.

## It's working if

- Every question is about your material, not generic trivia or the general basics behind it.
- Each answer is graded before the next question, where you can read it, with a progress line.
- A wrong answer tells you what was missing and why for that question, not a hint and not a lecture.
- A question asks one thing, and the next one builds on the fix instead of repeating it.
- A question you ask back gets a real answer, and a good pushback changes the grade.
- It ends when every part is done, not after a set number of questions.
- You can skip a question or stop the quiz anytime, with no argument.

## Install

**Claude Code:**

```
/plugin marketplace add rekodev/skills
/plugin install zerogap@rekodev
```

**Any agent, with the [skills CLI](https://skills.sh):**

```bash
npx skills add rekodev/skills
```

Or copy `skills/quiz` into your agent's skills folder yourself.

## Data

Zero Gap is instructions only. It sends nothing anywhere and stores nothing.

## License

MIT
