<?php

class Database {
        //Esta conexion es de pruebas
    public $cnx;  
    function __construct() {
       $this->cnx =  new mysqli("localhost", "root", "", "bigbanguniforms");
       
    }
    
}