---
type: llm
focus: trace
---

PASS if Claude grades the answer as right, with a progress line for part 3 of 4, and then asks exactly one next question about the next part, `immutable`.

FAIL if Claude asks another question about `s-maxage` or `max-age`, goes back to an earlier part, asks several questions at once, or wraps up the quiz.
