#!/usr/bin/env bash
set -euo pipefail
mkdir -p src
cat > src/sum.js <<'EOF'
export function sum(values) {
  let tmp = 0;
  for (const value of values) tmp += value;
  return tmp;
}
EOF
