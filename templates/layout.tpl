<html>
<head>
    <title>{block name=title}Default Page Title{/block}</title>
    {block name=head}
    <link rel="stylesheet" href="https://unpkg.com/purecss@2.0.3/build/pure-min.css" integrity="sha384-cg6SkqEOCV1NbJoCu11+bm0NvBRc8IYLRGXkmNrqUBfTjmMYwNKPWBTIKyw9mHNJ" crossorigin="anonymous">
    <style>
    #main,footer{ padding:1em }
    </style>
    <link rel="stylesheet" href="templates/style.css">
    {/block}
</head>
<body>
{block name=menu}
    <p>Menu de navigation générique défini dans layout.tpl</p>
    <a href="./">Accueil</a>
    <p>
        {if isset($_SESSION.nom)}
            Bienvenue, <b>{$_SESSION.nom}{$_SESSION.prenom}</b><br>
            Voir <a href="./profil">mon profil</a> | <a href="./logout">Me déconnecter | <a href="./apply">Candidater</a></a>
        {else}
            Contenu du site <br>
            Se <a href="./login">connecter</a> ou <a href="./register">créer un compte</a>
        {/if}
    </p>
{/block}
{block name=body}Contenu générique{/block}
</body>
</html>