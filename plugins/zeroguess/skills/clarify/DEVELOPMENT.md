# Software tasks

Read before asking: the code involved, its existing patterns and conventions, similar features already in the repo, and any linked ticket, issue or design. A question the code answers is a fact, not a choice.

Whatever the repo already fixes (naming, file placement, style, libraries, test setup) is a fact. Follow it, and mention it only when it isn't obvious.

Every choice the repo leaves open gets asked, cheap or not: internal names, how the code splits across files and the shape of private helpers as much as the public API. Reversibility decides the order. Choices that are expensive to change later, such as a public API, a data format, a schema or migration, or behavior users see, go in the first rounds, because their answers shape the internal ones.
