<?php
include "../Models/Uniform.class.php";


//print_r($_REQUEST);
$url_params = json_decode($_REQUEST['url_params'], TRUE);


$objUniformController = new UniformController();

//echo '$objUniformController->' . $_REQUEST['f'] .'($url_params);';
eval( '$objUniformController->' . $_REQUEST['f'] .'($url_params);' );

class UniformController {

    function delete($url_params){
        //here run validation rules, omited for now
        $uniform = new Uniform();
        echo json_encode($uniform->delete($url_params));
  
    }
        
    function get($url_params){
        //here run validation rules, omited for now
        $uniform = new Uniform();
        echo json_encode($uniform->get($url_params));
  
    }
    
    function getAll($url_params){
        //here run validation rules, omited for now
        $uniform = new Uniform();
        $uniform_res = $uniform->getAll($url_params);

        
        foreach($uniform_res as $key => $value){
            $id =  $uniform_res[$key]['id'];
            $model = $uniform_res[$key]['model'];
            $uniform_res[$key]['id'] = "<a href=\"Show.html?id=$id\">$id</a></b>";
            $uniform_res[$key]['model'] = "<b>$model</b>";
        }

        $data = new \stdClass();
        $data->data = $uniform_res;

        echo json_encode($data);
        //echo json_encode($uniform->getAll($url_params));

  
    }

    function store($url_params){
        //here run validation rules, omited for now
        $uniform = new Uniform();
        echo  $uniform->store($url_params);       
    }

    function update($url_params){
        //here run validation rules, omited for now
        $uniform = new Uniform();
        echo  $uniform->update($url_params);

        //header('location: ../Resources/Views/Edit.html?id='.$url_params['id'].'&result='.$result);
    }
}


