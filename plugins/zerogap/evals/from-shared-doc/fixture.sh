#!/usr/bin/env bash
set -euo pipefail
cat > proposal.md <<'EOF'
# Proposal: risk-based merge request approvals

## Problem

Every merge request needs two approvals. Last quarter the median merge request waited 19 hours for its second approval, and 72% of all review hours went to changes that only touched docs, tests or UI copy.

## Proposal

- Merge requests that only touch `docs/`, `**/*.test.ts` or `locales/` need one approval.
- Merge requests that touch `auth/`, `billing/` or `migrations/` keep two approvals, one of them from a code owner.
- Everything else needs one approval plus a passing CI run.
- The path lists live in `.gitlab/approval-rules.yml` and are reviewed every quarter, so a new risky area does not slip into the one-approval group.

## Expected outcome

Median wait for low-risk merge requests drops from 19 hours to under 4. Review hours on auth, billing and migrations stay the same.

## Risks

A risky change in a path nobody added to the list gets one approval. The quarterly review and code-owner rules limit that window.
EOF
