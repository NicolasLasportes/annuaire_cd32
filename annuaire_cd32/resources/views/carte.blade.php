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
				<a class="dropdown-item" href="http://127.0.0.1:8000/admin/producteur19">Ajouter Producteur</a>
				<a class="dropdown-item liste" href="http://127.0.0.1:8000/admin/producteur19">Liste Producteur</a>
			</div>
		</div>
		<div class="dropdown">
			<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Produit</button>
			<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				<a class="dropdown-item" href="#">Liste Produit</a>
			</div>
		</div>	
		<div class="form-inline">
			<input id="saisieRecherche"class="form-control mr-sm-2" type="search" placeholder="Rechercher..." aria-label="Search">
			<button id="rechercher" class="btn btn-outline-secondary my-2 my-sm-0">Recherche</button>
		</div>
	</nav>


	<div class="icones">
		<div class="dropdown">
			<button class="btn btn-ligth dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<a href="#"><img src="images/viande.png" width="60" height="60" alt=""></a>
			</button>
			<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				<a class="dropdown-item" href="#">Action</a>
				<a class="dropdown-item" href="#">Another action</a>
				<a class="dropdown-item" href="#">Something else here</a>
			</div>
		</div>

		<div class="dropdown">
			<button class="btn btn-ligth dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<a href="#"><img src="images/milk.png" width="60" height="60" alt=""></a>
			</button>
			<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				<a class="dropdown-item" href="#">Action</a>
				<a class="dropdown-item" href="#">Another action</a>
				<a class="dropdown-item" href="#">Something else here</a>
			</div>
		</div>

		<div class="dropdown">
			<button class="btn btn-ligth dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<a href="#"><img src="images/boulangerie.png" width="60" height="60" alt=""></a>
			</button>
			<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				<a class="dropdown-item" href="#">Action</a>
				<a class="dropdown-item" href="#">Another action</a>
				<a class="dropdown-item" href="#">Something else here</a>
			</div>
		</div>

		<div class="dropdown">
			<button class="btn btn-ligth dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<a href="#"><img src="images/epicerie.png" width="60" height="60" alt=""></a>
			</button>
			<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				<a class="dropdown-item" href="#">Action</a>
				<a class="dropdown-item" href="#">Another action</a>
				<a class="dropdown-item" href="#">Something else here</a>
			</div>
		</div>

		<div class="dropdown">
			<button class="btn btn-ligth dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<a href="#"><img src="images/fruit.png" width="60" height="60" alt=""></a>
			</button>
			<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				<a class="dropdown-item" href="#">Action</a>
				<a class="dropdown-item" href="#">Another action</a>
				<a class="dropdown-item" href="#">Something else here</a>
			</div>
		</div>

		<div class="dropdown">
			<button class="btn btn-ligth dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<a href="#"><img src="images/legume.png" width="60" height="60" alt=""></a>
			</button>
			<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				<a class="dropdown-item" href="#">Action</a>
				<a class="dropdown-item" href="#">Another action</a>
				<a class="dropdown-item" href="#">Something else here</a>
			</div>
		</div>

		<div class="dropdown">
			<button class="btn btn-ligth dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<a href="#"><img src="images/multiple.png" width="60" height="60" alt=""></a>
			</button>
			<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				<a class="dropdown-item" href="#">Action</a>
				<a class="dropdown-item" href="#">Another action</a>
				<a class="dropdown-item" href="#">Something else here</a>
			</div>
		</div>

		<div class="dropdown">
			<button class="btn btn-ligth dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<a href="#"><img src="images/poisson.png" width="60" height="60" alt=""></a>
			</button>
			<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				<a class="dropdown-item" href="#">Action</a>
				<a class="dropdown-item" href="#">Another action</a>
				<a class="dropdown-item" href="#">Something else here</a>
			</div>
		</div>

		<div class="dropdown">
			<button class="btn btn-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<img src="images/boisson.png" width="60" height="60" alt="Icone boisson">
			</button>
			<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				<a class="dropdown-item" href="#">Action 1</a>
				<a class="dropdown-item" href="#">Action 2</a>
				<a class="dropdown-item" href="#">Action 3</a>
			</div>
		</div>

		<div class="dropdown">
			<button class="btn btn-ligth dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<a href="#"><img src="images/cereale_legumineuse.png" width="60" height="60" alt=""></a>
			</button>
			<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				<a class="dropdown-item" href="#">Action</a>
				<a class="dropdown-item" href="#">Another action</a>
				<a class="dropdown-item" href="#">Something else here</a>
			</div>
		</div>
	</ul>
</div>

<div id="map"></div>

<button type="button" class="btn btn-secondary btn-lg btn-block">Afficher les producteurs ciblé</button>

<div id="tableau">
	<table>
		<thead>
			<th>Code postal</th>
			<th>coordonnées DD</th>
			<th>Lieut-dit</th>
			<th>Email</th>
			<th>Nom entreprise</th>
			<th>Nom producteur</th>
			<th>Numero producteur</th>
			<th>Site internet</th>
			<th>Téléphone 1</th>
			<th>Téléphone 2</th>
			<th>Voie</th>
			<th>Ville</th>
		</thead>
		<tbody id="table">
			<!-- Affichage du tableau des producteur de la page admin. -->
		</tbody>
	</table>
</div>

<script type="text/javascript"src="leaflet/leaflet.js"></script>
<script type="text/javascript" src="node_modules/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="node_modules/bootstrap/js/dist/dropdown.js"></script>
<script type="text/javascript" src="js/carte.js"></script>
</body>
</html>