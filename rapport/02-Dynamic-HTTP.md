# 02 - Web dynamique
## Objectifs
- Utiliser une technologie de web dynamique (express.js ou autre)
- Créer une page web dynamique qui sert un JSON avec des données
- Tester le fonctionnement de la page avec postman

## Résumé
Ayant de l'expérience en PHP, j'ai choisi d'utiliser cette techonologie afin de créer un JSON aléatoire contenant des informations météorologique (humidité, température et pression). L'API retourne un nombre aléatoire d'entrée (entre 30 et 50) ou alors le nombre exact donné par le paramètre GET nommé "nb".  
Différents tests sont disponible avec Postman. La collection est donnée en JSON dans le dossier. Les tests vérifient notamment que les objets ont les bons membres, que c'est bien du JSON et que le paramètre "nb" est correctement validé.

## Docker
Pour cette partie, j'ai utilisé un docker-compose avec les images nginx et PHP 8.1 fpm. Différents volumes sont mappés directement avec le host.
