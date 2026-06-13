---
name: to-issues
description: Break a plan into independently-grabbable GitHub issues using vertical slices (tracer bullets). Use when the user wants to convert a plan, PRD, or conversation into tracked issues.
---

# To Issues

Break a plan into independently-grabbable issues using vertical slices (tracer bullets).

The issue tracker and triage label vocabulary should have been provided to you — run `/setup-matt-pocock-skills` if not.

## Process

### 1. Gather context

Work from whatever is already in the conversation context. If the user passes an issue reference, fetch it from the issue tracker and read its full body and comments.

### 2. Explore the codebase (optional)

If you haven't already explored the codebase, do so to understand the current state. Issue titles and descriptions should use the project's domain glossary vocabulary.

### 3. Draft vertical slices

Break the plan into **tracer bullet** issues. Each issue is a thin vertical slice that cuts through ALL integration layers end-to-end, NOT a horizontal slice of one layer.

Slices may be 'HITL' (require human interaction) or 'AFK' (can be implemented without human interaction). Prefer AFK over HITL where possible.

Rules:
- Each slice delivers a narrow but COMPLETE path through every layer (schema, API, UI, tests)
- A completed slice is demoable or verifiable on its own
- Prefer many thin slices over few thick ones

### 4. Quiz the user

Present the proposed breakdown as a numbered list. For each slice, show:

- **Title**: short descriptive name
- **Type**: HITL / AFK
- **Blocked by**: which other slices must complete first
- **User stories covered**: which user stories this addresses

Ask: Does the granularity feel right? Are dependency relationships correct? Should any slices be merged or split?

Iterate until the user approves the breakdown.

### 5. Publish the issues

For each approved slice, publish a new issue. Use this template:

```markdown
## Parent

Reference to the parent issue (if applicable).

## What to build

Concise description of this vertical slice. Describe end-to-end behavior, not layer-by-layer implementation.

## Acceptance criteria

- [ ] Criterion 1
- [ ] Criterion 2

## Blocked by

- Reference to blocking ticket, or "None - can start immediately"
```

Publish issues in dependency order (blockers first). Do NOT close or modify any parent issue.
