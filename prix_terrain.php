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
			<form class="l-immo__form" action="prix_terrain.php" method="post">
			<!-- Code postal -->
			<label class="l-label__flex label__flex">Entrez un code postal</label><input type="text" name="codePostal" class="l-immo__input immo__input" id="codePostal"/>

			<!-- Liste des villes -->
			<label class="l-label__flex label__flex">Choisir la ville</label><select name="ville" class="l-ville__selection ville__selection l-immo__input immo__input" id="ville"></select>

			<!-- Surface -->
			<label class="l-label__flex label__flex">Surface</label><input type="text" name="surface" class="l-immo__input immo__input" id="surface"/>

			<!-- Surface -->
			<label class="l-label__flex label__flex">Prix</label><input type="text" name="prix" class="l-immo__input immo__input" id="prix"/>

			<!-- Plat ou Pente -->
			<div class="l-radio__container">
				<div class="l-radio">
					<input type="radio" name="isPlat" class="l-immo__input immo__input immo__input__radio" id="plat" checked /><label class="l-label__radio label__radio">Plat</label>
				</div>
				
				<div class="l-radio">
					<input type="radio" name="isPlat" class="l-immo__input immo__input immo__input__radio" id="pente"/><label class="l-label__radio label__radio">Pente</label>
				</div>
			</div>

			<!-- is Viabilisé -->
			<div class="l-radio__container">
				<div class="l-radio">
					<input type="radio" name="isViabilise" class="l-immo__input immo__input immo__input__radio" id="viabilise" checked/><label class="l-label__radio label__radio">Viabilise</label>
				</div>
				
				<div class="l-radio">
					<input type="radio" name="isViabilise" class="l-immo__input immo__input immo__input__radio" id="nonViabilise"/><label class="l-label__radio label__radio">Non</label>
				</div>
			</div>
			
			<button type="submit" name="addToBDD" class="l-immo__button immo__button">Ajouter en base</button>
		</form>

		<div class="l-immo__results">
			<?php 
				// if (preg_match('#^[0-9]{5}$#', $_POST[codePostal]))
				// {
				// 	$codePostal = $_POST[codePostal];
				// }

				// if(preg_match('#^[0-9]{3,}$#', $_POST[surface]))
				// {}

				$codePostal ="01390";
            	$ville = "Saint André de Corcy";
            	$surface = "10000";
            	$prix = "200000";
            	$flat = 0;
            	$viabilise = 1;
			


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
              echo "Erreur : " . $e->getMessage();
            }

            $req = $bdd -> prepare('INSERT INTO prix_immo(codePostal, ville, surface, prix, flat, viabilise) VALUES(:codePostal, :ville, :surface, :prix, :flat, :viabilise)');
            $req -> execute( array(
            	'codePostal' => $codePostal,
            	'ville' => $ville,
            	'surface' => $surface,
            	'prix' => $prix,
            	'flat' => $flat,
            	'viabilise' => $viabilise
            )) ;
                
                echo 'Entrée ajoutée dans la table';
 
			?>
		</div>
	</section>


<script type="text/javascript" src="./prix_terrain.js"></script>
</body>
</html>