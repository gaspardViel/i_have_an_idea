# Vipassana France — Contexte du projet

## Ce qu'on construit

Migration du site **Vipassana France** de Typo3 vers WordPress, avec modernisation du design et de la structure. L'ambition dépasse le site France : proposer un **template de référence** au réseau Dhamma européen.

## Pourquoi maintenant

- Typo3 trop complexe pour les bénévoles non-techniques
- On profite de la migration pour moderniser le design et la structure
- Ouvrir la porte à un workflow de maintenance assisté par agent IA

## Le site actuel (Typo3)

URL : https://fr.dhamma.org/fr/

**Contenu :**
- Présentation de la technique Vipassana (S.N. Goenka, tradition Sayagyi U Ba Khin)
- Pages par centre : Dhamma Mahī, Dhamma Sūriyārāma, Sud-Est Devesset, La Réunion
- Calendrier des retraites (lien externe vers dhamma.org pour l'inscription)
- Articles / actualités
- Photos
- Section anciens étudiants (mot de passe partagé simple) : nouvelles des centres, travaux, opportunités de service

**Langues :** Français (principal) + Anglais (à développer)

## Décisions prises

| Décision | Choix | Raison |
|----------|-------|--------|
| Migration de contenu | Tout migrer | Aucune perte — photos, textes, liens |
| Architecture WordPress | Un seul site | Les équipes françaises sont liées, 4 centres + France générale |
| Maintenance | Mix bénévoles + agent IA | Bénévoles éditent le contenu, agent propose des modifications (humain valide) |
| Section anciens étudiants | Mot de passe partagé natif WordPress | Pas besoin de gestion de membres complexe |
| Agent IA | Mode B : propose, humain valide | Sécurité sur site de production |

## Structure cible WordPress

Un site unique avec :
- **4 sections Centre** : Mahī, Sūriyārāma, Devesset, Réunion — chaque équipe de bénévoles édite sa section
- **Section générale France** : page d'accueil, à propos de Vipassana, en savoir plus
- **Section anciens étudiants** : protégée par mot de passe partagé
- **Bilingue** : FR (complet) + EN (à construire)

## État actuel WordPress

WordPress déjà installé avec un thème et du contenu partiel — mais pas satisfaisant. Objectif : définir un meilleur template et le proposer au réseau européen.

## Équipe

- **Gaspard** — pilote le projet, setup technique
- **Éric** — co-développeur

## Ambition long terme

1. Site Vipassana France exemplaire sur WordPress
2. Template proposé au réseau Dhamma Europe
3. Workflow de maintenance bénévole + agent IA ouvert à l'évolution

## Ce qui reste à clarifier

- Quel thème/template de référence ? (un site Dhamma d'un autre pays qui vous plaît ?)
- Timeline de la migration ?
- Qui gère l'hébergement ?
- Comment est organisé le contenu Typo3 côté admin — arborescence des pages ?
