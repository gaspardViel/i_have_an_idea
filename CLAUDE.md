# i_have_an_idea

Dépôt personnel d'idées et de projets. Chaque projet vit dans son propre répertoire.

## Skills disponibles

Ce projet utilise le framework de skills (Matt Pocock / Agent Skills open standard).

| Commande | Rôle |
|----------|------|
| `/idea-scaffold` | Transforme une idée en arborescence de fichiers intelligente |
| `/write-a-skill` | Crée un nouveau skill avec la bonne structure |

Invoquer avec `/nom-du-skill`, ou Claude les charge automatiquement si pertinent.

## Conventions

- Chaque idée/projet dans son propre dossier à la racine
- Structures plates : max 3 niveaux de profondeur
- Les skills du projet dans `.claude/skills/`

## Agent skills

### Issue tracker

GitHub (`gaspardViel/i_have_an_idea`) via `gh` CLI. Voir `docs/agents/issue-tracker.md`.

### Triage labels

Vocabulaire canonique à cinq labels. Voir `docs/agents/triage-labels.md`.

### Domain docs

Single-context : `CONTEXT.md` à la racine + ADRs dans `docs/adr/`. Voir `docs/agents/domain.md`.
