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

require("prix_terrain.php");