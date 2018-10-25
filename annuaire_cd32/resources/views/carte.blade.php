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
		<button id="product">Producteurs
			<select>
				<option>Ajouter producteur</option>
				<option>Liste producteurs</option>
				<option selected=""></option>
			</select>
		</button>
		<button id="prod">Produits
			<select>
				<option>Liste produits</option>
				<option selected=""></option>
			</select>
		</button>	
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
	<script type="text/javascript" src="js/carte.js"></script>
</body>
</html>