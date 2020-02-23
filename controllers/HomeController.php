<?php

require_once('./classes/Product.php');

class HomeController extends BaseController
{
    protected $name = 'accueil';

	
	protected function getTemplateVars()
	{
		return array(
			"controller" => $this->name,
			"products" => array_slice(Product::getEntities(), 0, 3),
		);
	}
}

