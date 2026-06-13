---
name: idea-scaffold
description: Transforme n'importe quelle idée en arborescence de fichiers intelligente. Utiliser quand l'utilisateur veut démarrer un projet, structurer une idée, ou organiser un nouveau travail. Fonctionne pour du code, des produits, des systèmes de productivité, des skills Claude, et tout autre domaine.
when_to_use: Déclencher sur "j'ai une idée", "je veux créer", "comment structurer", "nouveau projet", "commence un", "démarre un".
---

# Idea Scaffold

## Démarrage rapide

1. Écouter l'idée librement — ne pas interrompre avec un formulaire
2. Poser 2 questions ciblées maximum pour combler les lacunes
3. Classer le type de projet et annoncer le raisonnement
4. Proposer l'arborescence en arbre visuel
5. Créer les fichiers après confirmation

## Workflow

**Phase 1 — Comprendre**

- [ ] Laisser l'utilisateur décrire librement (1 à 5 phrases)
- [ ] Identifier : objectif, destinataire, livrable principal
- [ ] Poser **au maximum 2 questions** pour ce qui est vraiment flou
- [ ] Ne pas demander le type de projet — l'inférer du contexte

**Phase 2 — Classifier et proposer**

Voir [REFERENCE.md](REFERENCE.md) pour les structures détaillées par type.

Classer dans l'un de ces types (ou hybride) :

| Type | Signaux clés |
|------|-------------|
| Projet code | langage cité, "app", "lib", "API", "bug" |
| Idée produit / startup | "utilisateurs", "MVP", "features", "marché" |
| Système de productivité | "workflow", "processus", "routine", "template" |
| Skill Claude | "skill", "commande", "/slash", "agent" |
| Base de connaissance | "notes", "recherche", "référence", "docs" |
| Projet général | tout le reste |

- [ ] Annoncer le type avec une justification en une ligne
- [ ] Afficher l'arborescence proposée en bloc de texte arbre
- [ ] Expliquer le rôle de chaque dossier racine en une ligne

**Phase 3 — Confirmer**

- [ ] Demander "Modifications ?" (court et ouvert)
- [ ] Intégrer les changements demandés
- [ ] Procéder à la création une fois confirmé

**Phase 4 — Créer**

- [ ] Créer tous les dossiers et fichiers stubs
- [ ] Chaque fichier stub : 1 ligne de commentaire décrivant son rôle
- [ ] Ne pas créer plus de contenu que demandé
- [ ] Committer avec : `scaffold: initial structure for <nom>`

## Règles de structure

- Plat par défaut : max 3 niveaux de profondeur
- Noms en kebab-case, anglais ou français selon l'idée
- Pour les hybrides : combiner les structures pertinentes
- Objectif : débloquer l'utilisateur, pas créer l'architecture parfaite
