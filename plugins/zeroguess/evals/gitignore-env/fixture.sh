#!/usr/bin/env bash
set -euo pipefail
cat > .gitignore <<'EOF'
node_modules/
dist/
.DS_Store
EOF
cat > .env.example <<'EOF'
API_URL=http://localhost:3000
EOF
