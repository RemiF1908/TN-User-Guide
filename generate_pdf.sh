#!/bin/bash

# Génération des PDFs avec md-to-pdf
echo "Génération des PDFs avec md-to-pdf..."

# Créer le dossier pdfs s'il n'existe pas
mkdir -p pdfs

# Générer les PDFs individuels
echo "Génération de Eduroam.pdf..."
npx md-to-pdf Eduroam.md --config-file .md2pdf.js --pdf-options='{"path": "pdfs/Eduroam.pdf"}'

echo "Génération de Mail.pdf..."
npx md-to-pdf Mail.md --config-file .md2pdf.js --pdf-options='{"path": "pdfs/Mail.pdf"}'

echo "Génération de VPN.pdf..."
npx md-to-pdf VPN.md --config-file .md2pdf.js --pdf-options='{"path": "pdfs/VPN.pdf"}'

echo "Génération de Contribuer.pdf..."
npx md-to-pdf Contribuer.md --config-file .md2pdf.js --pdf-options='{"path": "pdfs/Contribuer.pdf"}'

# Générer le PDF complet (nécessite que merge.sh ait été exécuté avant)
if [ -f "README.md" ]; then
    echo "Génération du Guide complet (README.pdf)..."
    npx md-to-pdf README.md --config-file .md2pdf.js --pdf-options='{"path": "pdfs/Guide-Complet-TN.pdf"}'
else
    echo "Attention: README.md non trouvé. Exécutez merge.sh d'abord."
fi

echo "PDFs générés dans le dossier pdfs/"
ls -la pdfs/
