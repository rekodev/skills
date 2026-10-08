# Zero Guess

**Stops your agent from guessing.** When a request is ambiguous, it asks multiple-choice questions round after round, digging into each answer until nothing is left to guess. Clear requests go straight through.

An AI agent's worst habit isn't being wrong. It's guessing quietly, then building the whole thing on the guess. You find out three files or two pages later, when the export is in the wrong format or the rewrite cut the part your team needed.

Zero Guess is one skill that breaks the habit. Before the agent starts, it sorts every guess the request forces:

```
          every guess the agent would make
                       │
          ┌────────────┴────────────┐
          ▼                         ▼
        FACT                      CHOICE
     look it up            ask, with a pick, then
  (code, files, chat)    ask what the answer opens
                          until nothing is left
```

Facts it looks up, so it never asks what your code already says. Every other choice it asks about, however small, in multiple-choice rounds with a recommended pick. Each answer opens the next round: pick CSV and it asks about columns and the header row, pick a file and it asks where it goes and what happens to an old one. It stops when no choice is left open, shows you the brief, and checks once more that nothing is missing. A clear request gets no questions at all.

## Does it work?

Each case below ran three times with Zero Guess and three times without it, graded the same way, using Claude Code's plugin evals.

| Request | With | Without | Difference |
| --- | --- | --- | --- |
| "Add an export feature to this todo CLI" | 1.00 | 0.00 | Without it, the agent built the export on guesses every time. With it, the agent read the repo, then asked about format and scope. |
| "Add a CSV export to this todo CLI" | 1.00 | 0.00 | The format is given, so it asks what CSV opens: the columns, the date format, where the file goes. Without it, the agent picked those silently every time. |
| "Reword my RFC, my PM said it's too technical" | 1.00 | 0.00 | Without it, the agent rewrote the RFC on guesses every time. With it, the agent asked who reads it now and which details must stay. |
| "Schedule a Slack DM to my PM for tomorrow at 9am" | 1.00 | 0.00 | It asks who the PM is before scheduling anything. Without it, the agent never asked first. |
| "Help me plan a trip next month" | 1.00 | 0.17 | It asks where, when and budget, with a recommended pick, instead of planning a trip you never described. |
| "Add tests for the slugify helper" | 1.00 | 1.00 | It looks up the test setup instead of asking about it. |
| "Rename `tmp` to `total` in src/sum.js" | 1.00 | 1.00 | No questions. Clear requests stay fast. |
| "Add `.env` to the .gitignore" | 1.00 | 1.00 | No questions, even with a `.env.example` in the folder to tempt one. Small requests stay fast. |

The suite lives in [`evals/`](evals) and runs with `claude plugin eval . --scaffold` from this folder.

## When it runs

Your agent loads it on its own when a request leaves something open, even one detail such as who a message goes to. You can also call it directly, as `/zeroguess:clarify` in Claude Code, or ask your agent to clarify before starting.

It works in any agent that reads skills, including Claude (chat, Cowork and Claude Code). Where the app offers clickable questions, the questions use them; elsewhere they are numbered, so you can answer a whole round in one line, such as "1b, 2a".

## Examples

**A software feature.** "Add an export feature to my todo CLI." The agent reads the project first, so it never asks which language or test setup you use. It asks what the code can't tell it: the format, where the export goes, and which todos it includes. Then it digs into those answers: the columns, the date format, the command name, what happens when the file already exists.

**A document rewrite.** "Reword my RFC, my PM says it's too technical." Before touching a word, the agent asks who reads it now, how far to cut, and which details have to stay, then which sections those answers put at risk.

**A trip.** "Help me plan a trip next month." No code involved: the agent asks where, how long and roughly what budget, then the pace, the stay and the must-sees that those answers open, then plans it.

When nothing is left open, the agent shows a short brief and asks once more whether anything is missing:

```
Decisions: CSV export of all todos to todos.csv next to todos.json, with a header row,
           ISO dates, `todo export` command, overwrites an existing file
Out of scope: importing CSV back
```

## It's working if

- Clear requests get no questions.
- It never asks something your code or the conversation already answers.
- A round of questions can be answered in one line.
- It keeps asking until nothing is open, then confirms the brief before starting.

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
