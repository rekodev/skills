# Software tasks

Read before asking: the code involved, its existing patterns and conventions, similar features already in the repo, and any linked ticket, issue or design. A question the code answers is a fact, not a decision.

Whatever the repo already fixes (naming, file placement, style, libraries, test setup) is a default. Follow it, and mention it only when it isn't obvious.

Reversibility decides the rest. A choice that is cheap to change later, such as an internal name or a private helper's shape, is a default. A choice that is expensive to change later, such as a public API, a data format, a schema or migration, or behavior users see, is load-bearing.
