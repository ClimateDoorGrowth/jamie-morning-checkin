#!/bin/bash
# Session startup hook for Jamie's Morning Check-in
# Runs when a new Claude Code session opens in this repo.
# The scheduled trigger on code.claude.com sends `/jamie-morning-checkin`
# as the initial prompt, which invokes the skill automatically.

set -euo pipefail

# Only run in remote (web) sessions
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

echo "Jamie Morning Check-in session started at $(date)" >&2
