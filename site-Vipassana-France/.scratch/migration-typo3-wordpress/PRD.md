Status: ready-for-agent

# PRD — Migration Typo3 → WordPress : Site Vipassana France

## Problem Statement

Le Site Vipassana France (fr.dhamma.org) tourne sur Typo3, un CMS trop complexe pour les Bénévoles techniques non-expérimentés qui le maintiennent. Publier une Actualité, mettre à jour les infos d'un Centre ou ajouter une Opportunité de Service nécessite une expertise Typo3 que la plupart des Bénévoles techniques n'ont pas. En conséquence, le Site est sous-maintenu et visuellement daté — il ne rend pas justice à la qualité des Cours proposés ni à l'ambition du réseau Dhamma en Europe.

## Solution

Migrer l'intégralité du contenu du Site vers un WordPress unique, avec un Template moderne conçu pour être simple à maintenir par des Bénévoles techniques non-techniques. Ce Template a vocation à devenir une référence proposée au réseau Dhamma Europe.

La migration préserve 100% du contenu existant (photos, textes, liens) tout en modernisant la structure et le design. La Section Anciens étudiants est reproduite avec la même logique de mot de passe partagé, nativement supportée par WordPress.

## User Stories

1. En tant que **Nouvel étudiant**, je veux trouver facilement des informations sur la Vipassana (la Technique, S.N. Goenka, la tradition), pour comprendre ce qu'est un Cours avant de m'inscrire.
2. En tant que **Nouvel étudiant**, je veux être redirigé vers dhamma.org pour consulter le Calendrier et m'Inscrire à un Cours, sans avoir à chercher où s'inscrire.
3. En tant que **Nouvel étudiant**, je veux accéder aux informations pratiques d'un Centre (accès, hébergement, contacts), pour préparer mon arrivée.
4. En tant que **Nouvel étudiant**, je veux lire le Site en français ou en anglais, pour comprendre le contenu dans ma langue.
5. En tant qu'**Ancien étudiant**, je veux accéder à la Section Anciens étudiants avec un mot de passe simple, pour lire les Actualités des Centres et les Opportunités de Service.
6. En tant qu'**Ancien étudiant**, je veux trouver des Opportunités de Service dans les Centres, pour contribuer en tant que Servant du Dhamma.
7. En tant que **Bénévole technique d'un Centre**, je veux publier une Actualité ou une Opportunité de Service sur la Section de mon Centre, sans avoir besoin de connaître Typo3 ou le code.
8. En tant que **Bénévole technique**, je veux que le WordPress soit maintenable par des non-développeurs, pour ne pas être l'unique point de blocage pour chaque modification.
9. En tant que **Bénévole technique**, je veux que le Template soit propre et documenté, pour pouvoir le proposer au réseau Dhamma Europe comme référence.

## Implementation Decisions

### Architecture WordPress

- **Un seul WordPress** pour l'ensemble du réseau France (Dhamma Mahī, Dhamma Sūriyārāma, Sud-Est Devesset, Dhamma Réunion + page générale France)
- **Custom Post Type `Centre`** : chaque Centre est une entité avec ses propres pages, Actualités et Opportunités de Service
- **Rôles WordPress** : les Bénévoles techniques de chaque Centre ont le rôle `Éditeur` limité à leur Section Centre — ils ne peuvent pas modifier les autres sections
- **Multilingue FR/EN** : via le plugin Polylang (ou WPML si budget disponible). Le FR est complet dès le lancement ; l'EN est construit progressivement

### Structure des pages

```
/                          → Page d'accueil (présentation Vipassana France)
/vipassana/                → À propos de la Technique
/s-inscrire/               → Calendrier & Inscription (lien externe dhamma.org)
/centres/
  /dhamma-mahi/            → Section Centre Dhamma Mahī
  /dhamma-suriyarama/      → Section Centre Dhamma Sūriyārāma
  /devesset/               → Section Centre Sud-Est Devesset
  /reunion/                → Section Centre Dhamma Réunion
/cours-enfants-jeunes/     → Cours Enfants et Jeunes
/en-savoir-plus/           → Ressources, témoignages, livres
/anciens-etudiants/        → Section Anciens étudiants (mot de passe partagé)
```

### Section Anciens étudiants

- Protection native WordPress par mot de passe de page (pas de plugin membres)
- Contenu : Actualités des Centres, travaux, Opportunités de Service
- Un seul mot de passe partagé — inchangé par rapport à Typo3

### Template

- Thème WordPress sur mesure (ou thème léger hautement personnalisé — ex. GeneratePress, Kadence)
- Design moderne, mobile-first, sobre et lisible — en cohérence avec les valeurs Dhamma
- Aucun page builder lourd (pas d'Elementor) — Gutenberg natif pour que l'édition soit stable
- Documenté pour pouvoir être reproduit sur d'autres sites Dhamma Europe

### Migration du contenu

- Export manuel depuis Typo3 (accès admin disponible) + import WordPress
- Aucune perte : toutes les photos, textes et liens existants sont migrés
- Les URLs sont redirigées (301) depuis les anciennes URLs Typo3 vers les nouvelles

## Testing Decisions

- **Ce qu'on teste** : comportement visible par l'utilisateur (pages accessibles, liens corrects, mot de passe Section Anciens étudiants fonctionnel, redirections actives)
- **On ne teste pas** : l'implémentation interne du thème, les hooks WordPress, les détails CSS
- **Checklist de validation** avant mise en production :
  - [ ] Toutes les pages Typo3 ont un équivalent WordPress
  - [ ] Toutes les photos sont présentes et affichées correctement
  - [ ] Le lien vers dhamma.org pour le Calendrier fonctionne
  - [ ] La Section Anciens étudiants est accessible avec le mot de passe et inaccessible sans
  - [ ] Le Site est lisible sur mobile (iOS et Android)
  - [ ] Le basculement FR/EN fonctionne sur toutes les pages
  - [ ] Les redirections 301 depuis les anciennes URLs sont actives

## Out of Scope

- **Calendrier des Cours** : reste sur dhamma.org, le Site y renvoie uniquement
- **Inscription aux Cours** : gérée par dhamma.org, jamais par le Site
- **Workflow agent IA** : prévu à terme, mais hors scope de cette migration
- **Comptes utilisateurs individuels** : la Section Anciens étudiants reste sur mot de passe partagé
- **Paiement en ligne** : les Cours sont gratuits (dana), aucune transaction sur le Site
- **Site pour chaque Centre indépendamment** : un seul WordPress unifié

## Further Notes

- Le WordPress existant (thème actuel insatisfaisant + contenu partiel) sert de base — le travail commence par un audit de ce qui existe déjà avant de repartir sur un nouveau Template
- L'ambition de proposer le Template au réseau Dhamma Europe implique de le documenter soigneusement et de le rendre facilement déployable sur un autre hébergement
- Questions en suspens : choix du thème de base, hébergeur cible, timeline de la migration
