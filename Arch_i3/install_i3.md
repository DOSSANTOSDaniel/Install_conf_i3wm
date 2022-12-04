# Installation et configuration de I3wm sur Arch Linux 2022
## Informations système
```Bash
         Chassis: laptop 💻
Operating System: Arch Linux
          Kernel: Linux 6.0.9-arch1-1
    Architecture: x86-64
```

* Cette configuration à été faite sur une version graphique de Arch Linux (Gnome), on va donc rajouter I3wm à celle-ci.
 
## Installation de I3
```Bash
sudo pacman -Rs i3-wm --noconfirm
sudo pacman -Su
sudo pacman -S i3 --noconfirm
```
## Configuration de I3
### Création des répertoires de configuration
```Bash
mkdir -p ${HOME}/.config/{i3,i3scripts,i3status}
```

### Placement des fichiers de configuration
```Bash
cp -b --suffix=".Old_$(date +"%Y-%m-%d_%H-%M-%S")" Install_conf_i3wm/Arch_i3/i3status/config ${HOME}/.config/i3status/config 

cp -b --suffix=".Old_$(date +"%Y-%m-%d_%H-%M-%S")" Install_conf_i3wm/Arch_i3/i3/config ${HOME}/.config/i3/config
```

## Installation d'autres outils
```Bash
sudo pacman -S rofi feh scrot picom pcmanfm git xss-lock lxappearance terminator redshift numlockx light
```
### Liste des outils
|Outil|Description|
|:---:|:---:|
|rofi|Menu d'applications moderne qui remplace le dmenu|
|feh|Permet d'appliquer une image en fond d’écran|
|scrot|Permet les captures d’écran|
|picom|Permet l'opacité des fenêtres|
|pcmanfm|Permet l'auto montage des périphériques|
|xss-lock|Permet de verrouiller l'écran quand le système est suspendu|
|lxappearance|Permet de changer les thèmes fenêtres et des icônes|
|terminator|C'est un émulateur de terminal|
|redshift|Permet d'appliquer un filtre rouge à l'écran|
|numlockx|Permet d'activer le clavier numérique au démarrage|
|light|Permet de contrôler la luminosité du système|

## Installation des fonts FontAwesome
```Bash
git clone --depth 1 https://github.com/FortAwesome/Font-Awesome

sudo mkdir -p /usr/share/fonts/Font-Awesome

sudo mv ${PWD}/Font-Awesome/otfs/* /usr/share/fonts/Font-Awesome

rm -rf ${PWD}/Font-Awesome

fc-cache -fv
```
### Liste des fonts
* 'Font Awesome 6 Brands-Regular-400.otf'
* 'Font Awesome 6 Free-Regular-400.otf'
* 'Font Awesome 6 Free-Solid-900.otf'

### Tableaux des icônes
* https://fontawesome.com/v5/cheatsheet

### Autre moyens de télécharger les fonts
* https://use.fontawesome.com/releases/v6.2.1/fontawesome-free-6.2.1-desktop.zip

### Installation d'autres fonts (optionnel)
#### Installation de la font Typicons
```Bash
git clone --depth 1 https://github.com/stephenhutchings/typicons.font

sudo mkdir -p /usr/share/fonts/typicons.font

sudo mv ${PWD}/typicons.font/src/font/* /usr/share/fonts/typicons.font

rm -rf ${PWD}/typicons.font

fc-cache -fv
```
* Liste des icones : https://www.s-ings.com/typicons/

#### Installation de la font MaterialDesign-Webfont
```Bash
git clone --depth 1 https://github.com/Templarian/MaterialDesign-Webfont

sudo mkdir -p /usr/share/fonts/MaterialDesign-Webfont

sudo mv ${PWD}/MaterialDesign-Webfont/fonts/* /usr/share/fonts/MaterialDesign-Webfont

rm -rf ${PWD}/MaterialDesign-Webfont

fc-cache -fv
```

## Sélection d'un thème pour rofi 
### Afficher les différents thèmes
```Bash
rofi-theme-selector
```
* Les thèmes se trouvent : /usr/share/rofi/themes

### Mes thèmes préférés
* Adapta-Nokto
* android_notification
* Arc-Dark
* arthur
* docu
* glue_pro_blue
* gruvbox-dark-hard
* gruvbox-dark
* gruvbox-dark-soft

### Pour le téléchargement d'autres thèmes pour rofi
* https://github.com/davatorium/rofi-themes

## Installation et configuration du clipboard
```Bash
sudo wget -P /usr/local/bin https://github.com/erebe/greenclip/releases/download/v4.2/greenclip

sudo chmod +x /usr/local/bin/greenclip 
```

## Configuration du menu power
```Bash
mv Install_conf_i3wm/Scripts/i3power.sh ${HOME}/.config/i3scripts

sudo chmod +x ${HOME}/.config/i3scripts/i3power.sh
```

## Autres
* Distribution Linux avec i3wm comme gestionnaire de fenêtres par défaut.
* https://nakedeb.arpinux.org/wikii3wm.html
