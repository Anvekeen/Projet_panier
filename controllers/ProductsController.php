<?php

require_once('./classes/Product.php');

class ProductsController extends BaseController  //sert de CategoryController !
{
    protected $name = 'produits';

    protected function getProducts()
    {

        if (!empty($_GET['categorie'])) { // Permet d'indiquer que la variable $_GET doit être - déclarée, non-nulle et différente de 0 (de ce que j'ai compris, pas besoin du coup de isset..)
            $products = array();
            $categorie = $_GET['categorie'];
            $results = Database::getInstance()->query("Select product.id from product right outer join categorie on categorie.id = product.prodcatid where categorie.id = '$categorie';")->fetchAll(PDO::FETCH_COLUMN);
            //var_dump($results); note: je testais le résultat de cette façon, or le contenu du $results, bien que présent dans le code-source ne s'affiche pas toujours sur la page... Bizarre, bizarre...
            foreach ($results as $result) {
                $products[] = new Product($result);
            }
            return $products;
        } else {
            return Product::getEntities();
        }
    }

    protected function getTemplateVars()
    {

        return array(
            "controller" => $this->name,
            "products" => $this->getProducts(),
        );

    }
}
/*
protected function checkCategorie()
{
    if (!isset($_GET['categorie']) || empty($_GET['categorie'])) {
        return false;
    } else {
        return $_GET['categorie'];
    }
}

protected function getProducts()
{
    $search = $this->checkCategorie();
    if ($search) {
        $ids = Database::getInstance()->query("SELECT id FROM product
                where categorie LIKE '%$search%' or name LIKE '%$search%' or description LIKE '%$search%'")->fetchAll(PDO::FETCH_COLUMN);
        //$entities = array();
        foreach ($ids as $id) {
            var_dump($id);
        }
    } else {
        return Product::getEntities();
    }
}
return array(
    "controller" => $this->name,
    "products" => $this->getProducts(),
    "categorie" => $this->checkCategorie(),*/
