<?php  
/* Post dans la base "prix__immo" */

        // Initialise les variables

            $codePostal = "";
            $ville = "";
            $surface = 0;
            $prix = 0;
            $flat = 0;
            $viabilise = 0;
            $nameVendor = "";
            $pub = 0;

        // Test le remplissage de tous les champs indispensables 

            if (!empty($_POST['codePostal']) && !empty($_POST['ville']) && !empty($_POST['surface']) && !empty($_POST['prix']) && !empty($_POST['isPlat']) && !empty($_POST['isViabilise']))
            {

                // Test la validité du code postal 
                // 5 chiffres

                    if (preg_match('#^[0-9]{5}$#', $_POST['codePostal']))
                    {
                        $codePostal = $_POST['codePostal'];
                    }

                // Test la validité de la surface
                // Supérieur à 1000

                    if (preg_match('#^[0-9]{3,}$#', $_POST['surface']))
                    {
                        $surface = $_POST['surface'];
                    }

                // Test la validité du prix
                // Supérieur à 1000

                    if (preg_match('#^[0-9]{3,}$#', $_POST['prix']))
                    {
                        $prix = $_POST['prix'];
                    }

                // Test s'il y a un nom de vendeur

                    if (isset($_POST['nameVendor']))
                    {
                        $nameVendor = $_POST['nameVendor'];
                        $_POST['nameVendor'] = "";
                    }

                // Test s'il y a un numéro de téléphone

                    if (isset($_POST['phoneVendor']))
                    {
                        $phoneVendor = $_POST['phoneVendor'];
                        $_POST['phoneVendor'] = "";
                    }

                // Test s'il y a de la pub

                    if (isset($_POST['isPub']))
                    {
                        $pub = ($_POST['isPub']='1') ? 1 : 0;
                        $_POST['isPub'] = NULL;
                    }

                // Fini de remplir les entrée

                    $ville = $_POST['ville'];

                // Retranscrit suivant résultat des booléans

                    $flat = ($_POST['isPlat']='1') ? 1 : 0;
                    $viabilise = ($_POST['isViabilise']='1') ? 1 : 0;  

                // Remet les entrées à 0 pour éviter de reremplir la base au rafraichissement de la page

                    $_POST['codePostal'] = NULL;
                    $_POST['ville'] = NULL;
                    $_POST['surface'] = NULL;
                    $_POST['prix'] = NULL;
                    $_POST['isViabilise'] = NULL;
                    $_POST['isPlat'] = NULL;

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

                $req = $bdd -> prepare('INSERT INTO prix_immo(codePostal, ville, surface, prix, flat, viabilise, nameVendor, phoneVendor, pub) VALUES(:codePostal, :ville, :surface, :prix, :flat, :viabilise, :nameVendor, :phoneVendor, :pub)');
                
                $req -> execute( array(
                    'codePostal' => $codePostal,
                    'ville' => $ville,
                    'surface' => $surface,
                    'prix' => $prix,
                    'flat' => $flat,
                    'viabilise' => $viabilise,
                    'nameVendor' => $nameVendor,
                    'phoneVendor' => $phoneVendor,
                    'pub' => $pub
                )) ;

                $reponse = "Le terrain a bien été entré en base.";

                $req -> closeCursor();
            }



            
 



 