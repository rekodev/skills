---
type: llm
focus: last_message
---

PASS if the reply grades the answer as wrong or not quite, says in a line or two that HTTPS encrypts traffic but does not decide who can connect, names the real reason from the recap (Caddy listens only on the WireGuard address, the public ports are dropped, the name resolves to a private address), and then asks one next question about this setup, such as what would change if Caddy listened on all interfaces.

FAIL if the next question is a general one about how HTTPS, TLS or VPNs work that is not tied to this deploy, if the reply turns into a long lesson on the basics, or if it marks the answer as right.
