# Tuto Eduroam

## Lien Utile

[Tuto de L'université de Lorraine](https://wiki.univ-lorraine.fr/bin/view/publique/dn/com/wifi/Configurateur%20WiFi/)

## OS Selection

[Linux](#linux)
[Macos](#macos)
[Windows](#windows)
[Android](#android)
[iOS](#ios)

## Eduroam Version PC

### Linux

- Pour connection il faut :
    - être connecté à internet avec autre chose (partage de connexion ou autre wifi ou connexion filaire par exemple)
    - Ne pas être connecté un VPN sinon risque de bannissement
- Ensuite aller sur la page à https://cat.eduroam.org/

![image de la page eduroam](eduroam/eduroam_linux_1.png)

Cliquer sur le gros bouton bleu

![eduroam bouton cliquer](eduroam/eduroam_linux_2.png)

Cliquer ensuite sur Université de Lorraine 

![Université de Lorraine selectionné](eduroam/eduroam_linux_3.png)

![alt text](eduroam/eduroam_linux_4.png)

Cliquer ensuite sur Eduroam

Ceci devrait vous avoir télécharger un ficher "eduroam-linux-eduroam_et_Personnels_Univ-Lorraine.py"

Aller dans votre dossier de téléchargement et lancer le fichier avec python

Sur ubuntu:

Lancer un terminal avec la racourci CTRL + ALT + T

Sinon :

Touche Windows puis terminal puis Enter

Vous avez lancer un terminal

![Terminal](eduroam/eduroam_linux_5.png)

Vous pouvez maintenant executer cette commande


Version Français:

```bash
python3 ~/Téléchargements/eduroam-linux-eduroam_et_Personnels_Univ-Lorraine.py
```

Version Anglais:
```bash
python3 ~/Downloads/eduroam-linux-eduroam_et_Personnels_Univ-Lorraine.py
```

![Terminal + Command](eduroam/eduroam_linux_6.png)

Une fois la commande lancer en appuyant sur Enter Vous arrivez sur cette fenetre:

![Eduroam setup Windows 1](eduroam/eduroam_linux_7.png)

Cliquer sur **ok** puis sur **oui**

![Eduroam setup Windows 2](eduroam/eduroam_linux_8.png)

Dans entrer votre identifiant utilisateur : "loginul"@etu.univ-lorraine.fr par exemple e1331u@etu.univ-lorraine.fr
Dans entre le mot de passe : Votre Mot de passe de l'ul : Par exemple JaimeBeaucoupLesTresLongMotDePasseParceQueCEstSecurise ne mettez pas le même
Dans Entrez à Nouveau votre mot de passe : Votre Mot de passe de l'ul : Par exemple JaimeBeaucoupLesTresLongMotDePasseParceQueCEstSecurise ne mettez pas le même

Voilà vous pouvez maintenant vous connecté au wifi eduroam et la connexion devrait se faire tous seule.

Si vous n'arrivez pas à vous connecté cf [Problème Récurrents](#problème-récurrents)

### Macos

![Eduroam Mac 1](eduroam/eduroam_mac1.png)
![Eduroam Mac 2](eduroam/eduroam_mac2.png)
![Eduroam Mac 3](eduroam/eduroam_mac3.png)
![Eduroam Mac 4](eduroam/eduroam_mac4.png)
![Eduroam Mac 5](eduroam/eduroam_mac5.png)
![Eduroam Mac 6](eduroam/eduroam_mac6.png)
![Eduroam Mac 7](eduroam/eduroam_mac7.png)
![Eduroam Mac 8](eduroam/eduroam_mac8.png)
![Eduroam Mac 9](eduroam/eduroam_mac9.png)
![Eduroam Mac 10](eduroam/eduroam_mac10.png)

Si vous n'arrivez pas à vous connecté cf [Problème Récurrents](#problème-récurrents)

### Windows

Connecter vous à Eduroam:

Dans entrer votre identifiant utilisateur : "loginul"@etu.univ-lorraine.fr par exemple e1331u@etu.univ-lorraine.fr
Dans entre le mot de passe : Votre Mot de passe de l'ul : Par exemple JaimeBeaucoupLesTresLongMotDePasseParceQueCEstSecurise (ne mettez pas le même)

![Eduroam Windows](eduroam/eduroam_windows.png)

Voilà vous pouvez maintenant vous connecté au wifi eduroam et la connexion devrait se faire tous seule.

Si vous n'arrivez pas à vous connecté cf [Problème Récurrents](#problème-récurrents)

## Eduroam Version Tel

### Android

Pour pouvoir vous connecté à Eduroam avec votre tel il faut:
- Aller sur le Play Store et chercher "geteduroam"
- Téléchargé l'application
- Lancer l'application et chercher "lorraine"

<img src="eduroam/Eduraom_tel_1.png" alt="Eduraom_tel_1" width="400"/>

- Cliquer sur Université de Lorraine
- Dans identifiant entrer "loginul"@etu.univ-lorraine.fr ; Par exemple e1331u@etu.univ-lorraine.fr
- Dans Mot de passe entrer Votre Mot de passe de l'ul ; Par exemple JaimeBeaucoupLesTresLongMotDePasseParceQueCEstSecurise (ne mettez pas le même)
<img src="eduroam/Eduraom_tel_2.png" alt="Eduraom_tel_2" width="400"/>

- Vous pouvez maintenant ajouter le réseau et vous connecté à Eduroam sur votre téléphone

<img src="eduroam/Eduraom_tel_3.png" alt="Eduraom_tel_3" width="400"/>

Si vous n'arrivez pas à vous connecté cf [Problème Récurrents](#problème-récurrents)

### iOS

<img src="eduroam/eduroam_iphone_1.png" alt="Apple Settings" width="400"/>

- Cliquer sur Eduroam
- Dans identifiant entrer "loginul"@etu.univ-lorraine.fr ; Par exemple e1331u@etu.univ-lorraine.fr
- Dans Mot de passe entrer Votre Mot de passe de l'ul ; Par exemple JaimeBeaucoupLesTresLongMotDePasseParceQueCEstSecurise (ne mettez pas le même)

<img src="eduroam/eduroam_iphone_2.png" alt="Eduraom Connexion Apple" width="400"/>

- Puis cliquer sur Se Fier

<img src="eduroam/eduroam_iphone_3.png" alt="Se fier Apple" width="400"/>

- Vous êtes maintenant connecté à eduroam

Si vous n'arrivez pas à vous connecté cf [Problème Récurrents](#problème-récurrents)

### Configuration Manuel

Si vous avez besoin de configurer la connexion eduroam à la main. Voici un exemple de configuration

![Eduroam_Manual](eduroam/eduroam_manual.png)

Le certificat dans le screenshot appelé ca.pem est disponible dans l'installateur python de eduroam à la fin du fichier

![Certificat Université de Lorraine Eduroam](eduroam/eduroam_ca.png)

Certificat Actuelle mais qui ne marchera surement plus dans 1 an

https://wiki.univ-lorraine.fr/bin/download/publique/dn/com/wifi/Archives%20-%20M%C3%A9thodes%20obsol%C3%A8tes/PersUL%20-%20Linux%20Ubuntu/WebHome/ca-ul.pem?rev=1.2

```
-----BEGIN CERTIFICATE-----
MIIGUjCCBDqgAwIBAgIJAOcn8wmq9LipMA0GCSqGSIb3DQEBCwUAMIG1MQswCQYD
VQQGEwJGUjEPMA0GA1UECAwGRnJhbmNlMQ4wDAYDVQQHDAVOYW5jeTEfMB0GA1UE
CgwWVW5pdmVyc2l0ZSBkZSBMb3JyYWluZTELMAkGA1UECwwCRE4xHzAdBgNVBAMM
FlVuaXZlcnNpdGUgZGUgTG9ycmFpbmUxNjA0BgkqhkiG9w0BCQEWJ2RuLWNlcnRp
ZmljYXRzLWNvbnRhY3RAdW5pdi1sb3JyYWluZS5mcjAeFw0xNzAzMTQwNzU1MTZa
Fw0zNzAzMDkwNzU1MTZaMIG1MQswCQYDVQQGEwJGUjEPMA0GA1UECAwGRnJhbmNl
MQ4wDAYDVQQHDAVOYW5jeTEfMB0GA1UECgwWVW5pdmVyc2l0ZSBkZSBMb3JyYWlu
ZTELMAkGA1UECwwCRE4xHzAdBgNVBAMMFlVuaXZlcnNpdGUgZGUgTG9ycmFpbmUx
NjA0BgkqhkiG9w0BCQEWJ2RuLWNlcnRpZmljYXRzLWNvbnRhY3RAdW5pdi1sb3Jy
YWluZS5mcjCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBALj4jO1JypW+
Q64JILzZJLSeJKiND/XN4EFnAuQC3nRztJn68tEFkjKJT7T9sD7HZDrV8RRPbLIc
DSsZYGLnUFqz5M2kI6Cq0kWq7t20/pRrLZktE2OMztgSV7O2x12RBYxzsWFysuWx
ivETSbQpl938A9EefUyH6wiuUhjIDyyGmPcWiFZpz3qxMHxJLPqOUFpcrMkvLtnG
7RFIB77bvsSA8CRppIkZX9fBd/XU9Yy4nMGoOzkoyYOuXnptsmTi4JClByph6wtN
5zYAKQ8u8jG07D3pWqP+yTEOJ3r36xBUe2C8SiLE3Uwm+1HQ+sWCe5DuQ6p278zP
8QDZiI1REw07kXhqmdrKD+TsXH7Nc809AulAPpyiuIK4GU1g392es7JeLJnUC2Qt
GS++nTIH0fESwaN+BbPHlg3x2S/kV+O2c2mnKle5pENS+U23/M9m3Yj5OMNvJ8El
l70uh0OdoXt4glXot5PoV5CA9Zqz1BoBSte4Je7PNQ3s3M5+Sb6XmVzDFDgTj5hH
i2Vj30xvyVt3wa2BKaqwAuBBDhol8Z4A3hcd/03HnueG8Q7f5qD2RNIspOgdwj9j
Va9IOJ9imvl3dNn47DyKEEiXUz1gBcy0qNJLCXH/UmZQWA1ceX7SKmV+C1lCAYqT
m8GXkferL8g4SSq08SuHG82EC4cLqQLlAgMBAAGjYzBhMB0GA1UdDgQWBBTW3EjG
MzB7l0wyU3U6td1p37X8CDAfBgNVHSMEGDAWgBTW3EjGMzB7l0wyU3U6td1p37X8
CDAPBgNVHRMBAf8EBTADAQH/MA4GA1UdDwEB/wQEAwIBhjANBgkqhkiG9w0BAQsF
AAOCAgEASP7f9K2BrP4JGbqckSJCWVT+ZT6z79mSHAo/5ZZ/cSbNYd8jUljOu0Jl
zRA9wBNXW+dtG31Hvzb74WiT1XRt5QaU7+slNcEvRuQWVmPok3qnVpfS7VXOLzVd
SRXuQvZw08EEDkj+4XMiqSoplY1Tn47f9AVCE9GnodIeZAhp9s+xggrXhNiOwvDz
pgXlluZM3kyf+Fas2lIXKwbJu+3nAf3UZlNDd0qeGbQHkBquxMp9Cbq6BmsHr28q
lBPIM73RVjLPNw9g7vaNnLXZLgYX69uafYBFSu6srQFhwrRKr8J5yQVbnzWUss26
pTIZVX/7GMm3sX8w4KZhaiMmMP5QC/rtbIcA8QyjzY/aIYrZnMHsEvPmoxdXOh8C
QMB15zPMPN56mIMLkKvILbvZf+9f0vtb2n1CTQPr315UC7smUWZDEzJQO381ElgN
dgH7l3mjN4tyu/X02hGkxjmjevt6ZBBxshKa9o35oIHDzgE2+1F8A8YrYE2gT0uJ
6OVexj5cuP5g5qqLQync2YeIIDLLgYac4/d56AFFMNM7gdjr8hYNseWQnlz8Z2oh
+dBQEJOq7WilBpPQtxJlrI4TKYARwZ3gf7IS3rD+iStme9jF5rVf6V3lhldFeFS3
pr1Ggfl8g2jpe4+9LYeO4coBq54z+HKxsXDdqZMC5+l+7ID1AgA=
-----END CERTIFICATE-----
```

Si vous n'arrivez pas à vous connecté cf [Problème Récurrents](#problème-récurrents)

#### Lien utile

https://wiki.univ-lorraine.fr/bin/view/publique/dn/com/wifi/Archives%20-%20M%C3%A9thodes%20obsol%C3%A8tes/PersUL%20-%20Linux%20Ubuntu/?srid=u5H5omph#HImportationdel27autoritE9decertification

### Problème Récurrents

Si ça ne marche pas refaite l'opération mais en ***vérifiant très bien votre mot de passe*** J'ai déjà eu quelqu'un qui était persuader d'avoir mis le bon mot de passe.
Vous pouvez copié votre mot de passe mis pour vous connecté à Arche
Ou vous Pouvez utilisé un Password Manager comme BitWarden ou ProtonPass (Team Bitwarden)

ça marche toujours pas:

Vérifié que vous avez bien mis 2 'r' à lorraine. ça m'est déja arrivé 

Si vous êtes sûr d'avoir correctement fait de ces étapes mais vous n'avez toujours pas vous connecté vous êtes potentiellement bannie de L'université de Lorraine. Pas de panique, L'univ ban toute utilisation de VPN donc si vous avez utilisé un VPN comme NordVPN ou autre il faut aller vous Monsieur Bouthier étage 1 côté Aile nord pour vous demander de vous debannir.