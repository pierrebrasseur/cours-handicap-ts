# Site du cours — Handicap, autonomie et travail social

Site MkDocs Material du module Bachelor TS · HETS Genève.

## Prévisualiser en local

```bash
./serve.sh
# puis ouvrir http://127.0.0.1:8000
```

ou directement :

```bash
.venv/bin/mkdocs serve
```

## Construire le site statique

```bash
.venv/bin/mkdocs build
# le HTML est généré dans ./site/
```

## Déployer sur GitHub Pages

1. Créer un dépôt GitHub (ex. `cours-handicap-ts`).
2. Pousser le contenu de ce dossier :

```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/<utilisateur>/cours-handicap-ts.git
git push -u origin main
```

3. Déployer :

```bash
.venv/bin/mkdocs gh-deploy --force
```

Cela construit le site et le pousse sur la branche `gh-pages`. Dans Settings → Pages du dépôt, sélectionner la branche `gh-pages` comme source. Le site sera disponible à `https://<utilisateur>.github.io/cours-handicap-ts/`.

## Structure

```
site_cours/
├── mkdocs.yml          # Configuration
├── docs/
│   ├── index.md        # Accueil
│   ├── seance/         # Séance probatoire (6 pages)
│   ├── module/         # Syllabus complet (3 pages)
│   ├── ressources/     # Notes de lecture, biblio, cadre suisse (3 pages)
│   └── about.md
├── serve.sh            # Helper local
└── README.md
```

## Personnalisation

- **Couleurs / thème** : `mkdocs.yml`, section `theme.palette`
- **Navigation** : `mkdocs.yml`, section `nav`
- **Contenu** : éditer les fichiers `.md` dans `docs/`
- **Footnotes, admonitions, tabs** : voir [MkDocs Material](https://squidfunk.github.io/mkdocs-material/reference/)

## Licence

Contenu sous CC BY-NC-SA 4.0. Code MkDocs sous MIT.
