<?php
//enfant de basecontroller

require_once('./controllers/BaseController.php');
require_once('./classes/Database.php');
require_once('./classes/Product.php');

class HomeController extends BaseController
{
    protected $name = 'Home';
	
	protected function getTemplateVars()
	{
		
		return array(
			"controller" => $this->name,
			"products" => Product::getEntities(),
		);

	}
}

?>

