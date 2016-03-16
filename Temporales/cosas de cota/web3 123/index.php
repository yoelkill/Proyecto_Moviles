<!doctype html>
<html lang="es">

	<head>

		<title>Ingresar</title>
			<meta charset="utf-8"/>
			<link rel="stylesheet" href="css/estilo.css">
			<link rel="stylesheet" href="css/normalize.css">

			<meta name="viewport" content="width=device-width, maximun-scale=1">

			<script src='https://www.google.com/recaptcha/api.js?hl=es'></script>
	

	</head>
	<body>

		<script src="http://maps.google.com/maps/api/js?sensor=false" type="text/javascript"></script>

		<footer id="contacto" class="Footer">
			<h1 class="Footer-title1">FORMULARIO DE INICIO DE SESIÓN </h1>
			<footer class="Footer-form">
			<h2 class="Footer-title">BIENVENIDO </h2>
			<p class="Footer-desciption">Ingrese usuario y contraseña</p>

		<form action="login.php" method="post">

			<label>Usuario</label>
			<input class="Footer-formInput" type="text" name="nombre" placeholder="Usuario" name="asunto"/>
			
			<label>Contraseña</label>
			<input class="Footer-formInput" type="password" name="pass" placeholder="Contraseña">
			
			<input class="Footer-button" type="submit" value="Ingresar"><br/><br/>
			
			<footer class="Footer-form1">
			<font color="2A5E76"><label>¿No se encuentra Registrado?<br/></label></font>
			<a class="Profile-link" class="Footer-button1" href="form.php">Registrar</a>
		
					<center>
						<div class="g-recaptcha" data-theme="dark" data-sitekey="6LeFKhITAAAAADihn7mHoPmetOJ9oIKtcMEbZZWV">
						</div>
					</center>
				</footer>
				</footer>
			<footer class="Footer-form">
			<center>
				<h2>Usted se localiza</h2>
			<script>

			function success(position) {
 			var status = document.getElementById('status');
  			status.innerHTML = " ";

  			var mapcanvas = document.createElement('div');
  			mapcanvas.id = 'mapcanvas';
  			mapcanvas.style.height = '380px';
  			mapcanvas.style.width = '560px';

  			document.getElementById('map').appendChild(mapcanvas);

  			var latlng = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);

  			var myOptions = {
    		zoom: 15,
    		center: latlng,
    		mapTypeControl: false,
    		navigationControlOptions: {style: google.maps.NavigationControlStyle.SMALL},
    		mapTypeId: google.maps.MapTypeId.ROADMAP
  			};

  			var map = new google.maps.Map(document.getElementById("mapcanvas"), myOptions);

  			var marker = new google.maps.Marker({
      		position: latlng,
      		map: map,
      		title:"Usted está aquí."
  			});
		}

		function error(msg) {
  		var status = document.getElementById('status');
  		status.innerHTML= "Error [" + error.code + "]: " + error.message;  
		}

		if (navigator.geolocation) {
  		navigator.geolocation.getCurrentPosition(success, error,{maximumAge:60000, timeout: 4000});
		} else {
  		error('Su navegador no tiene soporte para su geolocalización.');
		}

		</script>

		<p id="status">Buscando su localización</p>
			<div id="map"></div>
			</form>
			</footer>
			</footer>
		</center>
	</body>
</html> 

