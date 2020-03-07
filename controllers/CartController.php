<?php

require_once('./classes/Product.php');

class CartController extends BaseController
{
    protected $name = 'panier';

    protected function checkCart()
    {
        if (isset($_GET['add'])) {
            $id = $_GET['add'];
            $product = Database::getInstance()->query("Select id from product where id = '$id';")->fetchAll(PDO::FETCH_COLUMN);
            if (!empty($product)) {
                foreach ($product as $p) {
                    $panier[] = new Product($p);
                    array_push($_SESSION['panier'], $panier[0]);
                    header('location: panier');
                    return true;
                }
            }
        } else if (isset($_GET['delete']))
        {
            $_SESSION['panier'] = array();
            return false;
        } else {
            if (isset($_SESSION['panier']) && !empty($_SESSION['panier'])) {
                return true;
            } else {
                return false;
            }
        }
    }


    protected function getTemplateVars()
    {
        return array(
            "controller" => $this->name,
            "checker" => $this->checkCart(),
        );
    }
}

