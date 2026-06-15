---
name: project-briefing
description: Génère un document de synthèse du projet à partir des fichiers clés (CONTEXT.md, UBIQUITOUS_LANGUAGE.md, PRDs dans .scratch/, CLAUDE.md). Utiliser quand on veut briefer un nouveau collaborateur, partager l'avancement du projet, ou onboarder un membre de l'équipe. Déclencher sur "résumé du projet", "briefing pour X", "envoyer à X", "onboarder", "handoff fichiers", "qu'est-ce qu'on a fait".
---

# Project Briefing

Génère un document de synthèse lisible par un nouveau collaborateur, à partir des fichiers engagés dans le repo.

## Process

### 1. Lire les fichiers source

Lire dans cet ordre :
- `CONTEXT.md` — vision, décisions prises, état actuel
- `UBIQUITOUS_LANGUAGE.md` — vocabulaire canonique du domaine
- `CLAUDE.md` — skills disponibles et configuration
- Tous les `PRD.md` trouvés dans `.scratch/**/`
- Tous les fichiers d'issues dans `.scratch/**/issues/`

Si un fichier n'existe pas, passer silencieusement.

### 2. Synthétiser

Produire un briefing structuré avec :

```markdown
# Briefing projet — [nom du projet] — [date]

## En une phrase

[Ce qu'on construit, en une phrase.]

## Contexte et vision

[Résumé du CONTEXT.md : problème résolu, décisions prises, état actuel.]

## Vocabulaire clé

[Les 5–10 termes les plus importants de UBIQUITOUS_LANGUAGE.md, format tableau.]

## Plan en cours

[Résumé du ou des PRD actifs : objectif, user stories clés, périmètre.]

## Issues

[Liste des issues existantes avec leur statut (Status: du fichier).]

## Skills disponibles

[Liste des skills installées depuis CLAUDE.md.]

## Ce qui reste à décider

[Extraire la section "Ce qui reste à clarifier" du CONTEXT.md si elle existe.]
```

### 3. Sauvegarder et afficher

- Sauvegarder dans `.scratch/briefing-YYYY-MM-DD.md` (date du jour)
- Afficher un résumé condensé inline dans la conversation
- Indiquer le chemin du fichier généré
