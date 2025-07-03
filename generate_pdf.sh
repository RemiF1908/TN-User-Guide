#!/bin/bash

# Génération automatique des PDFs avec md-to-pdf
echo "🚀 Génération automatique des PDFs..."

# Créer le dossier pdfs s'il n'existe pas
mkdir -p pdfs

# Fonction pour générer un PDF
generate_pdf() {
    local md_file="$1"
    local pdf_name="$2"
    
    if [ -f "$md_file" ]; then
        echo "📄 Génération de $pdf_name..."
        npx md-to-pdf "$md_file" --config-file .md2pdf.js --pdf-options="{\"path\": \"pdfs/$pdf_name\"}"
        
        if [ $? -eq 0 ]; then
            echo "✅ $pdf_name généré avec succès"
        else
            echo "❌ Erreur lors de la génération de $pdf_name"
        fi
    else
        echo "⚠️  Fichier $md_file non trouvé, ignoré"
    fi
}

# Découverte automatique de tous les fichiers .md (sauf README.md)
echo "🔍 Découverte des fichiers Markdown..."
for md_file in *.md; do
    # Ignorer README.md car il sera traité séparément
    if [ "$md_file" != "README.md" ] && [ "$md_file" != "*.md" ]; then
        # Extraire le nom de base du fichier (sans .md)
        base_name=$(basename "$md_file" .md)
        pdf_name="${base_name}.pdf"
        
        echo "🎯 Trouvé: $md_file → $pdf_name"
        generate_pdf "$md_file" "$pdf_name"
    fi
done

# Générer le PDF complet (nécessite que merge.sh ait été exécuté avant)
if [ -f "README.md" ]; then
    echo "📚 Génération du Guide complet..."
    generate_pdf "README.md" "Guide-Complet-TN.pdf"
else
    echo "⚠️  README.md non trouvé. Exécutez merge.sh d'abord pour le guide complet."
fi

# Résumé final
echo ""
echo "🎉 Génération terminée !"
echo "📂 PDFs générés dans le dossier pdfs/ :"
ls -la pdfs/

# Compter les PDFs générés
pdf_count=$(ls pdfs/*.pdf 2>/dev/null | wc -l)
echo "📊 Total: $pdf_count PDF(s) généré(s)"
