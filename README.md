# Projet de communications numériques (TS229)

## Desciption générale
Tous les fichiers utiles à ce projet sont disponibles aux adresses suivantes :

* [Le sujet complet du TP](https://github.com/rtajan/TS229/blob/master/doc/sujet/sujet.pdf)

* [Des trames avant démodulation](https://github.com/rtajan/TS229/blob/master/data/buffers.mat)

* [Des messages ADSB](https://github.com/rtajan/TS229/blob/master/data/adsb_msgs.mat)

* [Une documentation technique sur ADSB](https://github.com/rtajan/TS229/blob/master/doc/ADSB_technical_doc.pdf) (concerne surtout les tâches annexes)

**Ne pas mettre les données sur votre dépôt Git !**

L'application MATLAB se connecte à un serveur connecté à une radio logicielle afin de récupérer les trames envoyées par les avions. Ce serveur est disponible à l'adresse rpprojets.enseirb-matmeca.fr uniquement sur le réseau interne de l'école et sur le réseau Wifi Bordeaux INP. 

## Utilisation de Git

 Afin de faciliter le co-développement pendant ce projet, vous aurez à utiliser le système de gestion de version GIT. 

### Ce qui doit être fait lors de votre première séance
Lors de votre première séance, vous commencerez par **cloner** votre répertoire avec la commande suivante

```
git clone https://<user>@thor.enseirb-matmeca.fr/git/<repo>
```

où `<user>` et `<repo>` sont vos login et le nom de votre dépôt Git (cf. votre compte sur Thor)

**Immédiatement après avoir cloné** votre dépôt Git, mettre à jour votre fichier de configuration Git

``` 
ssh ssh.enseirb-matmeca.fr /net/ens/renault/local/bin/init-gitconfig.sh > ~/.gitconfig
```

### Ce qui doit être fait lors à chaque séance

**Pousser** votre travail sur le serveur distant au **minimum à la fin de chaque séance** 

``` 
git push origin master
```

Chaque commit devra **impérativement** comporter un message informatif (git commit). Voir [ce tutoriel](https://chris.beams.io/posts/git-commit/) pour un guide de bonnes pratiques concernant les commits.

### Aide pour Git
Si vous n'êtes pas à l'aise avec l'utilisation de Git, il est **impératif** de suivre le tutoriel [suivant](http://www.labri.fr/perso/renault/working/teaching/projets/git.php).

## Date butoir et rendu
Pour le rendu, utiliser l'interface **Devoirs/Assignments** de vos comptes sur Thor. Vous devez rendre, pour ce TP : 

* un rapport dans un fichier nommé : rapport_ts229_2223.pdf

* vos codes compressés dans une archive nommée : archive_ts229_2223.tar.gz

**Vos codes et rapports doivent être rendus avant le 25 octobre 2021.**
