# Projet-Festival

## _Connexion à la base de données_

Il faut dans notre cas importer le fichier `projet_web.sql`situer dans le dossier `bdd`, vers ***phpmyadmin*** et renseigner le `root` et `mdp` dans le fichier `pdo.php` situé à la racine du dossier :

* ***Dans le fichier `pdo.php`***

```php
$db = new PDO('mysql:host=localhost;port=3306;dbname=projet_web;charset=utf8','root','mdp');
```

## _Connexion et inscription_

##### Connexion via le role Administrateur :

**(À savoir que son mon de passe n'est pas haché, ce dernier étant rentré dans la base de données en dur)**

* @email : `rickastley@gmail.com`
* #mdp : `root123456`

##### Inscription en tant que Responsable

Lors de l'inscription un champ de sélection vous sera proposé, sélectionnez `responsable` et indiquez dans le champ demandant le code : `1234567890`.

##### Inscription en tant que Candidat :

Lors de l'inscription, sélectionnez cette fois-ci dans le même champ qu'au dessus `candidat`.

## _À Savoir_

Lors d'une candidature validée par le site, tous les fichiers utilisateurs sont stockés dans le dossier `candidatures` dans un sous-dossier portant l'`id du groupe` et son `nom` de telle sorte que le premier groupe inscrit ACDC par exemple aura comme dossier `groupe_1_ACDC`.
