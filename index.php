<?php

foreach (glob(__DIR__."/controllers/*.php") as $filename)
{
    include_once $filename;
}

require_once('./classes/Product.php');

$request = explode('/', $_SERVER['REQUEST_URI'])[3];
$request = explode('?', $request)[0];
var_dump($request);

//indice de l'url ([3]), ici dû changer 2 par 3 car j'avais un dossier 
//de séparation ds l'url en plus 
//(localhost/marc/projet plutôt que localhost/marc)

switch (strtolower($request)) {



    case 'accueil':
    case '' :
        $controller = new HomeController();
        break;

    case 'produit' :
        $controller = new ProductController();
        break;

    case 'produits' :
        $controller = new ProductsController();
        break;

        //TODO ajouter l'accès à d'autres pages ici

    default:
        //TODO améliorer la réponse?
        http_response_code(404);
//        require __DIR__ . '/views/404.php';
    echo "Erreur 404 : Cette adresse n'existe pas sur le site.";
        break;
	}