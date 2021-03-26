<?php
	
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
	


	if (!empty($_POST['ville']))
	{
		// Prepare requête générale
		$request = $bdd -> prepare('SELECT ville, ROUND(SUM(prix)/SUM(surface),2) AS prixMoyen, COUNT(ville) AS entree FROM prix_immo WHERE ville=? AND flat=? AND viabilise=?');

		$ville = $_POST['ville'];
		$isFlat = $_POST['isFlat'];
		$isViabilise = $_POST['isViabilise'];
		
		$request -> execute(array($ville, $isFlat, $isViabilise));

		$donnee = $request -> fetch();
		
		if ($isFlat ==1 && $isViabilise == 1)
		{
			echo 'Le prix moyen des terrains plats et viabilisés de '. $donnee['ville'] . ' est de :<br/> '. $donnee['prixMoyen'] . ' €<br />Pour un total de ' . $donnee['entree']. ' entrées.' ;
		}
		else
		{
			if ($isFlat ==1 && $isViabilise == 0)
			{
				echo 'Le prix moyen des terrains plats et NON viabilisés de '. $donnee['ville'] . ' est de :<br/> '. $donnee['prixMoyen'] . ' €<br />Pour un total de ' . $donnee['entree']. ' entrées.' ;
			}
			else
			{
				if ($isFlat ==0 && $isViabilise == 0)
			{
				echo 'Le prix moyen des terrains NON plats et NON viabilisés de '. $donnee['ville'] . ' est de :<br/> '. $donnee['prixMoyen'] . ' €<br />Pour un total de ' . $donnee['entree']. ' entrées.' ;
			}
			else
			{
				echo 'Le prix moyen des terrains NON plats mais viabilisés de '. $donnee['ville'] . ' est de :<br/> '. $donnee['prixMoyen'] . ' €<br />Pour un total de ' . $donnee['entree']. ' entrées.' ;
			}
			}
		}
	}
	else
	{
		// Prepare requête générale
		$request = $bdd -> prepare('SELECT codePostal, ROUND(SUM(prix)/SUM(surface),2) AS prixMoyen, COUNT(codePostal) AS entree FROM prix_immo WHERE codePostal=? AND flat=? AND viabilise=?');

		$codePostal = $_POST['codePostal'];
		$isFlat = $_POST['isFlat'];
		$isViabilise = $_POST['isViabilise'];
		
		$request -> execute(array($codePostal, $isFlat, $isViabilise));

		$donnee = $request -> fetch();
		
		if ($isFlat ==1 && $isViabilise == 1)
		{
			echo 'Le prix moyen des terrains plats et viabilisés du '. $donnee['codePostal'] . ' est de :<br/> '. $donnee['prixMoyen'] . ' €/m²<br />Pour un total de ' . $donnee['entree']. ' entrées.' ;
		}
		else
		{
			if ($isFlat ==1 && $isViabilise == 0)
			{
				echo 'Le prix moyen des terrains plats et NON viabilisés du '. $donnee['codePostal'] . ' est de :<br/> '. $donnee['prixMoyen'] . ' €<br />Pour un total de ' . $donnee['entree']. ' entrées.' ;
			}
			else
			{
				if ($isFlat ==0 && $isViabilise == 0)
			{
				echo 'Le prix moyen des terrains NON plats et NON viabilisés du '. $donnee['codePostal'] . ' est de :<br/> '. $donnee['prixMoyen'] . ' €<br />Pour un total de ' . $donnee['entree']. ' entrées.' ;
			}
			else
			{
				echo 'Le prix moyen des terrains NON plats mais viabilisés du '. $donnee['codePostal'] . ' est de :<br/> '. $donnee['prixMoyen'] . ' €<br />Pour un total de ' . $donnee['entree']. ' entrées.' ;
			}
			}
		}
	}


	// function getInformations(isVille)
	// {
	// 	if(isVille)
	// 	{
	// 		// Prepare requête générale pour les villes

	// 			$request = $bdd -> prepare('SELECT ville, ROUND(SUM(prix)/SUM(surface),2) AS prixMoyen, COUNT(ville) AS entree FROM prix_immo WHERE ville=? AND flat=? AND viabilise=?');

	// 			$codeOuVille = $_POST['ville'];
	// 	}
	// 	else
	// 	}
	// 		// Prepare requête générale pour les codes postaux

	// 			$request = $bdd -> prepare('SELECT codePostal, ROUND(SUM(prix)/SUM(surface),2) AS prixMoyen, COUNT(codePostal) AS entree FROM prix_immo WHERE codePostal=? AND flat=? AND viabilise=?');

	// 			$codeOuVille = $_POST['codePostal'];
	// 	}

	// 	$isFlat = $_POST['isFlat'];
	// 	$isViabilise = $_POST['isViabilise'];
		
	// 	$request -> execute(array($codeOuVille, $isFlat, $isViabilise));

	// 	$reponse .= ($isFlat == 1) ? "est plat" : "n'est pas plat"

	// }

	$request->closeCursor();
