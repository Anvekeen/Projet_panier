<?php

require_once('./classes/Product.php');

class ProductController extends BaseController
{
    protected $name = 'produit';


	protected function getTemplateVars()
	{
		
		return array(
			"controller" => $this->name,
			"products" => Product::getEntities(),
			"id" => $_GET["id"],
		);

	}
}

