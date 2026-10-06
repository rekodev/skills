# Zero Guess

**Stops your agent from guessing.** When a request is ambiguous, it asks the few questions that matter before starting. Clear requests go straight through.

An AI agent's worst habit isn't being wrong. It's guessing quietly, then building the whole thing on the guess. You find out three files or two pages later, when the export is in the wrong format or the rewrite cut the part your team needed.

Zero Guess is one skill that breaks the habit. Before the agent starts, it sorts every guess the request forces:

```
                 every guess the agent would make
                              │
         ┌────────────────────┼────────────────────┐
         ▼                    ▼                    ▼
       FACT              LOAD-BEARING           DEFAULT
    look it up         ask, with a pick       pick it, say so
  (code, files, chat)  (one short round)      (in the brief)
```

Facts it looks up, so it never asks what your code already says. Choices that would change the result it asks about, in one short multiple-choice round with a recommended pick. Everything else it decides and tells you. A clear request gets no questions at all.

## Does it work?

Each case below ran three times with Zero Guess and three times without it, graded the same way, using Claude Code's plugin evals.

| Request | With | Without | What changed |
| --- | --- | --- | --- |
| "Add an export feature to this todo CLI" | 1.00 | 0.00 | Without it, the agent built the export on guesses every time. With it, the agent read the repo, then asked about format and scope. |
| "Help me plan a trip next month" | 1.00 | 0.33 | It asks where, when and budget, with a recommended pick, instead of planning a trip you never described. |
| "Add tests for the slugify helper" | 0.89 | 0.78 | It looks up the test setup instead of asking about it. |
| "Rename `tmp` to `total` in src/sum.js" | 1.00 | 1.00 | No questions. Clear requests stay fast. |

The suite lives in [`evals/`](evals) and runs with `claude plugin eval . --scaffold` from this folder.

## When it runs

Your agent loads it on its own when a request is ambiguous in a way that matters. You can also call it directly, as `/zeroguess:clarify` in Claude Code, or ask your agent to clarify before starting.

It works in any agent that reads skills, including Claude (chat, Cowork and Claude Code). Where the app offers clickable questions, the questions use them; elsewhere they are numbered, so you can answer a whole round in one line, such as "1b, 2a".

## Examples

**A software feature.** "Add an export feature to my todo CLI." The agent reads the project first, so it never asks which language or test setup you use. It asks what the code can't tell it: the format, where the export goes, and which todos it includes.

**A document rewrite.** "Reword my RFC, my PM says it's too technical." Before touching a word, the agent asks who reads it now, how far to cut, and which details have to stay.

**A trip.** "Help me plan a trip next month." No code involved: the agent asks where, how long and roughly what budget, then plans it.

When the questions are settled, the agent writes a short brief before carrying on:

```
Decisions: CSV export of all todos, written to a file next to todos.json
Defaults I picked: ISO dates, a header row
Out of scope: importing CSV back
```

## It's working if

- Clear requests get no questions.
- It never asks something your code or the conversation already answers.
- A round of questions can be answered in one line.
- It ends with a brief and continues, instead of stopping to wait.

## Where it fits

Plan mode checks what your agent will do. Zero Guess checks what it assumed. Use it between "I roughly know what I want" and building it; if you don't yet know what you want, start with an open-ended conversation instead.

## Install

**Claude Code:**

```
/plugin marketplace add rekodev/skills
/plugin install zeroguess@rekodev
```

**Any agent, with the [skills CLI](https://skills.sh):**

```bash
npx skills add rekodev/skills
```

Or copy `skills/clarify` into your agent's skills folder yourself.

## Data

Zero Guess is instructions only. It sends nothing anywhere and stores nothing.

## License

MIT
