# Zero Gap

**Stop guessing whether you know it.** Your agent quizzes you in rounds, says plainly what each answer got wrong and why, and stops when you both agree you've got it.

Feeling ready for a meeting isn't the same as being able to explain the idea or defend it when someone pushes back. Reading the doc once more doesn't show you the gaps. Being asked does.

Zero Gap is one skill that turns your agent into a direct study partner:

```
   material you shared or the conversation so far
                       │
                       ▼
          Round N: three questions, typed answers
                       │
                       ▼
     ✅ right   ⚠️ partly   ❌ wrong  +  what was missing and why
                       │
          gaps left? ──┴── next round on the weakest areas
                       │
                       ▼
   last round in your own words  →  a sharper version back
                       │
                       ▼
     wrap-up: solid now · weakest at the start · still worth a look
```

The questions come from your material, not from a generic question bank. When an answer is off, it tells you what was missing, usually the *why*, without hints or "try again". Ask something back mid-round and it answers, because your question shows exactly what isn't clear yet. No fixed number of rounds: it keeps going until the answers come back right.

## A graded round

```
Round 2: why risk-based approvals cut review time

1. Which merge requests still need two approvals?
   ✅ Right. Changes to auth, billing and migrations.

2. Why not just lower the approval count everywhere?
   ⚠️ Partly. Fewer approvals does save time, but the proposal's point is
   where the time goes: most review hours are spent on low-risk changes.

3. What does the team lose if a risky change is labelled low-risk?
   ❌ Not quite. The labelling isn't manual; the paths decide it. The real
   risk is a new risky path nobody added to the list, which is why the
   proposal includes a quarterly path review.
```

## When it runs

Your agent loads it on its own when you ask to be quizzed, tested or drilled on something, or to get ready to explain or defend it. You can also call it directly, as `/zerogap:quiz` in Claude Code.

It works in any agent that reads skills, including Claude (chat, Cowork and Claude Code). Where the app offers clickable questions, recall checks use them; elsewhere they are lettered, so you can answer in one line.

## Examples

**Meeting prep.** "Quiz me on proposal.md, I'm presenting it to the team on Friday." The questions come from the proposal and lean toward what the team is likely to push back on, and the last round has you practise the pushback.

**Something from this conversation.** "Okay, quiz me on what we just covered about database indexes." The questions come from the discussion, and the gaps decide where the next round goes.

**An interview.** "I've got a system design interview Thursday, here are my notes on caching. Quiz me." Typed answers in your own words, graded straight, until you can explain each idea without the notes.

## It's working if

- Every question is about your material, not generic trivia.
- A wrong answer tells you what was missing and why, not a hint.
- A question you ask back gets a real answer.
- It ends when you've got it, not after a set number of questions.

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
