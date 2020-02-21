<?php
//enfant de basecontroller

require_once('./classes/Product.php');

class FaqController extends BaseController
{
    protected $name = 'faq';


    protected function getTemplateVars()
    {
        return array(
            "controller" => $this->name,
        );
    }
}

