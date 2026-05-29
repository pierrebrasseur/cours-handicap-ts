#!/usr/bin/env bash
# Lance le serveur local de prévisualisation
# Ouvre http://127.0.0.1:8000 dans le navigateur
cd "$(dirname "$0")"
.venv/bin/mkdocs serve
