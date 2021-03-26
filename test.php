<?php 

$dom = new DOMDocument;
$dom -> loadXML('prix_terrain.php')
$test = $dom -> getElementById('nameVendor');

$test -> nodeValue = "OK";

echo $dom -> saveXML();

 ?>