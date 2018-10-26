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
for (var i = 0; i < producteur.length; i++)
{
	marker = new L.marker([producteur[i][1],producteur[i][2]])
	.bindPopup(producteur[i][0])
	.addTo(map);
}
// Lien vers le controlleur qui est en relation vers la bdd.
$.ajax({
	url: "/apiProducteur",
	method: "GET",
	dataType: "json"
//fonction pour recuperer les données JSON. 
}).done(function(tousLesProducteurs)
{
	console.log(tousLesProducteurs);
	tabProducteur = tousLesProducteurs;
	// Désactivation du boutton de recherche sur la page carte.
})

$("#rechercher").click(function()
{
	for(i=0; i < tabProducteur.length; i++)
	{
		var trouver=$("#input").val().toUpperCase();
		if (trouver==tabProducteur[i].label_producteur.toUpperCase()) 
		{
			alert('la comparaison est trouvé');	
			
		}
	}	
	producteur = tabProducteur;
	return false;
})


function afficher()
{
	console.log(producteur);
	if(producteur == null)
	{

	}
	else
	{
		for(var i = 0; i<producteur.length; i++)
		{
			$("#table").append('<tr>'+
				'<td class="id">'+i+'</td>'+
				'<td>'+producteur[i].code_postal_producteur+'</td>'+
				'<td>'+producteur[i].coordonneeDD_producteur+'</td>'+
				'<td>'+producteur[i].created_at+'</td>'+
				'<td>'+producteur[i].id_producteur+'</td>'+
				'<td>'+producteur[i].lieu_dit_producteur+'</td>'+
				'<td>'+producteur[i].mail_producteur+'</td>'+
				'<td>'+producteur[i].nom_entreprise_producteur+'</td>'+
				'<td>'+producteur[i].nom_producteur+'</td>'+
				'<td>'+producteur[i].numero_producteur+'</td>'+
				'<td>'+producteur[i].site_internet_producteur+'</td>'+
				'<td>'+producteur[i].telephone_deux_producteur+'</td>'+
				'<td>'+producteur[i].telephone_un_producteur+'</td>'+
				'<td>'+producteur[i].updated_at+'</td>'+
				'<td>'+producteur[i].voie_producteur+'</td>'+
				'</tr>'
			);
			console.log($("#table"));
		}
	}
}




