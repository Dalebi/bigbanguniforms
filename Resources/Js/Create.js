//Get Data to initialize the form
function sendData(form){

$.ajax({
    url: "/Config/routes.php",
    data: {        
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
}

$( document ).ready(function() {

$( "#createForm" ).submit(function( event ) {

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
        console.log(this);
        
        $.ajax({
            url: "/Config/routes.php",
            data: $( "#createForm" ).serialize(),
            type: "POST",
            dataType : "json",
        })
          // Code to run if the request succeeds (is done);
          // The response is passed to the function
          .done(function( json ) {
            alert('Registro Exitoso');
            $( "#createForm" ).trigger("reset");
            
          })
          // Code to run if the request fails; the raw request and
          // status codes are passed to the function
          .fail(function( xhr, status, errorThrown ) {
            alert( "Error en el envio" );
            console.log( "Error: " + errorThrown );
            console.log( "Status: " + status );            
          })
        
    
    }else{
    
        alert(errors);
        return false;
    }

});

});//$( document ).ready(function(..