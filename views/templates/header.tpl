<html lang="fr">
<head>
    <meta charset='utf-8'>

    <title>{$title}</title>

    {if isset($bootstrap) && $bootstrap}  {*mis en premier car la librairie jquery doit se charger avant le fichier js pour que jquery fonctionne*}
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
              crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
                crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
                integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
                crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
                integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
                crossorigin="anonymous"></script>
    {/if}

    {if isset($assets) && is_array($assets)} {* Test si c'est un array*}
        {if !empty($assets['css'])} {* Test si des valeurs sont assignées à css, pourrait également y avoir du js*}
        {foreach $assets['css'] as $css}
        <link rel="stylesheet" type="text/css" href="{$css}" media="screen">
        {/foreach}
        {/if}

        {if !empty($assets['js'])} {* Test si des valeurs sont assignées à css, pourrait également y avoir du js*}
        {foreach $assets['js'] as $js}
            <script type="text/javascript" src="{$js}"></script>
        {/foreach}
        {/if}
    {/if}

</head>
<body class="d-flex flex-column h-100">
<header class="header navbar navbar-expand-lg navbar-light bg-light">

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon">
			</span>
    </button>
    <a class="navbar-brand" href="./accueil">
        <img src="views/img/derix.png" alt="logo du site" width="40" height="40">
    </a>

    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            {$active = 'active'}
            {$check = '<span class="sr-only">(current)</span>'}
            <li class="nav-item {if $title == 'accueil'}{$active}{/if}">
                <a class="nav-link" href="accueil">Accueil{if $title == 'accueil'}{$check}{/if}</a>
            </li>
            <li class="nav-item {if $title == 'produits'}{$active}{/if}">
                <a class="nav-link" href="produits">Produits{if $title == 'produits'}{$check}{/if}</a>
            </li>
            <li class="nav-item {if $title == 'faq'}{$active}{/if}">
                <a class="nav-link" href="faq">FAQ{if $title == 'faq'}{$check}{/if}</a>
            </li>
            <li class="nav-item {if $title == 'contact'}{$active}{/if}">
                <a class="nav-link" href="contact">Contact{if $title == 'contact'}{$check}{/if}</a>
            </li>
        </ul>
    </div>

    <form class="form-inline my-0" action="recherche" method="get">
        <input class="form-control" type="search" placeholder="t-shirt, jeans,..." aria-label="Search" name="achercher">
        <button class="btn btn-outline-danger mr-3" type="submit">Rechercher</button>
    </form>

    <div class="btn-group" role="group" aria-label="Boutons de connexion et panier">
        <h5 class="nav-text m-2">{if isset($smarty.session.utilisateur)}Bienvenue {$smarty.session.utilisateur} !</h5>
        <a class="btn btn-secondary border-dark" href="utilisateur?logout" role="button">Déconnexion</a>
        {else}
            <a class="btn btn-secondary border-dark" href="utilisateur" role="button">Connexion</a>
        {/if}
        <button type="button" class="btn btn-secondary border-dark">Panier</button>
    </div>
</header>



