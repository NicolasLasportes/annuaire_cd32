<!DOCTYPE html>
<html>
<head>
	<title>Leaflet Map</title>

	<meta charset="utf-8">

	<!-- ICI, LEAFLET NOUS DEMANDE D'INSÉRER CES LIGNES -->
	<!-- ON LES PLACE AVANT LE LINK CSS -->
	<!-- LIEN VERS LEAFLET : https://leafletjs.com/examples/quick-start/ -->
	<link rel="stylesheet" href="https://unpkg.com/leaflet@1.3.4/dist/leaflet.css" integrity="sha512-puBpdR0798OZvTTbP4A8Ix/l+A4dHDD0DGqYW6RQ+9jxkRFclaxxQb/SJAWZfWAkuyeQUytO7+7N4QKrDh+drA==" crossorigin=""/>

	<link rel="stylesheet" type="text/css" href="node_modules/bootstrap/dist/css/bootstrap.min.css">

	<link rel="stylesheet" type="text/css" href="css/style_carte.css">
</head>
<body>

	<nav id="nav0" class="navbar navbar-light bg-light">

		<!-- LOGO CD32 -->
		<a class="navbar-brand" href="http://www.gers.fr/">
			<img src="images/logo_cd32.jpg" width="60" height="60" alt="Logo du Conseil Départemental du Gers">
		</a>
		
		<!-- DROPDOWN PRODUCTEURS -->
		<div class="dropdown">
			<button id="dropdown1" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Producteurs</button>
			<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				<a class="dropdown-item" href="#">Ajouter un producteur</a>
				<a class="dropdown-item" href="#">Supprimer un producteur</a>

			</div>
		</div>

		<!-- DROPDOWN PRODUITS -->
		<div class="dropdown">
			<button id="dropdown2" type="button" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Produits</button>
			<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				<a class="dropdown-item" href="#">Afficher la liste des produits</a>
				<a class="dropdown-item" href="#">Second action</a>
				<a class="dropdown-item" href="#">Third action</a>
			</div>
		</div>

		<!-- BOUTON DECONNEXION -->
		<nav class="navbar navbar-light bg-light">
			<button id="validation" type="button" class="btn btn-secondary">Deconnexion</button>
		</nav>


		<!-- BOUTON RECHERCHE -->
		<form class="form-inline">
			<input id="input" class="form-control mr-sm-2" type="search" placeholder="Rechercher..." aria-label="Search">
			<button id="rechercher" class="btn btn-outline-secondary my-2 my-sm-0" type="submit">Recherche</button>
		</form>
		
	</nav>
	<!-- NAV LOGOS -->
	<nav id="nav1" class="navbar navbar-light bg-light">

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
				  <button class="btn btn-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<img src="images/boulangerie.png" width="60" height="60" alt="Icone boulangerie">
				  </button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<a class="dropdown-item" href="#">Action 1</a>
						<a class="dropdown-item" href="#">Action 2</a>
						<a class="dropdown-item" href="#">Action 3</a>
					</div>
			</div>

			<div class="dropdown">
				  <button class="btn btn-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<img src="images/cereale_legumineuse.png" width="60" height="60" alt="Icone céréal et légumineuse">
				  </button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<a class="dropdown-item" href="#">Action 1</a>
						<a class="dropdown-item" href="#">Action 2</a>
						<a class="dropdown-item" href="#">Action 3</a>
					</div>
			</div>

			<div class="dropdown">
				  <button class="btn btn-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<img src="images/epicerie.png" width="60" height="60" alt="Icone épicerie">
				  </button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<a class="dropdown-item" href="#">Action 1</a>
						<a class="dropdown-item" href="#">Action 2</a>
						<a class="dropdown-item" href="#">Action 3</a>
					</div>
			</div>

			<div class="dropdown">
				  <button class="btn btn-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<img src="images/fruit.png" width="60" height="60" alt="Icone fruit">
				  </button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<a class="dropdown-item" href="#">Action 1</a>
						<a class="dropdown-item" href="#">Action 2</a>
						<a class="dropdown-item" href="#">Action 3</a>
					</div>
			</div>

			<div class="dropdown">
				  <button class="btn btn-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<img src="images/legume.png" width="60" height="60" alt="Icone légume">
				  </button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<a class="dropdown-item" href="#">Action 1</a>
						<a class="dropdown-item" href="#">Action 2</a>
						<a class="dropdown-item" href="#">Action 3</a>
					</div>
			</div>

			<div class="dropdown">
				  <button class="btn btn-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<img src="images/milk.png" width="60" height="60" alt="Icone lait">
				  </button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<a class="dropdown-item" href="#">Action 1</a>
						<a class="dropdown-item" href="#">Action 2</a>
						<a class="dropdown-item" href="#">Action 3</a>
					</div>
			</div>

			<div class="dropdown">
				  <button class="btn btn-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<img src="images/multiple.png" width="60" height="60" alt="Icone multiple">
				  </button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<a class="dropdown-item" href="#">Action 1</a>
						<a class="dropdown-item" href="#">Action 2</a>
						<a class="dropdown-item" href="#">Action 3</a>
					</div>
			</div>

			<div class="dropdown">
				  <button class="btn btn-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<img src="images/poisson.png" width="60" height="60" alt="Icone poisson">
				  </button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<a class="dropdown-item" href="#">Action 1</a>
						<a class="dropdown-item" href="#">Action 2</a>
						<a class="dropdown-item" href="#">Action 3</a>
					</div>
			</div>

			<div class="dropdown">
				  <button class="btn btn-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<img src="images/viande.png" width="60" height="60" alt="Icone viande">
				  </button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<a class="dropdown-item" href="#">Action 1</a>
						<a class="dropdown-item" href="#">Action 2</a>
						<a class="dropdown-item" href="#">Action 3</a>
					</div>
			</div>

	</nav>

	<!-- ICI, ON CRÉE UNE DIV DE LA MÊME FAÇON QU'ON LE FERAIT SUR GOOGLE MAP -->
	<!-- ON LUI DONNE L'ID MAP -->
	<div id="map"></div>

	<table></table>

	<!-- BOUTON AFFICHER -->
	<nav class="navbar navbar-light bg-light">
		<button id="validation" type="button" class="btn btn-secondary">Afficher</button>
	</nav>

	<!-- FOOTER START-->
	<footer class="page-footer font-small blue">

 	 	<!-- COPYRIGHT START -->
  		<div id="copyright" class="footer-copyright text-center py-3">© 2018 Copyright:
   			<a href="https://www.lemonde.fr/">Conseil Départemental du Gers</a>
  		</div>

	</footer>

	<!-- SCRIPT FOURNI PAR LEAFLET QU'ON PLACE AVANT LE SCRIPT JAVASCRIPT -->
	<!-- À METTRE ABSOLUMENT APRÈS LE LINK CSS -->
	 <script src="https://unpkg.com/leaflet@1.3.4/dist/leaflet.js" integrity="sha512-nMMmRyTVoLYqjP9hrbed9S+FzjZHW5gY1TWCHA5ckwXZBadntCNs8kEqAWdrb9O7rxbCaA4lKTIWjDXZxflOcA==" crossorigin=""></script>

	<!-- SCRIPT JQUERY -->
	<script type="text/javascript" src="node_modules/jquery/dist/jquery.min.js"></script>

	<!-- SCRIPT BOOSTSTRAP -->
	<script type="text/javascript" src="node_modules/bootstrap/dist/js/bootstrap.min.js"></script>

	<!-- SCRIPT JS -->
	<script type="text/javascript" src="js/appCarte.js"></script>

</body>
</html>