
$( document ).ready(function() {

    //Get Data to initialize the form
    $.ajax({
        url: "/Config/routes.php",
        data: {
            id: getUrlParameter('id')
        },
        success: function( result ) {
            model = JSON.parse(result);
            console.log(model);
            $( "#id" ).val(  model.id  );
            $( "#model" ).val(  model.model  );
            $( "#color" ).val(  model.color  );
            $( "#size" ).val(  model.size  );
            $( "#amount" ).val(  model.amount  );
        }
    });


    $( "#editForm" ).submit(function( event ) {
        // Prevent the form from submitting
        event.preventDefault();
        var amount = $( "#amount" ).val();
    
       
        // Match only numbers
        var numberRegex = /^\d*$/;
        errors = '';
    
        // If the phone number doesn't match the regex
        if ( !numberRegex.test( amount ) ) {
            errors = 'El campo Cantidad debe contener solo numeros';
            console.log('error', errors);
        }
        
    
        if(errors===''){
            
            $.ajax({
                url: "/Config/routes.php",
                data: $( "#editForm" ).serialize(),
                type: "POST",
                dataType : "json",
            })
              // Code to run if the request succeeds (is done);
              // The response is passed to the function
              .done(function( json ) {
                if(json){
                    alert('Edicion Exitosa');            
                }else{
                    alert('No se realizaron cambios');            
                }
              })
              // Code to run if the request fails; the raw request and
              // status codes are passed to the function
              .fail(function( xhr, status, errorThrown ) {
                alert( "Error al intentar actualizar" );
                console.log( "Error: " + errorThrown );
                console.log( "Status: " + status );            
              })
            
        
        }else{
        
            alert(errors);
            return false;
        }
    
    });
});
    