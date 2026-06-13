---
name: setup-matt-pocock-skills
description: Sets up an `## Agent skills` block in AGENTS.md/CLAUDE.md and `docs/agents/` so the engineering skills know this repo's issue tracker (GitHub or local markdown), triage label vocabulary, and domain doc layout. Run before first use of `to-issues`, `to-prd`, `triage`, `diagnose`, `tdd`, `improve-codebase-architecture`, or `zoom-out` — or if those skills appear to be missing context about the issue tracker, triage labels, or domain docs.
disable-model-invocation: true
---

# Setup Matt Pocock's Skills

Scaffold the per-repo configuration that the engineering skills assume:

- **Issue tracker** — where issues live (GitHub by default; local markdown also supported)
- **Triage labels** — the strings used for the five canonical triage roles
- **Domain docs** — where `CONTEXT.md` and ADRs live

This is a prompt-driven skill, not a deterministic script. Explore, present what you found, confirm with the user, then write.

## Process

### 1. Explore

Read the current repo state:
- `git remote -v` — is this a GitHub repo?
- `AGENTS.md` and `CLAUDE.md` at root — does an `## Agent skills` section exist?
- `CONTEXT.md` and `CONTEXT-MAP.md` at root
- `docs/adr/` directories
- `docs/agents/` — does prior output already exist?

### 2. Present findings and ask

Walk the user through three decisions **one at a time**:

**Section A — Issue tracker.** Default: GitHub if remote points there. Options: GitHub (gh CLI), GitLab (glab CLI), Local markdown (.scratch/), Other (freeform description).

**Section B — Triage label vocabulary.** The five canonical roles:
- `needs-triage`, `needs-info`, `ready-for-agent`, `ready-for-human`, `wontfix`

Ask if the user wants to override any label strings.

**Section C — Domain docs.** Single-context (one CONTEXT.md + docs/adr/ at root) or Multi-context (CONTEXT-MAP.md pointing to per-context files).

### 3. Confirm and edit

Show the user a draft of the `## Agent skills` block and `docs/agents/` files before writing.

### 4. Write

Edit CLAUDE.md if it exists, else AGENTS.md, else ask the user which to create.

Add or update the `## Agent skills` block:

```markdown
## Agent skills

### Issue tracker

[summary]. See `docs/agents/issue-tracker.md`.

### Triage labels

[summary]. See `docs/agents/triage-labels.md`.

### Domain docs

[layout]. See `docs/agents/domain.md`.
```

Then write the three docs files in `docs/agents/`.
