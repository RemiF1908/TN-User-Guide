#!/bin/bash

# Génération automatique des PDFs avec md2pdf
echo "🚀 Génération automatique des PDFs..."

mkdir -p pdfs

for file in *.md; do
  [ -f "$file" ] || continue  # skip if no .md files
  output="pdfs/${file%.md}.pdf"
  pandoc "$file" -o "$output"
done

echo "🎉 Génération terminée !"
