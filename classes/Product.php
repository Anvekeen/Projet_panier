<?php
require_once ('./classes/Base_entity.php');

class Product extends Base_entity
{
    protected $id;
    protected $price;
    protected $stock;
    protected $name;
    protected $description;
    protected $prodcatid;

    public static $definition = array(
        "table" => "product",
        "primary" => "id",
        "fields" => array(
            "id",
            "price",
            "stock",
            "name",
            "description",
            "prodcatid",
        ),
    );

    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @param mixed $id
     */
    public function setId($id): void
    {
        $this->id = $id;
    }

    /**
     * @return mixed
     */
    public function getProdcatid()
    {
        return $this->prodcatid;
    }

    /**
     * @param mixed $prodcatid
     */
    public function setProdcatid($prodcatid): void
    {
        $this->prodcatid = $prodcatid;
    }



    /**
     * @return mixed
     */
    public function getPrice()
    {
        return $this->price;
    }

    /**
     * @param mixed $price
     */
    public function setPrice($price): void
    {
        $this->price = $price;
    }

    /**
     * @return mixed
     */
    public function getStock()
    {
        return $this->stock;
    }

    /**
     * @param mixed $stock
     */
    public function setStock($stock): void
    {
        $this->stock = $stock;
    }

    /**
     * @return mixed
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * @param mixed $name
     */
    public function setName($name): void
    {
        $this->name = $name;
    }

    /**
     * @return mixed
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * @param mixed $description
     */
    public function setDescription($description): void
    {
        $this->description = $description;
    }


}