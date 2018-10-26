// DECLARATION DES VARIABLES DES COORDONNÉES GPS (DEGRÉS DIGITAUX) 
var auch = [43.646548, 0.601992];
var map = L.map('map').setView(auch,6);

// APPEL DE LA TILELAYER
L.tileLayer('https://korona.geog.uni-heidelberg.de/tiles/roads/x={x}&y={y}&z={z}', {
	maxZoom: 20
}).addTo(map);

// AFFICHAGE DU MARKER ET DE LA POPUP
var marker = L.marker(auch,).addTo(map);
	marker.bindPopup('<h6>Mon domicile</h6>');

// LIEN VERS LE CONTRÔLEUR EN RELATION AVEC LA BDD
$.ajax({
	url: "/apiProducteurUtilisateur",
	method: "GET",
	dataType: "json"
// FONCTION POUR RÉCUPÉRER LES DONNÉES JSON 
}).done(function(tousLesProducteurs) {

	console.log(tousLesProducteurs);
	tablProducteur = tousLesProducteurs
});

 // DESACTIVAITON DU BOUTON DE RECHERCHE SUR LA PAGE CARTE
$("#rechercher").click(function()
{
	return false;
});

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// J'AI PLACÉ LA VARIABLE ET LE TEXTE CORRESPONDANT ICI POUR DÉCLARER LA VARIABLE AVANT DE L'UTILISER
// SI ON NE FAIT PAS COMME ÇA, CELA NE FONCTIONNE PAS
// variable qui va récupérer les coordonnées qui vont afficher l'emplacement du marqueur et que l'on va passer en paramètre
// variable que l'on va appeler auch pour AUCH
// on récupère les coordonnées déjà tapées dans la première ligne de code
// on pourra remplacer les coordonées supprimées par le nom de la variable, ici ce sera auch

// var auch = [43.646548, 0.601992];

// LE PROGRAMME COMMENCE ICI
// lien vers leaflet : https://leafletjs.com/examples/quick-start/
// leaflet est une véritable alternative à google map
// leaflet est gratuit
// permet de créer à peu près la même chose que google map
// des cartes, des marqueurs, des polygones, en gros tout ce qu'on peut ou veut afficher sur une carte
// le fonctionnement est le même que google map mais avec une certaine différence
// on va faire appel à des tills
// les tills sont des calques qui vont se superposer
// ce sont des images, des petits carrés de map
// on a donc besoin d'insérer des tills pour faire apparaître des maps
// l'idée est d'obtenir une carte identique à celle de google maps avec un pop-up qui s'ouvre lorsqu'on cliquera sur un marqueur

// la première chose à faire est de créer une variable map
// on renseigne l'ID de notre container, ici c'est ('map') et on va lui donner une view
// c'est dans cette view que l'on va mettre, ici dans un tableau, les coordonnées gps du lieu, les coordinates
// pour cela, on va se retourner vers une page web appelée gps coordinates
// c'est un site proposé par google
// le lien est le suivant: https://www.gps-coordinates.net/
// choisir une destination
// renseigner la latitude en premier, puis renseigner la longitude
// toujours dans la fonction mais pas dans le tableau mais à la suite, on va lui donner le niveau de zoom
// on utilisera l'objet L (pour leaflet)
// avec une méthode map() qui nous permet d'initialiser notre map avec container qui est map et la méthode setView() qui nous permet
// de lui dire sur quel point on veut que notre map soit centrée

// var map = L.map('map').setView(auch, 6);

// on a donc généré notre map
// on fait l'essai en ouvrant la page web
// on se rend compte qu'aucune map n'apparaît
// on n'a généré que des boutons de zoom
// en fait, leaflet fonctionne avec des layers que l'on pourra superposer
// on peut imaginer que l'on aura la carte sur un premier calque puis sur un second calque superposé, les petites vignettes
// on peut continuer ainsi pendant longtemps
// le fonctionnement est simple, ce sont des calques qui sont superposés pour former une map
// nous allons avoir besoin d'afficher le premier calque
// le premier calque est le calque tilelayer qui va nous permettre d'afficher ces espèces de petites carte carrées qui vont se
// mettre les unes à côté des autres pour créer une map
// pour se faire on peut importer un tilelayer existant ou alors en créer un
// on peut se rendre mapbox studio qui nous permettra d'en créer un
// le lien est le suivant : https://www.mapbox.com/mapbox-studio/
// nous n'allons pas en créer un mais utiliser quelque chose d'existant
// nous nous rendons sur ce site dont voici le lien :
// leaflet-extras.github.io/leaflet-providers/preview/
// cela permet de disposer de différents tilelayers dàjà faits
// on choisira OpenMapSurfer.Roads
// on va maintenant insérer le code généré par le tilelayer
// c'est en fait le lien vers le tilelayer
// on va coller le code dans la fonction tileLayer()
// et on lui donne un niveau de zoom
// et on va lui dire que ceci doît être ajouté à notre map déjà existante dans la variable map

// L.tileLayer('https://korona.geog.uni-heidelberg.de/tiles/roads/x={x}&y={y}&z={z}', {
// 	maxZoom: 20
// }).addTo(map);

// en actualisant la page, on peut se rendre compte que la map s'affiche bien
// et est centrée sur le point de coordonnées précédemment définies,
// on a donc ajouté notre map à la map existante

// on va maintenant ajouter un marquejur
// on va créer une variable marqueur
// on va utiliser l'objet L. qui prendra en paramètre les coordonnées sur lequel on veut mettre le marqueur
// pour se faire, on va créer une variable (voir ci-dessus et au début)
// on replace notre variable auch pour définir l'emplacement du marqueur
// et on pourra lui dire de s'ajoute à la map

// var marker = L.marker(auch).addTo(map);

// on va maintenant pourvoir afficher un pop-up grâce à la méthode bindPopup()
// on va assigner à notre marqueur cette pop-up
// cette méthode prend en paramètre le contenu de la pop-up

// marker.bindPopup('<h3> Mon domicile </h3>');

// on peut styliser notre map comme le ferait google map
// par exemple avec des tilelayers déjà faits, mais aussi grâce à mapbox studio dont le lien est inscrit plus haut
// avec mapbox studio, on pourra modifier à peu près tout sur une map

// déclaration des variables de coordonnées gps (degrés numériques) 
// var auch = [43.646548, 0.601992];
// var map = L.map('map').setView(auch,6);

// 	L.tileLayer('https://korona.geog.uni-heidelberg.de/tiles/roads/x={x}&y={y}&z={z}', {
// 		maxZoom: 20
// 	}).addTo(map);

// var marker = L.marker(auch,).addTo(map);
// 	marker.bindPopup('<h6> Mon domicile </h6>');

// CODE D'AFFICHAGE DE LA CARTE HOUSSINE

// début de la génération de la carte

// var map = L.map('map').setView([43.64638, 0.586709], 13);
// var producteur =[
// 				["Fiche producteur", 43.99497, 0.50808],
// 				["Fiche producteur", 43.30269, 0.63696],
// 				["Fiche producteur", 43.49413, 0.5421],
// 				["Fiche producteur", 43.98585, 0.50659],
// 				["Fiche producteur", 43.93163, 0.81726],
// 				["Fiche producteur", 43.5183, 0.78081],
// 				["Fiche producteur", 43.42079, 0.5783],
// 				["Fiche producteur", 43.08414, 0.96632],
// 				["Fiche producteur", 43.51285, 0.53274]
// 			];

// L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',{
// 	attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
// }).addTo(map);

// L.marker([43.64, 0.58]).addTo(map)
// .bindPopup('Fiche producteur.')
// .openPopup();

// for (var i = 0; i < producteur.length; i++)
// {
// 	marker = new L.marker([producteur[i][1],producteur[i][2]])
// 	.bindPopup(producteur[i][0])
// 	.addTo(map);
// }

// fin de la génération de la carte

// CODE ENVOYÉ PAR HOUSSINE

// Générer la carte.
// var map = L.map('map').setView([43.64638, 0.586709], 13);
//Differentes positions en dure sur la carte.
// var producteur =
// [
// 	["Fiche producteur", 43.99497, 0.50808],
// 	["Fiche producteur", 43.30269, 0.63696],
// 	["Fiche producteur", 43.49413, 0.5421],
// 	["Fiche producteur", 43.98585, 0.50659],
// 	["Fiche producteur", 43.93163, 0.81726],
// 	["Fiche producteur", 43.5183, 0.78081],
// 	["Fiche producteur", 43.42079, 0.5783],
// 	["Fiche producteur", 43.08414, 0.96632],
// 	["Fiche producteur", 43.51285, 0.53274]
// ];

// var tabProducteurs = [];
// Structure de la carte.
// L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',{
// 	attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
// }).addTo(map);
// Marqueur fixe au premier affichage
// L.marker([43.64, 0.58]).addTo(map)
// .bindPopup('Fiche producteur.')
// .openPopup();

// NOUVEAU CODE ENVOYÉ PAR HOUSSINE

// générer la carte
// var map = L.map('map').setView([43.64638, 0.586709], 13);

//différentes positions en dur sur la carte
// var producteur =
// [
// 	["Fiche producteur", 43.99497, 0.50808],
// 	["Fiche producteur", 43.30269, 0.63696],
// 	["Fiche producteur", 43.49413, 0.5421],
// 	["Fiche producteur", 43.98585, 0.50659],
// 	["Fiche producteur", 43.93163, 0.81726],
// 	["Fiche producteur", 43.5183, 0.78081],
// 	["Fiche producteur", 43.42079, 0.5783],
// 	["Fiche producteur", 43.08414, 0.96632],
// 	["Fiche producteur", 43.51285, 0.53274]
// ];
// var tabProducteurs = [];

// structure de la carte
// L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',{
// 	attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
// }).addTo(map);

// marqueur fixe au premier affichage
// L.marker([43.64, 0.58]).addTo(map)
// .bindPopup('Fiche producteur.')
// .openPopup();

// affichage des marqueurs sur la carte
// for (var i = 0; i < producteur.length; i++)
// {
// 	marker = new L.marker([producteur[i][1],producteur[i][2]])
// 	.bindPopup(producteur[i][0])
// 	.addTo(map);
// }