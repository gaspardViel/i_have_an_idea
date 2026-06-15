# site-Vipassana-France

Site web pour Vipassana France.

## Skills disponibles

Skills installées via `npx skills@latest add mattpocock/skills` (29 skills).

| Commande | Rôle |
|----------|------|
| `/setup-matt-pocock-skills` | **À exécuter en premier** — configure issue tracker, labels, docs de domaine |
| `/grill-with-docs` | Interview approfondie avant de coder, ancrée dans CONTEXT.md |
| `/tdd` | TDD avec cycles red-green-refactor verticaux |
| `/diagnose` | Boucle de diagnostic structurée en 6 phases |
| `/to-issues` | Décompose un plan en issues GitHub indépendantes |
| `/to-prd` | Synthétise le contexte en PRD |
| `/zoom-out` | Recul sur l'architecture globale |
| `/handoff` | Passation de contexte entre sessions |
| `/caveman` | Mode ultra-compressé (~75% tokens) |

## Agent skills

### Issue tracker

Issues locales en markdown sous `.scratch/<feature>/`. Voir `docs/agents/issue-tracker.md`.

### Triage labels

Labels par défaut : `needs-triage`, `needs-info`, `ready-for-agent`, `ready-for-human`, `wontfix`. Voir `docs/agents/triage-labels.md`.

### Domain docs

Contexte unique — `CONTEXT.md` à la racine + `docs/adr/`. Voir `docs/agents/domain.md`.
