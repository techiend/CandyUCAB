<?php

class Conexion extends mysqli {

        public function __construct()
        {
            parent::__construct('localhost', 'root', '', 'candy_ucab', 3306, '');

            $this->connect_errno ? die('Error con la conexion') : $x = 'Conectado';
            #echo $x;
            unset($x);
        }

        public function recorrer($y){
            return mysqli_fetch_array($y);
        }

}

$db = new Conexion();


?>