#!/usr/bin/env bash
set -euo pipefail
mkdir -p src
cat > package.json <<'EOF'
{
  "name": "text-utils",
  "type": "module",
  "packageManager": "pnpm@9.12.0",
  "scripts": { "test": "vitest run" },
  "devDependencies": { "vitest": "3.2.4" }
}
EOF
cat > src/slugify.js <<'EOF'
export function slugify(text) {
  return text
    .toLowerCase()
    .trim()
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/^-|-$/g, '');
}
EOF
cat > src/truncate.js <<'EOF'
export function truncate(text, length) {
  return text.length > length ? `${text.slice(0, length - 1)}…` : text;
}
EOF
cat > src/truncate.test.js <<'EOF'
import { describe, expect, it } from 'vitest';
import { truncate } from './truncate.js';

describe('truncate', () => {
  it('keeps short text as is', () => {
    expect(truncate('hi', 5)).toBe('hi');
  });
});
EOF
