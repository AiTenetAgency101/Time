#!/usr/bin/env bash
set -e
echo "=== HEALTH CHECK START ==="
echo "Repo root:"
pwd
echo "Listing files:"
ls -R .
echo "Bash version:"
bash --version

mkdir -p results
cat > results/health_check.json <<EOF
{
  "status": "ok",
  "timestamp": "$(date -u +"%Y-%m-%dT%H:%M:%SZ")",
  "bash_version": "$(bash --version | head -1)"
}
EOF

echo "Health check results written to results/health_check.json"
echo "=== HEALTH CHECK COMPLETE ==="
