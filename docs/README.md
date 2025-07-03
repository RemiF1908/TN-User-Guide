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

## 🔧 Maintenance

Pour ajouter un nouveau guide :

1. Créez un nouveau fichier `.md` dans le repository
2. Ajoutez une entrée dans le tableau `documents` du fichier `index.html`
3. C'est tout ! Le site affichera automatiquement le nouveau guide

## 🚀 Déploiement automatique

Le workflow GitHub Actions se déclenche automatiquement à chaque push sur `main` ou `master` et déploie le site mis à jour.
