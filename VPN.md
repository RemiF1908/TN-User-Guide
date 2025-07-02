# VPN

## OS Selection

[Linux](#vpn-linux)
[Macos](#vpn-macos)
[Windows](#vpn-windows)

## VPN Macos

https://wiki.univ-lorraine.fr/bin/view/publique/dn/com/VPN/Configurations/Configuration%20VPN%20MAC/

![VPN Mac](vpn/vpn_mac.png)

## VPN Windows

https://wiki.univ-lorraine.fr/bin/view/publique/dn/com/VPN/Configurations/Configuration%20VPN%20Windows%20-%20AnyConnect/

![VPN Windows 1](vpn/vpn_windows1.png)
![VPN Windows 2](vpn/vpn_windows2.png)
![VPN Windows 3](vpn/vpn_windows3.png)
![VPN Windows 4](vpn/vpn_windows4.png)

## VPN Linux

### Gnome Interface Graphique


#### Debian / Ubuntu / Linux Mint
```bash
sudo apt install network-manager-openconnect-gnome
```

#### Fedora

```bash
sudo dnf install NetworkManager-openconnect-gnome
```

#### RHEL / CentOS / AlmaLinux / Rocky Linux

```bash
sudo dnf install epel-release
sudo dnf install NetworkManager-openconnect-gnome
```

#### Arch Linux / Manjaro
```bash
sudo pacman -S networkmanager-openconnect
```

#### openSUSE
```bash
sudo zypper install NetworkManager-openconnect-gnome
```

#### NixOS
```nix
# (au-dessus) Autres paquets système
environment.systemPackages = with pkgs; [
    # Ce qu'on veut ajouter
    networkmanager-openconnect
    # (en-dessous) D'autres paquets éventuels
];
```

![Gnome Cogwheel](vpn/vpn_linux1.png)

Cliquer sur `Multi-protocol VPN cliet (openconnect)`

![Gnome VPN Settings](vpn/vpn_linux2.png)

![Gnome VPN Config](vpn/vpn_linux3.png)

Cliquer sur `Connect`

![Gnome VPN Connect to VPN](vpn/vpn_linux4.png)

Mettez votre `loginUL@etu` et votre MDP de l'UL et Cliquer sur `Login`

![Gnome VPN Connect to VPN 2](vpn/vpn_linux5.png)

### Ligne de commande

Les paquets nécessaires

```
openconnect
```

##### Debian / Ubuntu / Linux Mint

```bash
sudo apt install openconnect
```

##### Fedora
```bash
sudo dnf install openconnect
```

##### RHEL / CentOS / AlmaLinux / Rocky Linux
```bash
sudo dnf install openconnect
```

##### Arch Linux / Manjaro
```bash
sudo pacman -S openconnect
```

##### openSUSE
```bash
sudo zypper install openconnect
```

##### NixOS
```nix
{
  environment.systemPackages = with pkgs; [
    openconnect
  ];
}
```

Remplacer e1331u par votre loginUL puis taper votre mots de passe de l'UL

```bash
sudo cat VPNTN.conf | sudo openconnect -u e1331u@etu --authgroup="Universite-de-Lorraine" vpn.univ-lorraine.fr --passwd-on-stdin
```



Si vous voulez éviter de devoir le taper à chaque fois

Crée un fichier VPNTN.conf puis mettez votre mots de passe dedans 

/!\ Attention /!\ Ceci est potentiellement dangereux si votre disque n'est pas chiffré puisque on peut lire votre disque depuis un clé bootable par exemple. A vous de voir si vous avez peur des attaque physique bien que très improbable (vol ordinateur, etc ...).
Penser bien au permission d'accès à ce fichier doivent être administrateur

Voici les commandes pour le faire
```bash
echo "VotreMotDePasseDeL'Univ" > VPNTN.conf
chown root:root VPNTN.conf
chmod 600 VPNTN.conf
```

```bash
sudo cat VPNTN.conf | sudo openconnect -u e1331u@etu --authgroup="Universite-de-Lorraine" vpn.univ-lorraine.fr --passwd-on-stdin
```

Remplacer e1331u par votre loginUL puis taper votre mots de passe de l'UL
