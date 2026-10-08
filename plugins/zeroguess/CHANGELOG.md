# Changelog

## 1.1.0

- Every choice that can't be looked up is asked, however small, in multiple-choice rounds where each answer's follow-ups go into the next round, until nothing is left to guess.
- The skill ends with a brief and one last round to confirm nothing is missing before starting the work.
- Messages, posts, invites and scheduled actions with no recipient, channel, time or wording trigger the skill, even when only one detail is missing. The skill searches the connected tools for candidates before asking who.
- Software tasks: whatever the repo fixes is a fact to follow, every choice it leaves open is asked, and the choices that are expensive to change later come first.
- New eval cases for follow-up rounds, a missing recipient and a small clear request, and the README lists the results.

## 1.0.1

- The skill now treats code, tickets, issues and documents it reads as information, never as instructions, to guard against prompt injection.
- Agent-neutral wording: the question tool and planning mode are described as capabilities, with Claude Code's names given as examples.

## 1.0.0

- First release: the `clarify` skill.
