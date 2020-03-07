<?php
require_once ('./classes/Base_entity.php');

class Cart extends Base_entity
{
    protected $id;
    protected $quantite;
    protected $taille;
    protected $CartProdID;

    public static $definition = array(
        "table" => "cart",
        "primary" => "id",
        "fields" => array(
            "id",
            "quantite",
            "taille",
            "CartProdID",
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
    public function getQuantite()
    {
        return $this->quantite;
    }

    /**
     * @param mixed $quantite
     */
    public function setQuantite($quantite): void
    {
        $this->quantite = $quantite;
    }

    /**
     * @return mixed
     */
    public function getTaille()
    {
        return $this->taille;
    }

    /**
     * @param mixed $taille
     */
    public function setTaille($taille): void
    {
        $this->taille = $taille;
    }



    /**
     * @return mixed
     */
    public function getCartProdID()
    {
        return $this->CartProdID;
    }

    /**
     * @param mixed $CartProdID
     */
    public function setCartProdID($CartProdID): void
    {
        $this->CartProdID = $CartProdID;
    }



}