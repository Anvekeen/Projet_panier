<?php

require_once('./controllers/BaseController.php');
require_once('./classes/Database.php');
require_once('./classes/Product.php');

class ProductController extends BaseController
{
    protected $name = 'Product';
	
	protected function getTemplateVars()
	{
		
		return array(
			"controller" => $this->name,
		);

	}
}

?>

