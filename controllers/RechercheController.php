<?php

require_once('./classes/Product.php');

class RechercheController extends BaseController
{
    protected $name = 'recherche';

    protected function search()
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
        }

    protected function getTemplateVars()
    {

        return array(
            "controller" => $this->name,
            "products" => $this->search(),
        );

    }
}

