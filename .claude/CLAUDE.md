# rekodev skills

A public repo of agent skills. Each plugin lives in `plugins/<name>/` with its own `.claude-plugin/plugin.json`, README, LICENSE and evals, and is listed in the root `.claude-plugin/marketplace.json`. Only public, general-purpose skills go here; nothing work-related or private.

## Adding a plugin

1. Create `plugins/<name>/` with `.claude-plugin/plugin.json`, `skills/<skill>/SKILL.md`, `README.md` (40+ words outside code blocks, three example prompts), `LICENSE` and `CHANGELOG.md`.
2. Add it to `.claude-plugin/marketplace.json` and to the table in the root `README.md`.

## Rules for every plugin

- Write READMEs and skill text agent-neutral ("your agent", "the user"), not Claude-specific, except where a Claude tool or command is named on purpose.
- Never name other authors or their skills in any file.
- Keep skill text free of pressure language (caps, MUST, NEVER) and step-by-step scripts.
- Raise `version` in the plugin's `plugin.json` and add a `CHANGELOG.md` entry on every release.

## Zero Guess (`plugins/zeroguess`)

One skill, `clarify`. Every guess is a **fact** (look it up) or a **choice** (ask, however small, then ask what the answer opens); use these words in the skill, README and evals. **Defaults I picked** only holds choices the user handed back.

- The skill is model-invoked, so its `description` is the trigger. A request it should catch but doesn't is a `description` fix plus an eval case.
- Asking nothing when no choice is open is what keeps it from over-triggering; never weaken that line.
- Software-specific guidance lives in `skills/clarify/DEVELOPMENT.md`, not in `SKILL.md`.

## Checks

- Marketplace: `claude plugin validate .`
- One plugin: `claude plugin validate plugins/<name>`
- Token cost: `claude --plugin-dir plugins/<name> plugin details <name>`
- Behavior: `cd plugins/<name> && claude plugin eval . --scaffold` (costs money)

## Submitting to Anthropic's directory

1. claude.ai/directory/manage → Submit new → Plugin bundle → repository `rekodev/skills`, plugin path `plugins/<name>` → Validate.
2. Data handling: reads no personal data, stores nothing, sends nothing.
3. Submit for review, then Publish once the version passes.
