# PHP App Example

## Pour run ces tests, vous avez besoin de:
1. GIT
2. DockerHub/DockerDesktop 
3. VisualStudioCode (ou un autre éditeur)

#### Le but: 
Télécharger une vidéo à l'aide de script php.

#### Comment exécuter des tests:
1. Ouvrir le dépot GIT dans un éditeur de code (de type VScode: `git clone https://github.com/CuteCookie36/php-app`).
2. Utilisez la commande suivante pour run le docker-composer : `docker-compose up` .
3. Utilisez la commande suivante pour ouvrir un shell et executer le php: `docker-compose exec php bash`.
4. Lancer ls pour vérifier que les fichiers sont bien présents puis lancez: `php client.php`.
5. Un message apparait alors vous disant que la vidéo a été envoyée au serveur.
6. Sortez de cette session à l'aide de la commande `exit` .
7. Utilisez la commande suivante pour rentrer dans le terminal du serveur: `docker-compose exec app bash`.
8. Lancez la commande `ls` pour faire afficher tous les fichiers et faire apparaitre les vidéos (en wav et mp4).
9. Sortez de cette session à l'aide de la commande `exit`. Et voilà les tests sont finis. 

## Source
https://github.com/CuteCookie36/php-app
