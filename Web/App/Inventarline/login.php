<?php
include ("conexion.php");

if(isset($_POST['name']) && !empty($_POST['name']) &&
	isset($_POST['password']) && !empty($_POST['password']))

{
$con=mysql_connect($host,$user,$pass) or die ("problemas al conectar");
mysql_select_db($db, $con) or die ("problemas al conectar con la bd");
$estandar=mysql_query("SELECT * FROM login where name='$_POST[name]' AND password='$_POST[password]' ",$con);
}

if($row=mysql_fetch_array($estandar))
{
	header("location:Principal/index.html");
}
else{
	echo "<center>";
	echo "ERROR USUARIO O CONTRASEÑA INCORRECTO";
	echo "<br>";
	$regresar='<a href="index.php">regresar</a>';
	echo $regresar;
}

?>