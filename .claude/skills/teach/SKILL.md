---
name: teach
description: Teach the user a new skill or concept, within this workspace.
disable-model-invocation: true
argument-hint: "What would you like to learn about?"
---

The user has asked you to teach them something. This is a stateful request — they intend to learn the topic over multiple sessions.

## Teaching Workspace

Treat the current directory as a teaching workspace. State is captured in:

- `MISSION.md`: Why the user is interested in the topic. Ground all teaching here.
- `./reference/*.html`: Compressed learnings — cheat sheets, reference algorithms, glossaries. Designed for quick reference and printing.
- `RESOURCES.md`: High-quality sources to ground teaching in contextual knowledge.
- `./learning-records/*.md`: What the user has learned. Like ADRs — capture non-obvious lessons and key insights. Titled `0001-<dash-case-name>.md`.
- `./lessons/*.html`: Self-contained HTML files, one per lesson. The primary unit of teaching.
- `NOTES.md`: User preferences and working notes.

## Philosophy

The user needs three things:
- **Knowledge** from high-quality, high-trust resources (never trust parametric knowledge alone)
- **Skills** acquired through interactive lessons with feedback loops
- **Wisdom** from interacting with real-world communities

### Fluency vs Storage Strength

- **Fluency strength**: in-the-moment retrieval
- **Storage strength**: long-term retention (the real goal)

Design lessons for storage strength via desirable difficulty: retrieval practice, spacing, interleaving.

## Lessons

Each lesson is one self-contained HTML file, saved to `./lessons/` titled `0001-<dash-case-name>.html`.

A lesson should be:
- **Beautiful** — clean typography (think Tufte)
- **Short** — completable quickly, one tangible win
- **Tied to the mission** — grounded in the user's real goals
- **Cited** — every claim has a link to a primary source
- **Interactive** — includes a feedback loop (quiz, exercise)

Open the lesson file for the user by running a CLI command after writing.

## The Mission

Every lesson must be tied to the mission. If `MISSION.md` is not populated, your first job is to question the user on why they want to learn this. Don't proceed until the mission is clear.

## Zone Of Proximal Development

Each lesson, challenge the user "just enough". Determine ZPD by:
- Reading their `learning-records`
- Figuring out what fits their current level and mission
