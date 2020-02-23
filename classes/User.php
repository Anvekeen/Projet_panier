<?php
require_once ('./classes/Base_entity.php');

class User extends Base_entity
{
    protected $id;
    protected $nom_utilisateur;

    public static $definition = array(
        "table" => "utilisateur",
        "primary" => "id",
        "fields" => array(
            "id",
            "nom_utilisateur",
        ),
    );

    /**
     * @return mixed
     */
    public function getNomUtilisateur()
    {
        return $this->nom_utilisateur;
    }

    /**
     * @param mixed $nom_utilisateur
     */
    public function setNomUtilisateur($nom_utilisateur): void
    {
        $this->nom_utilisateur = $nom_utilisateur;
    }

}