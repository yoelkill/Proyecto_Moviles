<?php
include("conexion.php");

$con=mysql_connect($host,$user,$pass) or die ("Problemas al conectar");
mysql_select_db($db, $con) or die ("Problemas al conectar con la bd");

$registro=mysql_query("SELECT * FROM codigo where nombre='$_POST[nombre]' ")
or die ("Problemas en consulta:".mysql_error());

if($reg=mysql_fetch_array($registro))
{

	echo $reg['nombre']."<br>";
	echo $reg['pass']."<br>";
}
	
else {

	echo '<script>alert("DATOS NO ENCONTRADOS")</script>';
	echo "<script>location.href='index.php'</script>;";
	}

/*FALTA TERMINARE ELIMINAR MIRAR NIMBUS*/

?>

