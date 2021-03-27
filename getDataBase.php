<?php
	
/* Retourne la moyenne du prix au métre carré suivant le code postal ou la ville et autres paramètres */

	// Test si le code postal est correctement saisi par l'utilisateur 
	if (preg_match('#^[0-9]{5}$#', $_POST['codePostal']))
	{

		// Test si la ville a été renseignée

			$isVille = (empty($_POST['ville'])) ?  false : true;
	
		
		// Connexion à BDD

			$servname = 'localhost';
			$dbname = 'immo';
			$user = 'root';
			$pass = 'root';

			try
			{
			    $bdd = new PDO("mysql:host=$servname;dbname=$dbname", $user, $pass);
			    $bdd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			}

			catch(PDOException $e)
			{
			 	// En cas d'erreur, on affiche un message et on arrête tout
	    			die('Erreur : '.$e->getMessage());
			} 

		// Prépare les requêtes SQL en fonction du fait que la ville soit renseignée ou non

			if($isVille)
			{

				// Prepare requête générale pour les villes

					$request = $bdd -> prepare('SELECT ville, ROUND(SUM(prix)/SUM(surface),2) AS prixMoyen, COUNT(ville) AS entree FROM prix_immo WHERE ville=? AND flat=? AND viabilise=?');

					$requestListe = $bdd -> prepare('SELECT prix, surface, nameVendor, phoneVendor, pub AS prixMoyen FROM prix_immo WHERE ville=? AND flat=? AND viabilise=?');

					$codeOuVille = $_POST['ville'];
			}
			else
			{

				// Prepare requête générale pour les codes postaux

					$request = $bdd -> prepare('SELECT codePostal, ROUND(SUM(prix)/SUM(surface),2) AS prixMoyen, COUNT(codePostal) AS entree FROM prix_immo WHERE codePostal=? AND flat=? AND viabilise=?');

					$requestListe = $bdd -> prepare('SELECT prix, surface, nameVendor, phoneVendor, pub AS prixMoyen FROM prix_immo WHERE codePostal=? AND flat=? AND viabilise=?');

					$codeOuVille = htmlspecialchars($_POST['codePostal']);
			}

			// Entrées de l'utilisateur qui n'ont pas besoin d'être traitées
				$isFlat = $_POST['isFlat'];
				$isViabilise = $_POST['isViabilise'];
			
			// Balance la requête
				$request -> execute(array($codeOuVille, $isFlat, $isViabilise));
				$requestListe -> execute(array($codeOuVille, $isFlat, $isViabilise));

			// Récupére les résultats
				$donnee = $request -> fetch();

			// Vérifie qu'il y ait bien une réponse 
				if ($donnee['entree'] != 0)

				{		
					$reponse = "<p class='l-immo__reponse immo__reponse'>Le prix moyen des terrains ";
					$reponse .= ($isFlat == 1) ? "plats " : "NON plats ";
					$reponse .= ($isViabilise == 1) ? "et viabilisés " : "et NON viabilisés ";
					$reponse .= ($isVille) ? "de <strong>" . $donnee['ville']  : "</strong>du <strong>" . $donnee['codePostal'];
					$reponse .= "</strong> est de : <strong>". $donnee['prixMoyen'] ."</strong> €/m²<br />Pour un total de <strong>" . $donnee['entree']. "</strong> entrées.</p><ul class='l-immo__reponse__liste immo__reponse__liste'>Liste des entrées :";


					while( $items = $requestListe -> fetch())
					{
						$items['surface'] = number_format ( $items['surface'], 0 , null ,  " ");
						$items['prix'] = number_format ( $items['prix'], 0 , null ,  " ");

						$reponse .= "<li class='l-immo__liste__items immo__liste__items'>Surface : <strong>" . $items['surface'] . "</strong> m || Prix : <strong>" . $items['prix'] . "</strong> €";
						if ($items['nameVendor'] != "")
						{
							$reponse .= " || Vendeur : <strong>" .$items['nameVendor']. "</strong>";
						}
						if ($items['phoneVendor'] != "")
						{
							$reponse .= " || Téléphone : <strong>" .$items['phoneVendor']. "</strong>";
						}
					}

					echo $reponse;
				}
				// Renvoie un message indiquant qu'il n'y a pas de réponse
					else
					{
						echo "Il n'y a pas encore de données pour ces paramètres..";
					}

			// Termine la requête
				$request->closeCursor();
		}

		// Préviens l'utilisateur qu'il a fait de la merde
		else
		{
			echo "Le code postal n'est pas valide..";
		}
		
