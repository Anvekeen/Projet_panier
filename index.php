<?php

foreach (glob(__DIR__."/controllers/*.php") as $filename)
{
    include_once $filename;
}

$request = explode('/', $_SERVER['REQUEST_URI'])[3]; 

//indice de l'url ([3]), ici dû changer 2 par 3 car j'avais un dossier 
//de séparation ds l'url en plus 
//(localhost/marc/projet plutôt que localhost/marc)

switch ($request) {
    case '' :
        $controller = new HomeController();
        break;

    default:
        http_response_code(404);
//        require __DIR__ . '/views/404.php';
    echo '404';
        break;
	}

/*
require_once ('./classes/SmartyLoader.php');
$smarty = new SmartyLoader();

$smarty->getHeader('Home');
$smarty->display("home.tpl");
$smarty->getFooter();
*/
?>