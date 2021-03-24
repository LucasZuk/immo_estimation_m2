<?php

/* Connexion à la BDD */
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
?>

<!DOCTYPE html>
<html>
<head>
	<title>Prix du terrain</title>
	<link rel="stylesheet" type="text/css" href="./prix_terrain.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Boogaloo&family=Source+Sans+Pro:wght@200&display=swap" rel="stylesheet">
</head>
<body class="immo__body l-immo__body">
	<h1 class="l-immo__principal_title immo__principal_title">Prix de l'immobilier par code postaux</h1>
	<section class="l-immo">
		<form class="l-immo__form" action="<?php echo $_SERVER['SCRIPT_NAME']; ?>" method="post">

			<!-- Code postal -->

				<label class="l-label__flex label__flex">Entrez un code postal</label>
				<input type="text" name="codePostal" class="l-immo__input immo__input" id="codePostal" required/>

				<!-- Compile les données -->

			<!-- Liste des villes -->

				<label class="l-label__flex label__flex">Choisir la ville</label>
				<select name="ville" class="l-ville__selection ville__selection l-immo__input immo__input" id="ville" required></select>

			<!-- Surface -->

				<label class="l-label__flex label__flex">Surface</label>
				<input type="text" name="surface" class="l-immo__input immo__input" id="surface" required/>

			<!-- Prix -->

				<label class="l-label__flex label__flex">Prix</label>
				<input type="text" name="prix" class="l-immo__input immo__input" id="prix" required/>

			<!-- Plat ou Pente -->

				<div class="l-radio__container">
					<div class="l-radio">
						<input type="radio" name="isPlat" class="l-immo__input immo__input immo__input__radio" id="plat" value="1" checked /><label class="l-label__radio label__radio">Plat</label>
					</div>
					
					<div class="l-radio">
						<input type="radio" name="isPlat" class="l-immo__input immo__input immo__input__radio" id="pente" value="0"/><label class="l-label__radio label__radio">Pente</label>
					</div>
				</div>

			<!-- is Viabilisé -->

				<div class="l-radio__container">
					<div class="l-radio">
						<input type="radio" name="isViabilise" class="l-immo__input immo__input immo__input__radio" id="viabilise" value="1" checked/><label class="l-label__radio label__radio">Viabilise</label>
					</div>
					
					<div class="l-radio">
						<input type="radio" name="isViabilise" class="l-immo__input immo__input immo__input__radio" id="nonViabilise" value="0"/><label class="l-label__radio label__radio">Non</label>
					</div>
				</div>

			<!-- Nom Vendeur -->

				<label class="l-label__flex label__flex">Nom du vendeur</label>
				<input type="text" name="nameVendor" class="l-immo__input immo__input" id="nameVendor"/>

			<!-- Téléphone Vendeur -->

				<label class="l-label__flex label__flex">Téléphone du vendeur</label>
				<input type="text" name="phoneVendor" class="l-immo__input immo__input" id="phoneVendor"/>

			<!-- is Pub -->
			
				<div class="l-radio__container">
					<div class="l-radio">
						<input type="radio" name="isPub" class="l-immo__input immo__input immo__input__radio" id="pub" value="1"/><label class="l-label__radio label__radio">Pub</label>
					</div>
					
					<div class="l-radio">
						<input type="radio" name="isPub" class="l-immo__input immo__input immo__input__radio" id="nonPub" value="0"/><label class="l-label__radio label__radio">Non</label>
					</div>
				</div>
			
			<button type="submit" name="addToBDD" class="l-immo__button immo__button">Ajouter en base</button>
		</form>

		<div class="l-immo__results">
			<?php 
				include('./postDataBase.php');

				include('./getDataBase.php');
					
			?>
		</div>
	</section>


<script type="text/javascript" src="./prix_terrain.js"></script>
</body>
</html>