(function(){


	/* Connexion avec l'API des codes postaux api.gouv.fr */

		function getCodePostal(codePostal)
		{
			fetch(`https://apicarto.ign.fr/api/codes-postaux/communes/${codePostal}`)
			.then(response => response.json())
			.then(data =>
				{
					var listeVille = '<option value="">Sélectionner une ville</option>';

					for (const commune of data)
					{
						listeVille += `<option value = "${commune.nomCommune}">${commune.nomCommune}</option>`;
					}
					ville.innerHTML = listeVille;
				})
			.catch(error => 
			{
				console.log(`Attention erreur : ${error}`);
			})
		}


	/* Récupération éléments du DOM */

	var form = document.getElementsByClassName("l-immo__form")[0];
	var codePostalBox = document.getElementById("codePostal");
	var ville = document.getElementById("ville");


	/* Se connecte à l'API quand on entre le code postal */
	codePostalBox.addEventListener('input', function()
	{
		if (codePostalBox.value.length == 5)
		{
			getCodePostal(codePostalBox.value);
		}
	})

})();
