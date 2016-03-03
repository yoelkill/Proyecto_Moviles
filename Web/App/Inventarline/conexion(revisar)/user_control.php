<?php

include_once 'connection.php';
	
	class User {
		
		private $db;
		private $connection;
		
		function __construct() {
			$this -> db = new DB_Connection();
			$this -> connection = $this->db->getConnection();
		}
		
		public function does_user_exist($id,$password)
		{
			$query = "Select *from login where id='$id' and password = '$password' ";
			$result = mysql_query($this->connection, $query);
		

			if(mysql_num_rows($result)>0){
				$json['success'] = ' Bienvenido '.$id;
				echo json_encode($json);
				mysql_close($this -> connection);
			}else{
				$json['error'] = 'Usuario o Contrasena Incorrectos';
				echo json_encode($json);
				mysql_close($this->connection);
			}
			
		}
		
	}
	
	
	$user = new User();
	if(isset($_POST['id'],$_POST['password'])) {
		$id = $_POST['id'];
		$password = $_POST['password'];
		
		if(!empty($id) && !empty($password)){
			
			$encrypted_password = md5($password);
			$user-> does_user_exist($id,$password);
			
		}else{
			echo json_encode("Debes completar ambos datos");
		}
		
	}














?>