<?php
    /*
        on établie et attrbiut à $db une connection à la base données projet_web :
            -> utilisateur : root
            -> mot de passe : Fire2002
        en localhost sur le port 3306 respectant la norme utf8
    */
    $db = new PDO('mysql:host=localhost;port=3306;dbname=projet_web;charset=utf8','root','Fire2002');
    
    /*
        configure un attribut du gestionnaire de base de données avec :
            -> ATTR_ERRMODE : rapport d'erreurs
            -> ERRMODE_EXECPTION : émet les exceptions
    */
    $db -> setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
?>