<?php
require_once ('./classes/Base_entity.php');

class Product extends Base_entity
{
    protected $id;
    protected $name;
    protected $price;
    protected $stock;
    protected $short_description;
    protected $long_description;

    public static $definition = array(
        "table" => "product",
        "primary" => "id",
        "fields" => array(
            "id",
            "name",
            "price",
            "stock",
            "short_description",
            "long_description",
        ),
    );

    public function getId()
    {
        return $this->id;
    }


    public function setId($id)
    {
        $this->id = $id;
    }
 
    public function getName()
    {
        return $this->name;
    }

    public function setName($name)
    {
        $this->name = $name;
    }


    public function getPrice()
    {
        return $this->price;
    }


    public function setPrice($price)
    {
        $this->price = $price;
    }


    public function getStock()
    {
        return $this->stock;
    }

    public function setStock($stock)
    {
        $this->stock = $stock;
    }

 
    public function getShortDescription()
    {
        return $this->short_description;
    }


    public function setShortDescription($short_description)
    {
        $this->short_description = $short_description;
    }


    public function getLongDescription()
    {
        return $this->long_description;
    }


    public function setLongDescription($long_description)
    {
        $this->long_description = $long_description;
    }
	
}