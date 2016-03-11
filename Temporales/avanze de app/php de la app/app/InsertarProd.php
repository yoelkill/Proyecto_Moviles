<?php
if($_SERVER["REQUEST_METHOD"]=="POST"){
	require 'connection.php';
	createStudent();
}
function createstudent()
{
	global $connect;
	
	$product = $_POST["product"];	
	$price = $_POST["price"];
	$stock = $_POST["stock"];
	$category = $_POST["category"];
	$Brand = $_POST["Brand"];
	$size = $_POST["size"];
	$color = $_POST["color"];

	$query = " INSERT INTO persona(CODPERSO,NOMPERSO,APELLIPERSO) VALUES ('$product','$price','$stock','$category',
																			'$Brand','$size','$color');";
	mysqli_query($connect, $query) or die (mysqli_error($connect));
	mysqli_close($connect);
}
?>