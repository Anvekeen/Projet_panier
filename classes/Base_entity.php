<?php

require_once ('./classes/Database.php');

abstract class base_entity {
	
	public static $definition = array();
	
	public function __construct($id = 0) 
	{ 
		if (!is_null($id)){
		$data = Database::getInstance()->query("SELECT * FROM shop.".static::$definition['table']." WHERE id = {$id} LIMIT 1")->fetch(PDO::FETCH_ASSOC);
		foreach (static::$definition['fields'] as $field)
			{if (isset($data[$field]))
				{
				$this->{$field}=$data[$field];
				}
			}
		}
	}

	    public static function getEntities($limit = 100)
    {
        $ids = Database::getInstance()->query("SELECT id FROM shop.".static::$definition['table']." LIMIT $limit")->fetchAll(PDO::FETCH_COLUMN);
        $entities = array();
        foreach ($ids as $id)
        {
            $entities[] = new static($id);
        }

        return $entities;
    }
	
}
	

?>