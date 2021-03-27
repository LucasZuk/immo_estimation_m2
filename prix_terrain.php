<!DOCTYPE html>
<html>
<head>

	<!-- Meta Données -->

		<meta charset="utf-8">
		<title>Prix du terrain</title>


	<!-- Style CSS -->
	
		<link rel="stylesheet" type="text/css" href="./prix_terrain.css">
	

	<!-- Google Fonts -->

		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Archivo+Black&family=Boogaloo&family=Source+Sans+Pro:wght@200&display=swap" rel="stylesheet">

<!-- <link href="https://fonts.googleapis.com/css2?family=Montserrat+Subrayada:wght@700&display=swap" rel="stylesheet"> -->

</head>

<!-- Body Principal -->

	<body class="immo__body l-immo__body">


		<!-- Titre de la page -->

			<h1 class="l-immo__principal_title immo__principal_title">Prix de l'immobilier</h1>


		<!-- Section d'entrée des infos immo -->

			<section class="l-immo">
				<form class="l-immo__form" action="<?php echo $_SERVER['SCRIPT_NAME']; ?>" method="post">


					<!-- Code postal -->

						<label class="l-label__flex label__flex"></label>
						<input type="text" name="codePostal" class="l-immo__input immo__input" id="codePostal" required placeholder="Entrez un code postal" />


					<!-- Liste des villes -->

						<label class="l-label__flex label__flex"></label>
						<select name="ville" class="l-ville__selection ville__selection l-immo__input immo__input" id="ville" required>
							<option value="">Sélectionner une ville</option>
						</select>


					<!-- Surface -->

						<label class="l-label__flex label__flex"></label>
						<input type="text" name="surface" class="l-immo__input immo__input" id="surface" required placeholder="Surface"/>


					<!-- Prix -->

						<label class="l-label__flex label__flex"></label>
						<input type="text" name="prix" class="l-immo__input immo__input" id="prix" required placeholder="Prix"/>


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

						<label class="l-label__flex label__flex"></label>
						<input type="text" name="nameVendor" class="l-immo__input immo__input" id="nameVendor" placeholder="Nom du vendeur"/>


					<!-- Téléphone Vendeur -->

						<label class="l-label__flex label__flex">Téléphone du vendeur</label>
						<input type="text" name="phoneVendor" class="l-immo__input immo__input" id="phoneVendor" placeholder="Téléphone du vendeur"/>

					<!-- is Pub -->
					
						<div class="l-radio__container">
							<div class="l-radio">
								<input type="radio" name="isPub" class="l-immo__input immo__input immo__input__radio" id="pub" value="1"/><label class="l-label__radio label__radio">Pub</label>
							</div>
							
							<div class="l-radio">
								<input type="radio" name="isPub" class="l-immo__input immo__input immo__input__radio" id="nonPub" value="0"/><label class="l-label__radio label__radio">Non</label>
							</div>
						</div>
					

					<!-- Submit le formulaire -->

						<button type="submit" name="addToBDD" class="l-immo__button immo__button">Ajouter en base</button>
				</form>
			


		<!-- Section des retours d'information du serveur -->

			<article id="response" class="l-immo__results">
				

				<!-- Script permettant de remplir la BDD et de retourner un message de confirmation à l'utilisateur -->
					<?php
						$reponse ="";
						require("postDataBase.php");
						echo $reponse;
					?>


			</article>
		</section>

		<!-- Jquery -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>

		<!-- Renvoie les noms de ville correspondant au code postal --> 
		<script type="text/javascript" src="./code_postal_api.js"></script>

		<!-- Requêtes AJAX -->
		<script type="text/javascript" src = "./functionJQuery.js"></script>

	</body>
</html>