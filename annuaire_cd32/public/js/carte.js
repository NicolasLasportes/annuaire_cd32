// Générer la carte.
var map = L.map('map').setView([43.64638, 0.586709], 13);
//Differentes positions des producteurs sur la carte.
var producteur = [];
var tabProducteur = [];

// Structure de la carte.
L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',{
	attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
}).addTo(map);

// Marqueur fixe au premier affichage
L.marker([43.64, 0.58]).addTo(map)
.bindPopup('Fiche producteur.')
.openPopup();

// Affichage des marqueurs sur la carte.
<<<<<<< HEAD
for (var i = 0; i < producteur.length; i++)
{
	marker = new L.marker([producteur[i][1],producteur[i][2]])
	.bindPopup(producteur[i][0])
	.addTo(map);
}

=======
// for (var i = 0; i < producteur.length; i++)
// {
// 	marker = new L.marker([producteur[i][1],producteur[i][2]])
// 	.bindPopup(producteur[i][0])
// 	.addTo(map);
// }
>>>>>>> 276e5a1bdd2ea81fa3ee99287e819e343c583eec
// Lien vers le controlleur qui est en relation vers la bdd.
$.ajax({
	url: "/apiProducteur",
	method: "GET",
	dataType: "json"
//fonction pour recuperer les données JSON. 
}).done(function(tousLesProducteurs)
{
	tabProducteur = tousLesProducteurs;
	producteur = tousLesProducteurs;
	afficher(producteur);

	// Désactivation du boutton de recherche sur la page carte.
})

function recherche(producteur)
{	
	console.log(producteur)
	var recherche = $("#saisieRecherche").val().toUpperCase();
	for(var i = 0; i < producteur.length; i++)
	{
		console.log("je boucle "+i+ " fois")
		if(producteur[i].nom_entreprise_producteur === null || producteur[i].lieu_dit_producteur === null || producteur[i].numero_producteur || producteur[i].voie_producteur || producteur[i].code_postal_producteur ||producteur[i].commune_producteur || producteur[i].nom_producteur || producteur[i].telephone_un_producteur ||producteur[i].telephone_deux_producteur || producteur[i].coordonneeDD_producteur || producteur[i].mail_producteur ||producteur[i].site_internet_producteur)
		{

		}
		if (recherche == producteur[i].nom_entreprise_producteur.toUpperCase()) 
		{
			alert('la comparaison est trouvé');	
		}

		if (recherche == producteur[i].lieu_dit_producteur.toUpperCase()) 
		{
			alert('la comparaison est trouvé');	
		}

		if (recherche == producteur[i].numero_producteur.toUpperCase()) 
		{
			alert('la comparaison est trouvé');	
		}

		if (recherche == producteur[i].voie_producteur.toUpperCase()) 
		{
			alert('la comparaison est trouvé');	
		}

		if (recherche == producteur[i].code_postal_producteur.toUpperCase()) 
		{
			alert('la comparaison est trouvé');	
		}

		if (recherche == producteur[i].commune_producteur.toUpperCase()) 
		{
			alert('la comparaison est trouvé');	
		}

		if (recherche == producteur[i].nom_producteur.toUpperCase()) 
		{
			alert('la comparaison est trouvé');	
		}

		if (recherche == producteur[i].telephone_un_producteur.toUpperCase()) 
		{
			alert('la comparaison est trouvé');	
		}

		if (recherche == producteur[i].telephone_deux_producteur.toUpperCase()) 
		{
			alert('la comparaison est trouvé');	
		}

		if (recherche == producteur[i].coordonneeDD_producteur.toUpperCase()) 
		{
			alert('la comparaison est trouvé');	
		}

		if (recherche == producteur[i].mail_producteur.toUpperCase()) 
		{
			alert('la comparaison est trouvé');	
		}

		if (recherche == producteur[i].site_internet_producteur.toUpperCase()) 
		{
			alert('la comparaison est trouvé');	
		}

		else
		{
			alert("ca marche pas");
		}
	}	
}

function afficher(producteur)
{
	for(var i = 0; i<producteur.length; i++)
	{
		$("#table").append('<tr>'+
		'<td>'+producteur[i].code_postal_producteur+'</td>'+
		'<td>'+'['+producteur[i].coordonneeDD_producteur+']'+'</td>'+
		'<td>'+producteur[i].lieu_dit_producteur+'</td>'+
		'<td>'+producteur[i].mail_producteur+'</td>'+
		'<td>'+producteur[i].nom_entreprise_producteur+'</td>'+
		'<td>'+producteur[i].nom_producteur+'</td>'+
		'<td>'+producteur[i].numero_producteur+'</td>'+
		'<td>'+producteur[i].site_internet_producteur+'</td>'+
		'<td>'+producteur[i].telephone_deux_producteur+'</td>'+
		'<td>'+producteur[i].telephone_un_producteur+'</td>'+
		'<td>'+producteur[i].voie_producteur+'</td>'+
		'<td>'+producteur[i].commune_producteur+'</td>'+
		'</tr>');
	}
}

$("#rechercher").click(function()
{
	recherche(tabProducteur);
});



