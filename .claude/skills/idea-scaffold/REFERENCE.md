# Idea Scaffold — Référence des structures par type

## Projet code

```
nom-projet/
├── src/            # code source
├── tests/          # tests unitaires et intégration
├── docs/           # documentation technique
├── scripts/        # scripts build / déploiement
├── .gitignore
└── README.md
```

Variantes :
- Bibliothèque → ajouter `examples/`
- API → ajouter `routes/`, `middleware/`, `schemas/`
- Frontend → `src/components/`, `src/pages/`, `public/`
- Monorepo → `packages/<nom>/` par sous-projet

## Idée produit / startup

```
nom-produit/
├── prd/            # product requirements documents
├── architecture/   # décisions techniques (ADR)
├── roadmap/        # phases et milestones
├── research/       # user research, benchmarks
├── designs/        # wireframes, maquettes
└── CONTEXT.md      # contexte partagé pour les agents
```

## Système de productivité

```
nom-systeme/
├── workflows/      # processus step-by-step
├── templates/      # modèles réutilisables
├── contexts/       # contextes de travail (deep work, etc.)
├── checklists/     # listes de vérification
└── README.md       # vue d'ensemble du système
```

## Skill Claude

```
nom-skill/
├── SKILL.md        # instructions principales (obligatoire)
├── REFERENCE.md    # documentation détaillée
├── EXAMPLES.md     # exemples d'input/output
└── scripts/        # utilitaires exécutables
```

Placer dans `.claude/skills/` (projet) ou `~/.claude/skills/` (personnel).

## Base de connaissance

```
nom-base/
├── topics/         # articles par sujet
├── resources/      # liens, PDFs, références externes
├── index.md        # table des matières principale
└── glossary.md     # définitions des termes clés
```

## Projet général

```
nom-projet/
├── phases/         # découpage temporel du projet
├── notes/          # réflexions, brainstorm
├── tasks/          # tâches et suivi
├── resources/      # matériaux de référence
└── README.md       # objectif et statut
```

---

## Règles d'hybridation

Quand un projet touche plusieurs types, combiner les dossiers les plus pertinents :

- Produit + Code → `prd/` + `src/` + `architecture/`
- Productivité + Skills Claude → `workflows/` + `.claude/skills/`
- Startup + Knowledge → `research/` + `prd/` + `topics/`

Garder max 6–8 dossiers racine pour un projet hybride.
