---
name: handoff
description: Compact the current conversation into a handoff document for another agent to pick up. Use when ending a session, handing off to another agent, or wanting to continue work in a new session.
argument-hint: "[next session focus]"
---

Compact the current conversation into a handoff document.

## Rules

- Save to the OS temp directory (not the workspace): `$TMPDIR` or `/tmp`
- Filename: `handoff-<timestamp>.md`
- Reference existing artifacts (PRDs, plans, ADRs, issues, commits, diffs) by path/URL — don't duplicate content
- Include a "Suggested skills" section recommending which skills the next agent should load
- Redact sensitive data: API keys, passwords, PII
- Tailor to `$ARGUMENTS` if provided — that describes the next session's focus

## Template

```markdown
# Handoff — <date>

## Context

[1-3 sentences: what was being worked on and why]

## Current state

[What's done, what's in progress, what's blocked]

## Key artifacts

- [Link or path to PRD / issue / branch / diff]

## Open decisions

- [Decision still pending]

## Suggested skills

- `/skill-name` — why it's relevant

## Next steps

1. [First thing the next agent should do]
```

Return the complete file path after writing.
