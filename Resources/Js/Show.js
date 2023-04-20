//Load model data to initialize the view
    $.ajax({
        url: "/Config/routes.php",
        data: {
            id: getUrlParameter('id')
        },
        success: function( result ) {
            model = JSON.parse(result);
            console.log(model);
            $( "#id" ).html( "<strong>" + model.id + "</strong>" );
            $( "#model" ).html( "<strong>" + model.model + "</strong>" );
            $( "#color" ).html( "<strong>" + model.color + "</strong>" );
            $( "#size" ).html( "<strong>" + model.size + "</strong>" );
            $( "#amount" ).html( "<strong>" + model.amount + "</strong>" );
        }
    });


    $( document ).ready(function(){
 
        $( "button.delete" ).on( "click", function() {
            if(confirm( "Esta seguro de querer eliminar este registro?" )===true){
                alert('Eliminando');
                $.ajax({
                    url: "/Config/routes.php",
                    data: {
                        id: getUrlParameter('id'),
                        formFilter: 'delete',
                    },
                    success: function( result ) {
                        //model = JSON.parse(result);
                        console.log(result);
                        if(parseInt(result)===1){
                            alert('Eliminado Exitosamente');
                        }else{
                            alert('Ocurrio un error al intentar eliminar');
                        }
                    }
                });
            
            }
        });     
        
        $( "button.edit" ).on( "click", function() {
            window.location.href='edit.html?id=' + getUrlParameter('id');
        });     
    });