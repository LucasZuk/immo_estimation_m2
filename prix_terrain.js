/* Connexion avec l'API des codes postaux api.gouv.fr */

	function getCodePostal(codePostal)
	{
		fetch(`https://apicarto.ign.fr/api/codes-postaux/communes/${codePostal}`)
		.then(response => response.json())
		.then(data =>
			{
				var listeVille = '<option value="">Trouver une ville</option>';

				for (const commune of data)
				{
					listeVille += `<option value = "${commune.nomCommune}">${commune.nomCommune}</option>`;
				}
				ville.innerHTML = listeVille;
			})
		.catch(console.log('Une erreur est survenue..'));
	}


/* Récupération éléments du DOM */

var codePostalBox = document.getElementById("codePostal");
var ville = document.getElementById("ville");

