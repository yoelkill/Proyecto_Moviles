<?php
include("conexion.php");

if(isset($_POST['nombre'])&& !empty($_POST['nombre'])&&
	isset($_POST['pass']) && !empty($_POST['pass']))

{

$con=mysql_connect($host,$user,$pass) or die ("Problemas al conectar");
mysql_select_db($db, $con) or die ("Problemas al conectar con la bd");

$estandar=mysql_query("SELECT * FROM codigo where nombre='$_POST[nombre]' AND pass='$_POST[pass]' ",$con);
}
if($row=mysql_fetch_array($estandar))
{

	header("location: http://www.josevalero.esy.es/WEB2%20PROYECTO/");//aqui va tu pagina web que se enlaza
}
	
else {

	echo '<script>alert("USUARIO NO REGISTRADO")</script>';
	echo "<script>location.href='index.php'</script>;";
	//echo "<meta charset=utf-8/>";
	//echo "<center>";
	//echo "ERROR USUARIO O CONTRASEÑA INCORRECTO";
	//echo "<br>";
	//$regresar='<class=Footer-button"> <a href="index.php">Regresar</a>';
	//echo $regresar;

	}

?>