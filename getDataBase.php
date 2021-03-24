<?php

	$reponse = $bdd -> prepare('SELECT codePostal, AVG(prix) AS prixMoyen FROM prix_immo WHERE codePostal=?');

	// if (isset($_POST['codePostal']))
	// {
			$reponse -> execute(array($_POST['codePostal']));
	// }

		echo 'Le prix moyen de '. $donnees['codePostal'] . ' est de : '. $donnees['prixMoyen'] . ' €<br />';
	

	$reponse->closeCursor();

?>