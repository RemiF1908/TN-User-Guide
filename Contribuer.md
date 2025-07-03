# Comment contribuer ?

Si vous voyez une erreur ou si vous voulez mettre à jour ce guide :
[https://github.com/CETEN-BDE/TN-User-Guide](https://github.com/CETEN-BDE/TN-User-Guide)

Si vous ne savez pas comment contribuer à un projet open source :
[https://docs.github.com/fr/get-started/exploring-projects-on-github/contributing-to-a-project](https://docs.github.com/fr/get-started/exploring-projects-on-github/contributing-to-a-project)

## Maintenance du site web

Pour ajouter un nouveau guide :

1. Créez un nouveau fichier `.md` dans le repository
2. Ajoutez une entrée dans le tableau `documents` du fichier `index.html`
3. Modifiez le script `merge.sh` si vous voulez l'inclure dans le PDF complet
4. C'est tout ! Le site affichera automatiquement le nouveau guide

## Déploiement automatique

Deux workflows GitHub Actions s'exécutent automatiquement :

1. **Deploy to GitHub Pages** : Déploie le site web à chaque push
2. **Generate PDFs** : Génère les PDFs à chaque modification des fichiers Markdown

Le système fonctionne avec deux workflows séparés pour optimiser les performances et éviter les conflits.
