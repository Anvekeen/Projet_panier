<?php

require_once('./classes/Product.php');

class ProductsController extends BaseController
{
    protected $name = 'produits';

    protected function checkcategorie()
    {
        if (!isset($_GET['categorie']) || empty($_GET['categorie']))
        {
            return false;
        }
        else {
            return $_GET['categorie'];
        }
    }

    protected function getTemplateVars()
    {

        return array(
            "controller" => $this->name,
            "products" => Product::getEntities(),
            "categorie" => $this->checkcategorie(),
        );

    }
}

