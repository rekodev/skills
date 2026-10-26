---
description: An answer shows a gap in the basics under the material. Cover the basic in the grade and keep the next question on the material, not on general basics.
max_turns: 5
allowed_tools: [Skill, AskUserQuestion]
---

Keep quizzing me on the deploy we just did. Recap of what was built: the app runs on a VPS behind Caddy, Caddy listens only on the WireGuard interface (10.8.0.1), the firewall drops ports 80 and 443 on the public interface, and only devices with a WireGuard peer config can reach dash.example.com, which resolves to 10.8.0.1.

Question 2: who can reach the dashboard

Why can't someone on the open internet load dash.example.com?

My answer: Because it's HTTPS, so they can't read the traffic.
