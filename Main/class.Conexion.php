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
            $i = 0;
            $array = array();

            while ($row = mysqli_fetch_assoc($y)) {
                $array[$i] = $row;
                $i++;
            }

            return $array;
        }

        public function result($x){
            return mysqli_fetch_array($x);
        }

}

$db = new Conexion();
$charset = $db->set_charset("UTF8");


?>
