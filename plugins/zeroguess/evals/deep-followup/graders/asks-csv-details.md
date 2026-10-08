---
type: llm
focus: trace
---

PASS if Claude reads the project's files and then asks the user about at least two details of the CSV export that the code cannot answer, such as which columns it includes, the header row, the date format, which todos it exports, where the file is written, the command name, or what happens when the file already exists, with options to pick from and one marked as recommended.

FAIL if Claude asks which export format to use, asks something the files already answer, or writes the export without asking about any such detail.
