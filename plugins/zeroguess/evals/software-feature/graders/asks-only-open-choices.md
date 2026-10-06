---
type: llm
focus: trace
---

PASS if Claude reads the project's files before asking anything, and then asks the user about at least one choice the code cannot answer, such as the export format, where the export is written, or which todos it includes, with options to pick from and one marked as recommended.

FAIL if Claude asks something the files already answer (the language, the module system, the test framework, where todos are stored), or if it writes the export feature without asking about any of the open choices.
