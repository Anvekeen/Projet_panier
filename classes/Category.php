<?php
require_once ('./classes/Base_entity.php');

class Category extends Base_entity
{
    protected $id;
    protected $categorie;

    public static $definition = array(
        "table" => "categorie",
        "primary" => "id",
        "fields" => array(
            "id",
            "categorie",
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
    public function getCategorie()
    {
        return $this->categorie;
    }

    /**
     * @param mixed $categorie
     */
    public function setCategorie($categorie): void
    {
        $this->categorie = $categorie;
    }


}