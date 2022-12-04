# i3 Window Manager mémo

## Liste des symboles

| Symbole | Description |
|---|---|
| $mod | La touche de configuration est différente selon le choix de configuration de l'utilisateur, cette touche est appelée "mod", soit elle est définie avec la touche "Windows" ou "Alt". |
| Return | La touche "Entrer." |
| < v ^ > | Flèches du clavier. |
| Esc | La touche "Echap". |
| Shift | La touche "Maj". |
| Space | La touche "Espace." |

## Général

| Raccourci  | Description  |
|---|---|
| $mod + Return |  Ouvre un émulateur de terminal, (on peut définir l'émulateur de terminal à ouvrir dans le fichier de configuration). |
| $mod + (j ou <) | Déplace le focus sur la fenêtre de gauche. |
| $mod + (k ou v) | Déplace le focus sur la fenêtre du bas. |
| $mod + (l ou ^) |  Déplace le focus sur la fenêtre du haut. |
| $mod + (m ou >) | Déplace le focus sur la fenêtre de droite. |
| $mod + q | Déplace le focus sur la fenêtre parent. |
| $mod + Space | Indique sur quelle fenêtre est le focus. |

## Déplacement des fenêtres

| Raccourci  | Description  |
|---|---|
| $mod + Shift + (j ou <)  | Se déplacer vers la fenêtre de gauche. |
| $mod + Shift + (k ou v) | Se déplacer vers la fenêtre du bas. |
| $mod + Shift + (l ou ^) | Se déplacer vers la fenêtre d'en haut. |
| $mod +  Shift + (m ou >) | Se déplacer vers la fenêtre de droite. |

## Modifications des fenêtres

| Raccourci  | Description  |
|---|---|
| $mod + f | Basculer une fenêtre en mode pleine écran,  pour sortir du mode pleine écran taper "$mod + f". |
| $mod + v | Empile les fenêtres les unes sur les autres à la verticale, exemple, pour lancer Firefox en rajoutant une fenêtre en bas taper "$mod + v" pour que la nouvelle fenêtre s’empile en dessous des autres, puis taper "$mod + d" pour lancer l'application Firefox. |
| $mod + h | Même comportement que pour "$mod + h" sauf qu'ici les fenêtres vont se positionner les unes à coté des autres à l'horizontale, après le lancement d'une application. |
| $mod + r | Basculer une fenêtre en mode redimensionnement, puis utiliser les flèches pour redimensionner la fenêtre, pour sortir du mode redimensionnement taper "Esc" ou "Return". | 

## Le mode fenêtre flottante (floating)

| Raccourci  | Description  |
|---|---|
| $mod + Shift + Space | Basculement de la fenêtre en mode flottant. |
| $mod + Clique gauche | Maintenir le clique gauche de la souris sur la fenêtres puis déplacer la souris pour déplacer la fenêtre. |

## Changement de la disposition de l'ensemble des fenêtres
* Le mode par défaut dispose les fenêtres en tuiles (tilling), les unes à coter des autres.

| Raccourci  | Description  |
|---|---|
| $mod + e | Bascule l'ensemble des fenêtre soit à l’horizontale, les unes à coter des autres, soit à la verticale les unes sur les autres, (spliting). |
| $mod + s | Bascule l'ensemble des fenêtre en mode empilement (staking), empile les fenêtres les unes sur les autres. |
| $mod + z | Bascule l'ensemble des fenêtre en mode onglets (tabbed). |

## Utilisation des espaces de travail (workspaces)

| Raccourci  | Description  |
|---|---|
| $mod + (nombre de 0 à 10) | Basculer sur un autre espace de travail, exemple :  pour se placer sur l'espace de travail 10, taper "$mod + 1 + 0", si l'espace de travail ne contient aucune fenêtre alors il se supprime automatiquement, attention ne pas utiliser les nombres du clavier numérique !. |
| $mod + Shift + (nombre de 0 à 10) | Déplacer une fenêtre dans un espace de travail en particulier. |

## Lancement d'applications

| Raccourci  | Description  |
|---|---|
| $mod + d | Lancement du menu des applications (dmenu,rofi...). |

## Fermeture des fenêtres

| Raccourci  | Description  |
|---|---|
| $mod + Shift + a | Fermer la fenêtre de l'application, certaines application ne supportent pas ce raccourci. |
| Control + w | Peut être aussi utilisée pour ferme certaines applications. |

## Redémarrer, quitter et recharger la configuration de i3wm

| Raccourci  | Description  |
|---|---|
| $mod + Shift + c | Recharger la configuration d’I3. |
| $mod + Shift + r | Redémarre i3. |
| $mod + Shift + e | Quitte la session de i3. |

## Raccourcis personnels
* Concerne seulement ma configuration personnelle !

| Raccourci  | Description  |
|---|---|
| Control + $mod + s | Créer une capture d'écran daté et sauvegardé dans le répertoire ${HOME}/Images/'Captures d'écran'. |
| Control + $mod + c | Affiche le gestionnaires de presse-papiers, avec l'historique des commandes. |
| Control + $mod + l | Permet de verrouiller le système. |
| $mod + Shift + e | Lance un menu permettant de gérer les actions suivantes : quitter la session i3 (Logout), éteindre le système (Shutdown), redémarrer le système (Reboot), suspendre le système (Suspend). |

## Commandes

| Commande  | Description  |
|---|---|
| `i3 --moreversion` | Affiche la version de i3 et le fichier de configuration actuellement utilisé. |
| `i3 reload` | Recharge la configuration de i3. |
| `killall i3bar` | Quitter i3 en cas de dysfonctionnement. |
| `startx i3 ` | Démarrer i3 à partir de la ligne de commande. |
