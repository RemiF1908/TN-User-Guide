# Guide d'utilisation TN - Site Web

Ce site web GitHub Pages permet de consulter facilement tous les guides de Télécom Nancy avec une interface moderne et des liens partageables.

## 🌐 Accès au site

Le site est accessible à l'adresse : `https://votre-username.github.io/TN-User-Guide/`

## ✨ Fonctionnalités

- **Page d'accueil** : Vue d'ensemble de tous les guides disponibles
- **Navigation intuitive** : Cliquez sur une carte pour accéder au guide complet
- **Liens partageables** : Chaque guide a son propre lien que vous pouvez partager
- **Bouton retour** : Retournez facilement à la page d'accueil depuis n'importe quel guide
- **Responsive** : Fonctionne parfaitement sur mobile, tablette et ordinateur

## 🔗 Liens directs

Vous pouvez partager des liens directs vers chaque guide :

- **Eduroam** : `?doc=eduroam`
- **Email** : `?doc=mail`
- **VPN** : `?doc=vpn`
- **Contribuer** : `?doc=contribuer`

Exemple d'URL complète : `https://votre-username.github.io/TN-User-Guide/?doc=eduroam`

## 📝 Mise à jour du contenu

Le site lit automatiquement les fichiers Markdown du repository. Pour ajouter ou modifier du contenu :

1. Modifiez directement les fichiers `.md` dans le repository
2. Les changements apparaîtront automatiquement sur le site
3. Aucune duplication de contenu nécessaire

## 🛠️ Technique

- Le site utilise JavaScript pour lire dynamiquement les fichiers Markdown
- La librairie [Marked.js](https://marked.js.org/) convertit le Markdown en HTML
- Le routing se base sur les paramètres d'URL pour la navigation
- Aucun framework lourd, juste du HTML/CSS/JS vanilla

## 📂 Structure

```
/
├── index.html          # Application web principale
├── Eduroam.md         # Guide Eduroam
├── Mail.md            # Guide Email
├── VPN.md             # Guide VPN
├── Contribuer.md      # Guide contribution
├── eduroam/           # Images pour le guide Eduroam
├── mail/              # Images pour le guide Email
└── vpn/               # Images pour le guide VPN
```

Le principe est simple : **une seule source de vérité**. Tous les contenus sont dans les fichiers Markdown, et le site web les affiche dynamiquement.

## 📄 Génération automatique de PDFs

Le site inclut un système de génération automatique de PDFs via GitHub Actions utilisant **md-to-pdf** :

- **PDFs individuels** : Chaque guide (Eduroam, Mail, VPN, Contribuer) est converti en PDF avec style CSS
- **PDF complet** : Un PDF fusionné contenant tous les guides (Guide-Complet-TN.pdf)
- **Rendu professionnel** : Utilise Chrome/Puppeteer pour un rendu identique au web
- **Style cohérent** : PDFs stylés avec le même design que le site web
- **Génération automatique** : Les PDFs sont régénérés à chaque modification des fichiers Markdown
- **Téléchargement** : Les PDFs sont disponibles dans les GitHub Actions artifacts

### Comment accéder aux PDFs

1. Allez sur la page GitHub Actions du repository
2. Sélectionnez le workflow "Generate PDFs" le plus récent
3. Téléchargez l'artifact "pdf-guides"
4. Vous obtiendrez un ZIP contenant tous les PDFs
