<html>
  <head><title>Listado de Productos</title></head>
   <meta charset="utf-8">
  <body>
   <h3><b>Lista de productos</b></h3>
   <?php
     include("LibConexion.php");//invocamos a la libreria
     $link=conectar();//funcion conectar de la libreria
     //cargamos la informacion del select en la var result
        $result=mysql_query("select * from product",$link);
        /*$marca=mysql_query("select name from brand",$link);*/
   ?>
   <table border="1" cellspacing="1" cellpadding="1" style="margin: 0 auto;">
     <tr><td>Codigo</td><td>Nombre</td><td>Precio</td><td>Stock</td><!--<td>Marca</td>--></tr> 
   <?php
   //recorre linea por linea el resultado obtenido de la variable result 
     while($row= mysql_fetch_array($result) /*and $raw= mysql_fetch_array($marca)*/)
  	{
  	 printf("<tr><td>%d</td><td>%s</td><td>%s</td><td>%d</td></tr>",
               $row["id"],$row["name"],$row["price"],$row["stock"]/*,$raw["name"]*/);
     	} 
  	mysql_free_result($result);//libera de memoria la variable $result
  	mysql_close($link);//cierra la conexion a la base de datos
    ?> 
    </table>
  </body>
  </html>