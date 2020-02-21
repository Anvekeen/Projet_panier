SELECT * FROM Produits WHERE ProCatID=( SELECT CatID FROM Categories WHERE CatNom='Immobilier') ;

en gros on peut dans $_get directement donner l'id correspondante ! ! !

dans recherchecontroller que doit se trouver la méthode de recherche et pas dans base entity!!!


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