#!/usr/bin/env bash
set -euo pipefail
echo "=== HEALTH CHECK START ==="
echo "Repo root:"
pwd
echo "Listing files:"
ls -R .
echo "Bash version:"
bash --version
mkdir -p results
cat <<'EOF' > results/health_check.json
{
  "status": "ok"
}
EOF
echo "=== HEALTH CHECK COMPLETE ==="
