<?php

require_once ('./classes/SmartyLoader.php');
//parent, classe abstracte : (pas instanciable) n'est jamais utilisée telle quelle
abstract class BaseController
{
	 protected $name = 'base'; //permet l'accès aux enfants
	 protected $smarty;
	 
	 public function __construct()
	{
		$this->smarty = new SmartyLoader();
		$this->renderView();
	}
	 
	 protected function renderView()
     {
         //TODO If $assests removed in SmartyLoader, remove it here in getHeader (+BaseController)
		$this->smarty->getHeader($this->getAssets(), $this->name);
		$this->smarty->assign($this->getTemplateVars());
		$this->smarty->display(strtolower($this->name).'.tpl');
		$this->smarty->getFooter();
	}

    //TODO If $assests removed in SmartyLoader, remove this method (+header.css in css folder)
	 protected function getAssets()
	{
		return array("css" => array("./views/css/header.css"), "js"=>array());
	}
	
	
	protected function getTemplateVars()
	{
		return array(
			"controller" => $this->name,
		);

	}
}
?>