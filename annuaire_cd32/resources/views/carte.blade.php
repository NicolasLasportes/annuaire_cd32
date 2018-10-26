<!DOCTYPE html>
<html>
<head>
	<title>Leaflet Map</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="leaflet/leaflet.css">
	<link rel="stylesheet" type="text/css" href="css/style_carte.css">
</head>
<body>
	<nav class="navbar navbar-light bg-light">
		<a class="navbar-brand" href="http://www.gers.fr/">
			<img src="images/logo_cd32.jpg" width="60" height="60" alt="logo conseil départemental">
		</a>
		<div class="dropdown">
			<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Producteur</button>
			<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				<a class="dropdown-item" href="#">Ajouter Producteur</a>
				<a class="dropdown-item" href="#">Liste Producteur</a>
			</div>
		</div>
		<div class="dropdown">
			<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Produit</button>
			<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				<a class="dropdown-item" href="#">Liste Produit</a>
			</div>
		</div>	
		<form class="form-inline">
			<input id="input"class="form-control mr-sm-2" type="search" placeholder="Rechercher..." aria-label="Search">
			<button id="rechercher" class="btn btn-outline-secondary my-2 my-sm-0">Recherche</button>
		</form>
	</nav>

	<div id="map"></div>
	<div id="table"></div>

	<button type="button" class="btn btn-secondary btn-lg btn-block">Afficher les producteurs ciblé</button>

	<script type="text/javascript"src="leaflet/leaflet.js"></script>
	<script type="text/javascript" src="node_modules/jquery/dist/jquery.min.js"></script>
	<script type="text/javascript" src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/carte.js"></script>
</body>
</html>