<?php
 		session_start();
		include_once('php_conexion.php'); 
		include_once('Class/funciones.php'); 
		include_once('Class/class_Employe.php');
		if($_SESSION['tipo_usu']=='ADMINISTRADOR' or $_SESSION['tipo_usu']=='USUARIO'){
		}else{
			header('location:error.php');
		}
		if(!empty($_GET['estado'])){
			$nit=limpiar($_GET['estado']);
			$cans=mysql_query("SELECT   *
    FROM login c INNER JOIN employee d
            ON c.id = d.idFkLogin
   WHERE  estado='s' and id='$nit'");
			if($dat=mysql_fetch_array($cans)){
				$xSQL="Update employee Set idFkRole='1' Where id='$nit'";
				mysql_query($xSQL);
				header('location:empleado.php');
			}else{
				$xSQL="Update employee Set idFkRole='2' Where id='$nit'";
				mysql_query($xSQL);
				header('location:empleado.php');
			}
		}
		
		#paginar
		$maximo=5;
		if(!empty($_GET['pag'])){
			$pag=limpiar($_GET['pag']);
		}else{
			$pag=1;
		}
		$inicio=($pag-1)*$maximo;
		
			$cans=mysql_query("SELECT COUNT(name)as total FROM employee");
			if($dat=mysql_fetch_array($cans)){
				$total=$dat['total']; #inicializo la variable en 0
			}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Blanco</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/bootstrap-responsive.css" rel="stylesheet">
    <link href="css/docs.css" rel="stylesheet">
    <link href="js/google-code-prettify/prettify.css" rel="stylesheet">
    <script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>
	<script src="js/jquery.js"></script>
    <script src="js/bootstrap-transition.js"></script>
    <script src="js/bootstrap-alert.js"></script>
    <script src="js/bootstrap-modal.js"></script>
    <script src="js/bootstrap-dropdown.js"></script>
    <script src="js/bootstrap-scrollspy.js"></script>
    <script src="js/bootstrap-tab.js"></script>
    <script src="js/bootstrap-tooltip.js"></script>
    <script src="js/bootstrap-popover.js"></script>
    <script src="js/bootstrap-button.js"></script>
    <script src="js/bootstrap-collapse.js"></script>
    <script src="js/bootstrap-carousel.js"></script>
    <script src="js/bootstrap-typeahead.js"></script>
    <script src="js/bootstrap-affix.js"></script>
    <script src="js/holder/holder.js"></script>
    <script src="js/google-code-prettify/prettify.js"></script>
    <script src="js/application.js"></script>

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="assets/js/html5shiv.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="assets/ico/favicon.png">

</head>
<body data-spy="scroll" data-target=".bs-docs-sidebar">
<div align="center">
    <table width="95%" border="0">
      <tr>
        <td>
       	  <table class="table table-bordered">
              <tr class="success">
                <td>
                    <div class="row-fluid">
                      <div class="span6">
                        	<h3><img src="img/icono_.jpg" class="img-circle img-polaroid" width="70" height="65"> 
                        	Registro & Control de Empleados</h3>
                      </div>
                      <div class="span6">
                      	<div align="right">
                       	<a href="#nuevo" role="button" class="btn" data-toggle="modal">
                            	<strong><i class="icon-user"></i> Ingresar Nuevo</strong>
                        </a>
                        <div class="btn-group">
                            <button class="btn" data-toggle="dropdown">
                            	<i class="icon-search"></i> <strong>Consultar por </strong> <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu">
                              <?php
									$c=mysql_query("SELECT * FROM employee WHERE estado='s'");
									while($d=mysql_fetch_array($c)){
										echo '<li><a href="empleado.php?cursos='.$d['id'].'">'.$d['nombre'].'</a></li>';	
									}
							?>
                                <li><a href="empleado.php?cursos=0">Todos</a></li>
                            </ul>
                        </div>
                        <br><br>
                        <form name="form1" method="post" action="">
                            <div class="input-prepend">
                                <span class="add-on"><i class="icon-search"></i></span>
                                <input name="bus" type="text" placeholder="Buscar Empleado" class="input-xlarge" autocomplete="off">
                            </div>
                        </form>
                        </div>
                      </div>
                    </div>
                </td>
              </tr>
            </table>

        </td>
      </tr>
      <tr>
        <td>
        	<?php 
				if(!empty($_POST['name']) and !empty($_POST['dni'])){
					$name=limpiar($_POST['name']);			$lastname=limpiar($_POST['lastname']);
					$dni=limpiar($_POST['dni']);				$dateborn=limpiar($_POST['dateborn']);
					$city=limpiar($_POST['city']);			$datestart=limpiar($_POST['datestart']);
					$adress=limpiar($_POST['adress']);
					
					if(empty($_POST['id'])){
						$c_empleado = new Proceso_Empleado($name, $lastname, $dni, $dateborn, $datestart, $city, $address, $idFkLogin,'2', $codigo);
						$c_empleado->crear();
						
						$can=mysql_query("SELECT MAX(id)as maximo FROM employee");
						if($dato=mysql_fetch_array($can)){
							$codigo=$dato['maximo'];
							//subir la imagen del articulo
							$nameimagen = $_FILES['imagen']['name'];
							$tmpimagen = $_FILES['imagen']['tmp_name'];
							$extimagen = pathinfo($nameimagen);
							$urlnueva = "empleados/".$codigo.".jpg";			
							if(is_uploaded_file($tmpimagen)){
								copy($tmpimagen,$urlnueva);	
							}
						}
						echo '	<div class="alert alert-info" align="center">
									<button type="button" class="close" data-dismiss="alert">×</button>
									<strong>
										El empleado/a "'.$nombre.' '.$apellido.'" Registrado con Exito en la Base de Datos							
									</strong>
								</div>';
								
					}elseif(!empty($_POST['id'])){
						$codigo=$_POST['id'];
						$a_empleado = new Proceso_Empleado($name, $lastname, $dni, $dateborn, $datestart, $city, $address, $idFkLogin,'2',$codigo);
						$a_empleado->actualizar();
												
						//subir la imagen del articulo
						$nameimagen = $_FILES['imagen']['name'];
						$tmpimagen = $_FILES['imagen']['tmp_name'];
						$extimagen = pathinfo($nameimagen);
						$urlnueva = "empleados/".$codigo.".jpg";			
						if(is_uploaded_file($tmpimagen)){
							copy($tmpimagen,$urlnueva);	
						}
						echo '	<div class="alert alert-info" align="center">
									<button type="button" class="close" data-dismiss="alert">×</button>
									<strong>
										El empleado/a "'.$nombre.' '.$apellido.'" Actualizado con Exito en la Base de Datos							
									</strong>
								</div>';
					}
					
				}
			?>
        	<table class="table table-bordered table table-hover">
              <tr class="success">
                <td width="27%"><strong>Apellido y Nombre</strong></td>
                <td width="12%"><center><strong>DNI</strong></center></td>
                <td width="12%"><center><strong>Email</strong></center></td>
                <td width="12%"><center><strong>Data Start</strong></center></td>
                <td width="15%"><center><strong>Departamento</strong></center></td>
                <td width="30%"><center><strong>Address</strong></center></td>
                <td width="14%"><center><strong>Estado</strong></center></td>
                <td width="10%"><center><strong>pay</strong></center></td>
                <td width="32%"><center><strong>role</strong></center></td>
                <td width="8%">&nbsp;</td>
                
                  
              </tr>
              <?php
			  	if(empty($_GET['cursos'])){
					if(empty($_POST['bus'])){
						$sql="SELECT * FROM employee ORDER BY lastname LIMIT $inicio, $maximo";
					}else{
						$bus=limpiar($_POST['bus']);
						$sql="SELECT * FROM employee WHERE name LIKE '$bus%' or lastname LIKE '$bus%'or dni LIKE '$bus%' ORDER BY lastname LIMIT $inicio, $maximo";
					}
				}else{
					$bus=limpiar($_GET['cursos']);
					if($bus<>0){
						$sql="SELECT * FROM employee WHERE id='$bus' ORDER BY lastname LIMIT $inicio, $maximo";
					}else{
						$sql="SELECT * FROM employee ORDER BY lastname LIMIT $inicio, $maximo";
					}
				}
			  	
			  	$can=mysql_query($sql);
				while($dato=mysql_fetch_array($can)){	
					$producto = new Consultar_Producto($dato['idFkRole']);
			  ?>
                  <tr>
                    <td><i class="icon-user"></i> <?php echo trim($dato['lastname']).' '.trim($dato['name']); ?></td>
                    <td><center><?php echo $dato['dni']; ?></center></td>
                <td><center><?php echo $dato['email']; ?></center></td>
                <td><center><?php echo $dato['datestart']; ?></center></td>
                <td><center><?php echo $dato['city']; ?></center></td>
                <td><center><?php echo $dato['address']; ?></center></td>
                    <td>
                    	<center>
                        <a href="empleado.php?estado=<?php echo $dato['id']; ?>" title="Cambiar Estado">
							<?php echo estado($dato['idFkRole']); ?>
                        </a>
                        </center>
                    </td>
                  <td><center><?php echo $producto->consultar('pay'); ?></center></td>  
                
                <td><center><?php echo $producto->consultar('description'); ?></center></td>
                    <td>
                    	<a href="#actualizar<?php echo $dato['id']; ?>" role="button" class="btn btn-mini" data-toggle="modal" title="Actualizar Informacion">
                    		<i class="icon-edit"></i>
                        </a>
                    </td>
                  </tr>
                  <!--actualizar empleado-->
                    <div id="actualizar<?php echo $dato['id']; ?>" 
                    class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <form name="form2" method="post" enctype="multipart/form-data" action="">
                    	<input type="hidden" name="id" value="<?php echo $dato['id']; ?>">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            <h3 id="myModalLabel">Actualizar Cliente</h3>
                        </div>
                        <div class="modal-body">
                            <div class="row-fluid">
                                <div class="span6">
                                    <strong>Nombre del Empleado</strong><br>
                                    <input type="text" name="nombre" autocomplete="off" required value="<?php echo $dato['name']; ?>"><br>
                                    <strong>DNI</strong><br>
                                  <input type="text" name="nit" autocomplete="off" required value="<?php echo $dato['dni']; ?>"><br>
                                    <strong>Fecha Nacimiento</strong><br>
                                    <input type="date" name="fechan" autocomplete="off" required value="<?php echo $dato['dateborn']; ?>"><br>
                                    <strong>Rutina</strong><br>
                                    <select name="curso">
                                    	<?php
											$c=mysql_query("SELECT   *
                                                                                             FROM role ");
											while($d=mysql_fetch_array($c)){
												if($d['id']==$dato['description']){	
													echo '<option value="'.$d['id'].'" selected>'.$d['description'].'</option>';
												}else{
													echo '<option value="'.$d['id'].'">'.$d['description'].'</option>';
												}
											}
										?>
                                        
                                    </select>
                                    <strong>pay</strong><br>
                                    <select name="curso">
                                    	<?php
											$c=mysql_query("SELECT   *
                                                                                             FROM role ");
											while($d=mysql_fetch_array($c)){
												if($d['id']==$dato['pay']){	
													echo '<option value="'.$d['id'].'" selected>'.$d['pay'].'</option>';
												}else{
													echo '<option value="'.$d['id'].'">'.$d['pay'].'</option>';
												}
											}
										?>
                                        
                                    </select>
                                    <strong>Fotografia</strong><br>
                                    <input type="file" name="imagen" id="imagen">
                                </div>
                                <div class="span6">
                                    <strong>Apellidos del Empleado</strong><br>
                                    <input type="text" name="apellido" autocomplete="off" value="<?php echo $dato['lastname']; ?>"><br>
                                    <strong>Departamento</strong><br>
                                    <input type="text" name="telefono" autocomplete="off" value="<?php echo $dato['city']; ?>"><br>
                                    <strong>adrress</strong><br>
                                    <input type="text" name="folio" autocomplete="off" value="<?php echo $dato['address']; ?>"><br><br>
                                    <strong>login</strong><br>
                                    <input type="text" name="telefono" autocomplete="off" value="<?php echo $dato['idFkLogin']; ?>"><br>
                                    <strong>roll</strong><br>
                                    <input type="text" name="telefono" autocomplete="off" value="<?php echo $dato['idFkRole']; ?>"><br>
                                    
                                    <center><button type="submit" class="btn"><strong><i class="icon-ok"></i> Actualizar Cliente</strong></button></center>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button class="btn" data-dismiss="modal" aria-hidden="true"><strong><i class="icon-remove"></i> Cerrar</strong></button>
                        </div>
                        </form>
                    </div>
              <?php } ?>
            </table>
			<?php 
				$can=mysql_query($sql);
				if(!$dato=mysql_fetch_array($can)){				
					echo '<div class="alert alert-info" align="center"><strong>No hay Empleados Registrados en la BD</strong></div>';
				}
			?>
        </td>
      </tr>
    </table>
    <div class="pagination">
        <ul>
        	<?php
			if(empty($_GET['cursos']) and empty($_POST['bus'])){
				$tp = ceil($total/$maximo);#funcion que devuelve entero redondeado
         		for	($n=1; $n<=$tp ; $n++){
					if($pag==$n){
						echo '<li class="active"><a href="empleado.php?pag='.$n.'">'.$n.'</a></li>';	
					}else{
						echo '<li><a href="empleado.php?pag='.$n.'">'.$n.'</a></li>';	
					}
				}
				
			}
			?>
        </ul>
    </div>
</div>
<!--crear nuevo Empleado-->
<div id="nuevo" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<form name="form2" method="post" enctype="multipart/form-data" action="">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
		<h3 id="myModalLabel">Ingresar Nuevo Empleado</h3>
	</div>
	<div class="modal-body">
		<div class="row-fluid">
        	<div class="span6">
            	<strong>Nombre del Empleado</strong><br>
            	<input type="text" name="nombre" autocomplete="off" required><br>
                <strong>Dni</strong><br>
              <input type="text" name="nit" autocomplete="off" required><br>
                <strong>Fecha Nacimiendo</strong><br>
                <input type="date" name="fechan" autocomplete="off" required value="<?php echo date('Y-m-d'); ?>"><br>
                <strong>Role</strong><br>
                <select name="curso">
                	<?php
						$c=mysql_query("SELECT * FROM role ");
						while($d=mysql_fetch_array($c)){
							echo '<option value="'.$d['id'].'">'.$d['description'].'</option>';
						}
					?>
                </select>
                <strong>Fotografia</strong><br>
                <input type="file" name="imagen" id="imagen">
            </div>
            <div class="span6">
            	<strong>Apellidos del Empleado</strong><br>
                <input type="text" name="apellido" autocomplete="off"><br>
                <strong>Departamento</strong><br>
                <input type="text" name="telefono" autocomplete="off"><br>
                <strong>Adress</strong><br>
                <input type="text" name="folio" autocomplete="off"><br><br>
                <center><button type="submit" class="btn"><strong><i class="icon-ok"></i> Ingresar Empleado</strong></button></center>
            </div>
		</div>
	</div>
  	<div class="modal-footer">
		<button class="btn" data-dismiss="modal" aria-hidden="true"><strong><i class="icon-remove"></i> Cerrar</strong></button>
	</div>
    </form>
</div>
</body>
</html>