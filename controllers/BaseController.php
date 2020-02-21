<?php

require_once ('./classes/SmartyLoader.php');
//Classe abstract parent : elle n'est pas instantiable, donc n'est jamais utilisée telle quelle
abstract class BaseController
{
	 protected $name = 'base'; //permet l'accès aux enfants
	 protected $smarty;

	 public function __construct()
	{
		$this->smarty = new SmartyLoader();
		$this->renderView();
	}

	//MODIFICATION : assign mis en premier pour récupérer les variables utilisées dans header.tpl
	 protected function renderView()
     {
        $this->smarty->assign($this->getTemplateVars());
        $this->smarty->getHeader($this->getAssets(), $this->name);
		$this->smarty->display(strtolower($this->name).'.tpl');
		$this->smarty->getFooter();
	}

    //Importe le CSS pour le site / permet d'importer également du js
	 protected function getAssets()
	{
		return array("css" => array("views/css/global.css"), "js"=>array());
	}
	
	//Initiation de la fonction d'importation des variables
	protected function getTemplateVars()
	{
		return array(
			"controller" => $this->name,
		);

	}
}