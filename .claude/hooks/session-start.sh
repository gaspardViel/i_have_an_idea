#!/bin/bash
set -euo pipefail

# Only run in remote (web) sessions
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# Confirm repo is clean and skills are in place
SKILLS_DIR="${CLAUDE_PROJECT_DIR:-$(pwd)}/.claude/skills"
SKILL_COUNT=$(ls "$SKILLS_DIR" 2>/dev/null | wc -l | tr -d ' ')

echo "Session ready. $SKILL_COUNT skills loaded from .claude/skills/."
