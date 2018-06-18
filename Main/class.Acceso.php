<?php

class Acceso {

    protected $user;
    protected $pass;
    protected $name;


    public function __construct($usuario, $password, $name){
        $this->user = $usuario;
        $this->pass = $password;
        $this->name = $name;
    }

    public function Login(){
        $db = new Conexion();
        $query1 = $db->query("SELECT * FROM usuario WHERE user_Usuario = '$this->user' AND pass_Usuario = '$this->pass';");

        $resultQuery1 = $db->result($query1);

        if ($resultQuery1['cod_Usuario'] != ''){


            session_start();
            $_SESSION['user'] = $this->user;
            $_SESSION['name'] = $this->user;
            $_SESSION['rol'] = $resultQuery1['fk_Rol'];

            header('location: admin.php');
        } else {
            header('location: index.php?error=1'); // Usuario o Contraseña incorrectos
        }
    }

    public function Register(){
        $db = new Conexion();
        $query = $db->query("SELECT user_usuario FROM usuarios WHERE user_usuario = '$this->user';");

        $resultQuery = $db->recorrer($query);

        echo "<pre>";
        echo $resultQuery;
        die;

        if($resultQuery['user_usuario'] == ''){


            header('location: index.php');
        } else {
            header('location: register.php?error=1'); // Usuario ya existe
        }
    }

    public function LostPass(){

    }

}

?>