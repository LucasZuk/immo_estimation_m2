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
        if (isset($_POST['codePostal']) && isset($_POST['ville']) && isset($_POST['surface']) && isset($_POST['prix']) && isset($_POST['isPlat']) && isset($_POST['isViabilise']))
        {

            $nameVendor = "OK ok";

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

            //Test la validité du prix
            // Supérieur à 1000
            if (preg_match('#^[0-9]{3,}$#', $_POST['prix']))
            {
                $prix = $_POST['prix'];
            }

            if (isset($_POST['nameVendor']))
            {
                $nameVendor = $_POST['nameVendor'];
                $_POST['nameVendor'] = "";
            }

            if (isset($_POST['phoneVendor']))
            {
                $phoneVendor = $_POST['phoneVendor'];
                $_POST['phoneVendor'] = "";
            }

            if (isset($_POST['isPub']))
            {
                $pub = ($_POST['isPub']='1') ? 1 : 0;
                $_POST['isPub'] = NULL;
            }


            $ville = $_POST['ville'];

            // Retranscrit suivant résultat des booléans
            $flat = ($_POST['isPlat']='1') ? 1 : 0;
            $viabilise = ($_POST['isViabilise']='1') ? 1 : 0;  

            $_POST['codePostal'] = NULL;
            $_POST['ville'] = NULL;
            $_POST['surface'] = NULL;
            $_POST['prix'] = NULL;
            $_POST['isViabilise'] = NULL;
            $_POST['isPlat'] = NULL;


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
    
            $req -> closeCursor();
            header('Location: prix_terrain.php');

        }

?>

<p>'            codePostal' => <?php echo $codePostal ?><br/>
                'ville' => <?php echo $ville ?><br/>
                'surface' => <?php echo $surface ?><br/>
                'prix' => <?php echo $prix ?><br/>
                'flat' => <?php echo $flat ?><br/>
                'viabilise' => <?php echo $viabilise ?><br/>
                'nameVendor' => <?php echo $nameVendor ?><br/>
                'pub' => <?php echo $pub ?><br/></p>
            
 



 