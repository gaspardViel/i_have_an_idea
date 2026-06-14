# CONTEXT

Dépôt personnel de Gaspard — espace de travail structuré autour d'Obsidian.

## Objectif

Centraliser et organiser : notes, todos, documents, et petits projets dans une arborescence de fichiers cohérente, navigable via Obsidian.

## Concepts clés

- **Note** — capture rapide d'une idée ou observation, format libre. Vit dans `notes/`.
- **Todo** — tâche actionnable, trackée dans `TODO.md` à la racine du dépôt.
- **Document** — contenu structuré avec un objectif précis (plan, compte-rendu, référence). Vit dans `documents/`.
- **Projet** — ensemble de fichiers autour d'un sujet ou d'un objectif concret. Vit dans `projets/<nom-du-projet>/`. Une fois terminé, déplacé dans `projets/_archive/`.
- **Skill** — automatisation Claude Code dans `.claude/skills/`, invocable par `/nom-du-skill`.

## Invariants

- Chaque projet dans son propre dossier sous `projets/`.
- Max 3 niveaux de profondeur pour rester navigable dans Obsidian.
- Les skills dans `.claude/skills/` — jamais dans les dossiers de contenu.

## Layout actuel

```
/
├── CLAUDE.md          # instructions pour les agents
├── CONTEXT.md         # ce fichier
├── TODO.md            # liste de tâches centralisée
├── notes/             # captures rapides, format libre
├── documents/         # contenu structuré (plans, comptes-rendus, références)
├── projets/           # un sous-dossier par projet
├── docs/
│   ├── agents/        # config des skills engineering
│   └── adr/           # décisions d'architecture
└── .claude/
    ├── skills/        # skills Claude Code
    └── hooks/         # hooks de session
```
