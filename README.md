# rekodev skills

[![skills.sh](https://skills.sh/b/rekodev/skills)](https://skills.sh/rekodev/skills)

Agent skills I use and publish. Each one lives in its own folder under `plugins/`, works in any agent that reads skills, and ships as a Claude plugin under its own name.

| Plugin | What it does |
| --- | --- |
| [Zero Guess](plugins/zeroguess) | Stops your agent from guessing. When a request is ambiguous, it asks multiple-choice questions round after round until nothing is left to guess. Clear requests go straight through. |
| [Zero Gap](plugins/zerogap) | Stops you guessing whether you know it. Quizzes you on a topic in rounds, says plainly what was wrong and why, and stops when you've got it. |

Zero Guess before you build. Zero Gap before you present.

## Install

**Claude Code:**

```
/plugin marketplace add rekodev/skills
/plugin install zeroguess@rekodev
/plugin install zerogap@rekodev
```

**Any agent, with the [skills CLI](https://skills.sh):**

```bash
npx skills add rekodev/skills
```

## License

MIT
