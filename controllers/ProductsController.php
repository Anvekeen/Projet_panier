<?php

require_once('./classes/Product.php');

class ProductsController extends BaseController
{
    protected $name = 'Produits';

    protected function getTemplateVars()
    {

        return array(
            "controller" => $this->name,
            "products" => Product::getEntities(),
        );

    }
}

?>

