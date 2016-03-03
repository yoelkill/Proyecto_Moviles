<?php
	require_once 'config.php';
		class DB_Connection {
			private $connect;
			function __construct() {
		
			$this->connect = mysql_connect(hostname, user, password, db)
				or die("No se pudo conectar a la Base de Datos");	
		}	
		public function getConnection(){
			return $this->connect;
		}
	}
?>