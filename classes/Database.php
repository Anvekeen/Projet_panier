<?php

define("DB_DSN", "mysql:dbname=shop;host=localhost");
define("DB_USER", "root");
define("DB_PASS", "");

class Database {

    private static $instance;

    private function __construct() {}

    private function __clone() {}

    public static function getInstance(  ) {

        if(!self::$instance){
            self::$instance = new PDO(DB_DSN, DB_USER, DB_PASS);
            self::$instance->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        }

        return self::$instance;
    }
}

/*
Ma version 0.1 lol

class Database{
	private static $instance;	
	private function __construct(){}
	private function clone(){}
	
	public static function get_instance()
	{
		if $instance == null {
			$instance=new PDO('mysql:host=localhost; dbname=shop', 'root', '');
			//new PDO fait que c'est pas vraiment un singleton et faudrait encore changer 
			return $instance;
		}
	}
}
*/

?>



