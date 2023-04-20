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