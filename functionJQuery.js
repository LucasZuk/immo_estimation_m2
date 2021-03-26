/* Requête AJAX permettant de renvoyer les informations nécessaires des prix de l'immobilier */

(function($){
  
    /* Renvoie un texte permettant d'estimer le coût moyen du m2 en fonction de :
                - le code postal
                - Plat ou non
                - Viabilisé ou non
        OU :
                - le nom de la ville
                - Plat ou non
                - Viabilisé ou non
    */

    function updateImmoDetail ()
    {
        /* Récupére les valeurs du formulaire qui nous intéressent */

            // Code postal
        	var codePostal = $('#codePostal').val();

            // Nom de la ville sélectionnée
        	var valueVille = $('#ville option:selected').val();

            // Retourne 1 si est Plat, 0 sinon
        	var isFlat = $('input[name=isPlat]:checked').val();

            // Retourne 1 si est Viabilisé, 0 sinon
        	var isViabilise = $('input[name=isViabilise]:checked').val();;

            /* Requête AJAX
            *   codePostal : string,
            *   ville : string,
            *   isFlat : 0 -> false || 1 -> true
            *   isViabilise : 0 -> false || 1 -> true
            *   
            *   return : une phrase indiquant le prix au m2 suivant les conditions 
            */

         		$.post(
         		{
         			url : 'getDataBase.php',
         			asynch : true,
         			data : 
         			{	
         				'codePostal' : codePostal,
         				'ville' : valueVille,
         				'isFlat' : isFlat,
         				'isViabilise' : isViabilise
         			},
         			dataType : 'text',

         			success : function(response)
         			{
         				document.getElementById("response").innerHTML = response;
         			},

         			error : function(error)
                    {
                        console.log(error);
                    }
        		});
    }

    // Déclanche la fonction updateImmoDetail à chaque changement dans le formulaire
    
        var $ville =$('#ville');
        $ville.change(function()
        {
            updateImmoDetail();
        });

        var $codePostal =$('#codePostal');
        $codePostal.change(function()
        {
            updateImmoDetail();
        });

        var $isFlat =$('input[name=isPlat]');
        $isFlat.change(function()
        {
            updateImmoDetail();
        });

        var $isViabilise =$('input[name=isViabilise]');
        $isViabilise.change(function()
        {
            updateImmoDetail();
        });
   
})(jQuery);
