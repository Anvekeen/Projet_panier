<?php

require_once('./classes/Product.php');

class RechercheController extends BaseController
{
    protected $name = 'recherche';

    protected function search()
    {
        if (!empty($_GET['achercher'])) { // Permet d'indiquer que la variable $_GET doit être - déclarée, non-nulle et différente de 0
            $products = array();
            $search = $_GET['achercher'];
            $results = Database::getInstance()->query("SELECT id FROM product where name LIKE '%$search%'")->fetchAll(PDO::FETCH_COLUMN);
            //var_dump($results); note: je testais le résultat de cette façon, or le contenu du $results, bien que présent dans le code-source ne s'affiche pas toujours sur la page... Bizarre, bizarre...
            foreach ($results as $result) {
                $products[] = new Product($result);
            }
            return $products;
        } else {
            return false;
        }
    }

    protected function getTemplateVars()
    {

        return array(
            "controller" => $this->name,
            "products" => $this->search(),
        );

    }
}

/*    protected function search()  // fonction initiale avant que le prof ne me signale de changer pour une requête :p
    {
        $products = Product::getEntities();
        $result = array();
        if (isset($_GET['achercher']))
        {
            foreach ($products as $product)
            {
                $a = $product->getName();
                if (stripos($a, $_GET['achercher']) !== false)
                {
                    $result[] = $product;
                }
            }
            return $result;
        } else {
                return false;
            }
        }*/



