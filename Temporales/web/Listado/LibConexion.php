<?php
function conectar()
   {  //verificacion del acceso al servidor
     if(!($link=mysql_connect("localhost","root","")))
	 {
		echo "Error al conectarse al Servidor";
		exit();
	 }	
	 //verificacion de la base de datos
	 if(!mysql_select_db("bdinventarline",$link))
	    {
	     echo "Error al seleccionar la Base de datos";
	     exit();
		}
	  return $link;//retorna la variable tipo conexion
   }

?>