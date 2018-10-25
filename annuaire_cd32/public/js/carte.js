// Générer la carte.
var map = L.map('map').setView([43.64638, 0.586709], 13);
//Differentes positions des producteurs sur la carte.
var producteur = [];
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
	alert("coucou");
	console.log(tousLesProducteurs);
	// Désactivation du boutton de recherche sur la page carte.
	$("#rechercher").click(function()
	{
		for(i=0; i < tousLesProducteurs.length; i++)
		{
			var trouver=$("#input").val().toUpperCase();
			if (trouver==tousLesProducteurs[i].label_producteur.toUpperCase()) 
			{
				alert('la comparaison est trouvé');	
			}
		producteur = tousLesProducteurs;
		}	
		return false;
	})
})

	// function genererMarqueur()
	// {
	// 	producteur;
	// }

console.log(producteur);

$("#table").append('<tr><td class="id">'+i+'</td><td>'+producteur.nom_producteur+'</td><td>'+producteur.numero_producteur+'</td><td>'+producteur.mail_producteur+'</td><td>'+producteur.commune_producteur+'</td></tr>');

