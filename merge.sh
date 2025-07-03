#!/bin/bash

# Fusion automatique des fichiers Markdown
echo "📚 Fusion automatique des guides Markdown..."

# Commencer par les 7 premières lignes de Contribuer.md (titre et intro)
echo "📝 Création du README.md fusionné..."
head -n 7 Contribuer.md > README.md

# Fonction pour ajouter un fichier markdown au README
add_markdown_file() {
    local file="$1"
    if [ -f "$file" ]; then
        echo "📄 Ajout de $file..."
        echo -ne "\n" >> README.md
        cat "$file" >> README.md
    else
        echo "⚠️  Fichier $file non trouvé, ignoré"
    fi
}

# Liste des fichiers à fusionner dans l'ordre souhaité
# (vous pouvez modifier cette liste selon vos besoins)
files_to_merge=(
    "Eduroam.md"
    "Mail.md" 
    "VPN.md"
)

# Ajouter chaque fichier
for file in "${files_to_merge[@]}"; do
    add_markdown_file "$file"
done

# Découverte automatique d'autres fichiers .md (optionnel)
echo "🔍 Recherche d'autres fichiers Markdown..."
for md_file in *.md; do
    # Ignorer les fichiers déjà traités
    if [ "$md_file" != "README.md" ] && [ "$md_file" != "Contribuer.md" ] && [ "$md_file" != "*.md" ]; then
        # Vérifier si le fichier n'est pas déjà dans la liste
        if [[ ! " ${files_to_merge[@]} " =~ " ${md_file} " ]]; then
            echo "🆕 Fichier supplémentaire trouvé: $md_file"
            echo "   Pour l'inclure automatiquement, ajoutez-le à la liste files_to_merge[] dans merge.sh"
        fi
    fi
done

echo "✅ README.md généré avec succès !"
echo "📊 Taille du fichier: $(wc -l < README.md) lignes"
