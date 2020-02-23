<?php

require_once('./classes/User.php');

class UserController extends BaseController
{
    protected $name = 'utilisateur';

    protected function logout()
    {
        if (isset($_GET['logout']))
        {
            session_unset();
            session_destroy();
            header('location: accueil');
        }
    }

    protected function login()
    {
        if (!empty($_POST['NomUtilisateur']) && !empty($_POST['MotdePasse'])) {
            $result = array();
            $user = $_POST['NomUtilisateur'];
            $mdp = $_POST['MotdePasse'];
            $check = Database::getInstance()->query("Select id from utilisateur where nom_utilisateur = '$user' and mot_de_passe = '$mdp';")->fetchAll(PDO::FETCH_COLUMN);
            if (!empty($check)) {
                foreach ($check as $c) {
                    $compte[] = new User($c);
                    $_SESSION['utilisateur'] = $compte[0]->getNomUtilisateur();
                    header('location: accueil');
                    return true;
                }
            } else {
                return "Votre nom d'utilisateur et/ou mot de passe est incorrect. Veuillez recommencer."; //si pas de résultat
            }
        } else {
            if (isset($_SESSION['utilisateur']))
            {
                header('location: accueil');
            } else {
                return false; //si pas d'input
            }
        }
    }

    protected function getTemplateVars()
    {
        return array(
            "controller" => $this->name,
            $this->logout(),
            "checker" => $this->login(),
        );
    }
}