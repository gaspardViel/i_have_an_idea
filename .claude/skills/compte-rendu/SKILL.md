---
name: compte-rendu
description: Génère un compte rendu structuré pour la Commission Entretien du centre
             Vipassana. Fournir l'ordre du jour préparé + la transcription ou le résumé
             de la réunion. Produit un fichier Markdown prêt à partager avec l'équipe.
---

# Compte Rendu — Commission Entretien

## Ce que tu reçois

L'utilisateur fournit l'un ou les deux éléments suivants :
- **Ordre du jour** préparé avant la réunion
- **Transcription ou résumé** de la réunion (dicté ou textuel)

Si l'ordre du jour manque, demande-le. Si la date manque, demande-la.

## Ce que tu produis

Un fichier Markdown structuré, sauvegardé sous : `YYYY-MM-DD-CR-commission-entretien.md`

### Structure du fichier

```
# Compte Rendu — Commission Entretien
Date : [date]
Lieu : [si mentionné]
Participants : [liste]

## Ordre du jour
[Points tels que préparés]

## Déroulé

### [Point 1 de l'ordre du jour]
[Notes détaillées — assez complètes pour qu'un absent comprenne]

### [Point 2...]
...

## Décisions prises
1. [Décision] — acté le [date]
2. ...

## Actions à mener
| Action | Responsable | Échéance |
|--------|-------------|----------|
| ...    | ...         | ...      |

## Points reportés
- [Ce qui n'a pas été traité, à remettre à l'ordre du jour suivant]

## Prochaine réunion
Date proposée : [si mentionnée]
```

## Règles

- Garder un ton neutre et factuel
- Les notes de déroulé doivent être assez détaillées pour qu'un membre absent puisse suivre
- Chaque action doit avoir un responsable nommé — si aucun n'est mentionné, marque `[à assigner]`
- Les décisions sont numérotées et datées
- Après génération, demande si les actions doivent être ajoutées à `TODO.md`
