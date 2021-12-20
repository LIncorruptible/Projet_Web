<?php
    Flight::route('GET /', function() {
        Flight::render("index.tpl", array());
    });

    Flight::route('GET /logout', function(){
        session_unset();
        session_destroy();
        Flight::redirect('/');
    });

    Flight::route('GET /profil', function(){
        if(empty($_SESSION)){ // si utilisateur non connecté
            Flight::render("login.tpl", array());
        }
        else{
            Flight::render("profil.tpl",array());
        }
              
    });

    Flight::route('/success', function(){
        Flight::render("success.tpl", array());
    });
?>