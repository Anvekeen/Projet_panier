<?php

class ContactController extends BaseController
{
    protected $name = 'contact';



    protected function getTemplateVars()
    {
        return array(
            "controller" => $this->name,
        );
    }
}