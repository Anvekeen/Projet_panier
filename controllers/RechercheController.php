<?php

require_once('./classes/Product.php');

class RechercheController extends BaseController
{
    protected $name = 'recherche';

    protected function searchEntities($search)
    {
        $products = Product::getEntities();
        $result = array();
        foreach ($products as $product)
        {
            $a = $product->getName;
            $b = $product->getDescription;

        }
        return $entities;
    }

    protected function getTemplateVars()
    {

        return array(
            "controller" => $this->name,
            "products" => Product::getEntities(),
            "achercher" => $this->searchEntities($_POST['achercher']),
        );

    }
}

