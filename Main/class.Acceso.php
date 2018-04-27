<?php

class Acceso {

    protected $user;
    protected $pass;
    protected $name;

    public function __construct($usuario, $password){
        $this->user = $usuario;
        $this->pass = $password;
    }

    public function __construct($usuario, $password, $name){
        $this->user = $usuario;
        $this->pass = $password;
        $this->name = $name;
    }

    public function Login(){
        $db = new Conexion();
        $query = $db->query("SELECT * FROM usuarios WHERE user_usuario = '$this->user' AND psw_usuario = '$this->pass';");

        $resultQuery = $db->recorrer($query);

        if ($resultQuery['name_usuario']!= ''){
            session_start();
            $_SESSION['user'] = $this->user;
            $_SESSION['name'] = $resultQuery['name_usuario'];
            $_SESSION['rol'] = $resultQuery['rol'];

            if ($resultQuery['rol'] == 1)
                header('location: admin.php');
            else
                header('location: index.php');
            
        } else {
            header('location: login.php?error=1'); // Usuario o Contraseña incorrectos
        }
    }

    public function Register(){

    }

    public function LostPass(){

    }
}

?>