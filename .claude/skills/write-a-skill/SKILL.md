---
name: write-a-skill
description: Crée un nouveau skill Claude Code avec la structure correcte (SKILL.md, REFERENCE.md, scripts/). Utiliser quand l'utilisateur veut créer, écrire ou construire un nouveau skill.
---

# Écrire un skill

## Démarrage rapide

1. Demander quel tâche / domaine le skill couvre
2. Recueillir les cas d'usage et besoins en ressources
3. Rédiger SKILL.md (< 100 lignes)
4. Réviser avec l'utilisateur et affiner

## Workflows

**Processus de création**

- [ ] Comprendre le domaine et les cas d'usage spécifiques
- [ ] Choisir le scope : personnel (`~/.claude/skills/`) ou projet (`.claude/skills/`)
- [ ] Déterminer si des scripts exécutables sont nécessaires
- [ ] Rédiger SKILL.md avec le frontmatter correct
- [ ] Ajouter des fichiers de support si le contenu dépasse 500 lignes
- [ ] Présenter le draft et collecter le feedback
- [ ] Raffiner selon les retours

**Structure de fichiers**

```
nom-du-skill/
├── SKILL.md       # instructions principales (obligatoire)
├── REFERENCE.md   # documentation détaillée (si besoin)
├── EXAMPLES.md    # exemples d'usage (si besoin)
└── scripts/       # utilitaires exécutables (si besoin)
```

**Frontmatter obligatoire**

```yaml
---
name: nom-du-skill
description: Ce que fait le skill et quand l'utiliser. Claude lit ceci pour décider de le charger.
---
```

Champs optionnels utiles : `disable-model-invocation: true` (invocation manuelle seulement), `allowed-tools`, `context: fork` (subagent isolé).

## Notes

- La `description` est cruciale : c'est ce que Claude lit pour décider de charger le skill
- Garder SKILL.md sous 100 lignes — déplacer les détails dans REFERENCE.md
- Le nom du dossier devient la commande `/nom-du-dossier`
