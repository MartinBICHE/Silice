# Projet Lecteur Audio sur FPGA ULX3S
## Developpeur : Martin BICHE

Ce projet présente un lecteur audio capable de lire des fichiers depuis une carte SD avec une interface visuelle sur écran OLED et une gestion dynamique des LEDs.

### Fonctionnalites implementees

- Avance et retour accelere dans les morceaux de musique.
- Animation des LEDs synchronisee avec la musique (VU-metre).
- Affichage du niveau de volume sur les LEDs lors d'un changement.
- Possibilite de passer a la musique suivante ou precedente directement.

### Mode de fonctionnement

Le pilotage s'effectue via les boutons B1 a B6 :

- B1 : Mettre la musique en pause ou reprendre la lecture.
- B2 : Arreter la musique et retourner au menu principal.
- B3 : Naviguer vers le haut dans le menu ou augmenter le volume pendant la lecture.
- B4 : Naviguer vers le bas dans le menu ou diminuer le volume pendant la lecture.
- B5 : Retourner au dossier parent dans le menu. Pendant la musique : passage au titre precedent (appui court) ou retour rapide (appui long).
- B6 : Selectionner un dossier ou une musique. Pendant la musique : passage au titre suivant (appui court) ou avance rapide (appui long).

### Compilation et Installation

Pour compiler le firmware :
make final FIRMWARE=step7_hrdw_screen

Pour charger le projet de maniere permanente sur la carte (Flash) :
openFPGALoader -f -b ulx3s BUILD_final/build.bit

### Limites du projet

- La gestion des jeux de lumiere est partiellement effectuee par le firmware alors qu'une implementation 100% hardware aurait ete preferable.
- Un bug survient si l'on appuie sur le bouton de retour au menu (B2) alors que la musique est en pause, provoquant un crash du lecteur.
- Des grisillements sonores legers persistent malgre les optimisations, notamment lors des acces a la carte SD.