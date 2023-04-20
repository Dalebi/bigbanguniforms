<?php
 
 include "Database.class.php";


class Uniform {

    public $id;
    public $model;
    public $size;
    public $color;
    public $amount;
    protected $mysqli;        

    public function __construct(){
        $mysqli = new database();
        $this->mysqli = $mysqli->cnx;
    }

    //In production environment soft deletes may be useful, and force delete for testing purposes if apply
    public function delete($model){
        
        $query = "DELETE FROM uniform "
            . "WHERE id=?";
        
        $stmt = $this->mysqli->prepare($query);
        $stmt->bind_param('i',$model['id']);
        $stmt->execute();
        
        $result = $stmt->affected_rows;
        $stmt->close();
        
        return $result;
   }//public function delete(..    


    public function get($model){

        $query = "SELECT id, model, size, color, amount FROM uniform WHERE id=?";
        
        $stmt = $this->mysqli->prepare($query);
        $stmt->bind_param('i', $model['id']);
        $stmt->execute();
        $stmt->bind_result($this->id, $this->model, $this->size, $this->color, $this->amount);
        $stmt->fetch(); 
        $stmt->close();
        
        return $this;
    }//public function get(..


    public function getAll($model){

        $query = "SELECT id, model, size, color, amount FROM uniform";
        
        $stmt = $this->mysqli->query($query);
        
        $resultArray = $stmt->fetch_all(MYSQLI_ASSOC);
        
        $stmt->close();
        
        return $resultArray;
    }//public function getAll(..

    
    public function store($model){
 
         $query = "INSERT INTO uniform "
             . "(model, size, color, amount)"
             . " VALUES (?,?,?,?)";
         
         $stmt = $this->mysqli->prepare($query);
         $stmt->bind_param('sssi',$model['model'],$model['size'],$model['color'],$model['amount']);
         $stmt->execute();
 
         $result = $stmt->affected_rows;
         $stmt->close();
         
         return $result;
    }//public function store(..     


    public function update($model){
 
         $query = "UPDATE uniform SET "
             . "model=?, size=?, color=?, amount=? "
             . "WHERE id=?";
         
         $stmt = $this->mysqli->prepare($query);
         $stmt->bind_param('sssii',$model['model'],$model['size'],$model['color'],$model['amount'],$model['id']);
         $stmt->execute();
         
         $result = $stmt->affected_rows;
         $stmt->close();
         
         return $result;
    }//public function update(..    

}

?>