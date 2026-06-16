# Skill : /commentaire-fiche

## Déclencheur
Invoqué par `/commentaire-fiche` ou quand l'utilisateur colle du texte brut à reformatter en fiche usager pour Apologic (Perceval/Lancelot).

## Contexte métier
SAAD (Service d'Aide à l'Autonomie à Domicile). Deux publics :
- **Bureau** : ont besoin d'une fiche complète et structurée (onglet Commentaires)
- **Auxiliaires de vie** : lisent sur mobile, ont besoin d'info claire, rapide, sans superflu (onglet Accès)

## Ce que fait le skill

1. Prend le texte brut en entrée (notes d'appel, mail, ancien commentaire, mix — tout en vrac)
2. Dédoublonne, regroupe, normalise
3. Produit deux blocs distincts prêts à copier-coller dans Apologic

---

## Vocabulaire imposé (toujours appliquer)

| ❌ Ne jamais écrire | ✅ Écrire à la place |
|---|---|
| intervenante | auxiliaire de vie / aide à domicile |
| bénéficiaire | personne accompagnée |
| intervenant(e) | auxiliaire de vie |

**Abréviations à normaliser** :
- avd, AVD → auxiliaire de vie
- ide, IDE → infirmière
- apa → APA
- pch → PCH
- tel, tél → numéro formaté `01.00.00.00`
- M2A → Maison des Aidants et des Aidés (M2A)
- CASIP, CASVP, Passerelle, FMS, CNAV, CPAM → conserver en majuscules tels quels

---

## Output 1 — 📋 COMMENTAIRE (onglet Commentaires d'Apologic, équipe bureau)

### Structure exacte :

```
JF : [Oui/Non] / Pompiers : [Ok/Non] / Dépassement : [Oui/Non] / Remplacement : [valeur]

Orienté par : [organisme ou personne]
PeC : [financeur principal] [+ CASIP si applicable → ajouter : "voir facturation pour détails"]

ACCUEIL // [informations importantes sur la personne : qui elle est, particularités, peut-on la contacter directement ou passer par un tiers]

BESOINS // [besoins pendant la prestation : courses, entretien du logement, aide au repas, toilette, etc.]
```

### Valeurs possibles pour chaque champ :

**JF** : `Oui` ou `Non` (intervention les jours fériés)
**Pompiers** : `Ok` ou `Non` (autorisation d'appeler les pompiers en urgence)
**Dépassement** : `Oui` ou `Non` (dépassement de prise en charge accepté)
**Remplacement** : choisir parmi :
- `Remplacé d'office`
- `Pas de remplacement`
- `Appel famille d'abord`
- `Appel conjoint d'abord`
- [champ libre si aucun cas type ne correspond]

**PeC** (un seul financeur principal) :
- APA / PCH / CPAM / Mutuelle / Caisse de retraite / Payant / FMS
- CASIP peut s'ajouter : `APA + CASIP` → ajouter "voir facturation pour détails"

---

## Output 2 — 📱 ACCÈS (onglet Accès d'Apologic, auxiliaires de vie sur mobile)

### Principes
- Ultra-concis, ordre logique de progression physique vers le domicile
- Pas de phrase longue, pas de superflu
- Optimisé lecture rapide sur smartphone

### Structure exacte :

```
[Civilité Nom] - [adresse sans code postal] - [téléphone formaté] - [numéro urgence si disponible]
ACCUEIL// [particularités importantes à savoir avant d'entrer : état général, troubles cognitifs, caractère, points d'attention — ultra-concis]
ACCES// [Métro/RER/Bus X (Lx, Lx)], [code grille si applicable], [escalier si applicable], [étage], [porte], [particularité accès importante]
BESOINS// [besoins ultra-concis séparés par des virgules]
Réf. logiciel : [Nom du travailleur social référent — référent Apologic]
```

### Règles ACCUEIL// dans l'ACCÈS
- Ne garder que ce qui est **utile sur le terrain** : troubles cognitifs, agressivité, ne pas sonner (dort), chien, etc.
- Ne pas dupliquer le détail médical complet (qui reste dans le Commentaire bureau)
- Si rien d'important → omettre la ligne ACCUEIL//

### Réf. logiciel
- Le travailleur social référent = la personne référente dans Apologic
- Cette information apparaît **uniquement dans l'ACCÈS**, pas dans le Commentaire bureau

### Exemple :
```
Mme Martin - 28 rue de Wattignies Paris - 01.00.00.00 - Urgence fille : 06.00.00.00
ACCUEIL// Troubles cognitifs légers, bienveillante, ne pas évoquer le décès du mari
ACCES// Métro Daumesnil (L6, L8), code grille : 2854, escalier 2, 2ème étage, porte 12, sonner plusieurs fois (entend mal)
BESOINS// entretien du logement, repassage, courses
Réf. logiciel : Mme Dupont
```

---

## Gestion des champs manquants

Si une information obligatoire est absente du texte brut :
1. Mettre `???` à la place dans le champ concerné
2. Après les deux blocs, ajouter :

```
⚠️ Il manque les informations suivantes — pouvez-vous compléter ?
- [liste des champs manquants]
```

---

## Format de réponse final

Toujours présenter dans cet ordre :

```
---
📋 COMMENTAIRE — à coller dans l'onglet "Commentaires" d'Apologic
---
[contenu]

---
📱 ACCÈS — à coller dans l'onglet "Accès" d'Apologic
---
[contenu]

[⚠️ champs manquants si applicable]
```
