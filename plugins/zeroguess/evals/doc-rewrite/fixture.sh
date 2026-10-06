#!/usr/bin/env bash
set -euo pipefail
mkdir -p docs
cat > docs/rfc.md <<'EOF'
# RFC: Extract date and currency formatting into a shared package

## Context

Formatting logic currently lives inside the web app as locale-keyed formatter factories, memoized Intl instances and a derived resolution layer for fallback locales. The mobile app and the email renderer re-implement subsets of this logic, which produces drift in rounding semantics and duplicated locale-resolution pipelines.

## Proposal

Extract the formatter factories, the locale-resolution layer and the currency metadata into a framework-agnostic package with zero runtime dependency on React. The package exposes a headless API: `createFormatter`, `resolveLocale` and `formatMoney`, plus typed adapters for each consumer. Rendering stays in each consumer.

## Migration

1. Publish the package from a new repository with semantic-release and provenance.
2. Replace the in-app formatters behind a compatibility shim that re-exports the package API.
3. Migrate consumers one at a time, behind a feature flag, with snapshot parity tests between old and new output.
4. Remove the shim once every consumer reads from the package.

## Risks

Version skew between consumers can reintroduce drift, so the package pins a single minor line per quarter. Bundle size must not regress by more than 2 KB gzipped in the web app.

## Open questions

- Ownership: platform team or the web team.
- Whether the email renderer consumes the package directly or through generated JSON fixtures.
EOF
