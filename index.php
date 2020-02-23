<?php

foreach (glob(__DIR__."/controllers/*.php") as $filename)
{
    include_once $filename;
}
require('views/configs/session_start.php');
require_once('./classes/Product.php'); //est-ce utile de garder ceci ?

$request = explode('/', $_SERVER['REQUEST_URI'])[2];
$request = explode('?', $request)[0];

//indice de l'url ([3]), ici dû changer 2 par 3 car j'avais un dossier 
//de séparation ds l'url en plus (rechangé par la suite btw)
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

    case 'recherche' :
            $controller = new RechercheController();
        break;

    case 'faq' :
        $controller = new FaqController();
        break;

    case 'contact' :
        $controller = new ContactController();
    break;

    case 'utilisateur' :
        $controller = new UserController();
    break;

    default:
        http_response_code(404);
//        require __DIR__ . '/views/404.php';
    echo "Erreur 404 : Cette adresse n'existe pas sur le site!";
        break;
	}