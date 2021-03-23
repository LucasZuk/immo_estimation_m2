/* Connexion avec l'API des codes postaux api.gouv.fr */

var codePostal = '01390';

fetch(`https://apicarto.ign.fr/api/codes-postaux/communes/${codePostal}`)
	.then(response => response.json())
	.then(data =>
		{
			for (const commune of data)
			{
				console.log(commune.nomCommune);
			}
		})
	.catch(console.log('Une erreur est survenue..'));