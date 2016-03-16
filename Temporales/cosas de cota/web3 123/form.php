<!doctype html>
<html lang="es">
	<head>
		<title>Registrar</title>
			<meta charset="utf-8"/>
			<link rel="stylesheet" href="css/estilo.css">
			<link rel="stylesheet" href="css/normalize.css">

			<meta name="viewport" content="width=device-width, maximun-scale=1">

			<script src='https://www.google.com/recaptcha/api.js?hl=es'></script>
	</head>
	<body>

	<script src="http://maps.google.com/maps/api/js?sensor=false" type="text/javascript"></script>
	
	
	<footer id="contacto" class="Footer">

		<footer class="Footer-form2">
		
		</footer>


		<h1 class="Footer-title1">FORMULARIO DE REGISTRO </h1>

		<footer class="Footer-form">
			<h2 class="Footer-title">REGISTRAR </h2>
			<p class="Footer-desciption">Ingrese usuario y contraseña</p>
		<form action="insertar.php" method="post" name="form">

				<label>Usuario</label>
				<input class="Footer-formInput" type="text" name="nombre" placeholder="Nombre" name="asunto"/>
			
				<label>Contraseña</label>
				<input class="Footer-formInput" type="password" name="pass" placeholder="Contraseña">
			
				<input class="Footer-button" type="submit" value="Insertar datos"><br/><br/>

				</div>
				</div>


				<footer class="Footer-form1">

				<a class="Profile-link" class="Footer-button" href="index.php">Regresar</a>
			
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
  			mapcanvas.style.height = '370px';
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
		</footer>
		</form>
			<footer class="Footer-form2">
			<FORM action="select.php" method="post" name="form">
			<p>BUSCAR</p>
			<input class="Footer-formInput" type="text" name="nombre" placeholder="Nombre"/><br/><br/>
			<input class="Footer-button" type="submit" value="Seleccionar"><br/><br/>
			</FORM>
			</footer>
		</footer>	
	</center>	
	</body>
</html>