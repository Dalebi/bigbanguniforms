<?php

switch($_SERVER['REQUEST_METHOD']){
    case 'GET':
        $url_params = json_encode($_REQUEST); 
         
        switch($_REQUEST['formFilter']){
            case 'getAll':
                $url_params.="&f=getAll";
            break;
            case 'delete':
                $url_params.="&f=delete";
            break;
            default:
                $url_params.="&f=get";
            break;
        }
        header("location: ../Controllers/UniformController.php?url_params=" . $url_params );
        
    break;
    case 'POST':
        $url_params = json_encode($_REQUEST) . "&f=store"; 
    
        if($_REQUEST['formFilter']=='edit'){
            $url_params = json_encode($_REQUEST) . "&f=update"; 
        }
        
        header("location: ../Controllers/UniformController.php?url_params=" . $url_params );
    break;
    
}


