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
            $query2 = $db->query("SELECT * FROM Cliente_Juridico as CJ, Cliente_Natural as CN, Personal as P WHERE CJ.fk_Usuario = '".$resultQuery1['cod_Usuario']."' OR CN.fk_Usuario = '".$resultQuery1['cod_Usuario']."' OR P.fk_Usuario = '".$resultQuery1['cod_Usuario']."';");
            session_start();
            $_SESSION['user'] = $this->user;
            $_SESSION['name'] = $resultQuery1['cod_Usuario'];
            $_SESSION['rol'] = $resultQuery1['fk_Rol'];

            if ($resultQuery1['rol'] == 1)
                header('location: admin.php');
            else
                header('location: index.php');
            
        } else {
            header('location: login.php?error=1'); // Usuario o Contraseña incorrectos
        }
    }

    public function Register(){
        $db = new Conexion();
        $query = $db->query("SELECT user_usuario FROM usuarios WHERE user_usuario = '$this->user';");

        $resultQuery = $db->recorrer($query);

        if($resultQuery['user_usuario'] == ''){
            $db->query("INSERT INTO usuarios(user_usuario, psw_usuario, name_usuario, rol) VALUES ('$this->user', '$this->pass', '$this->name', 2);");

            session_start();
            $_SESSION['user'] = $this->user;
            $_SESSION['name'] = $this->name;;
            $_SESSION['rol'] = 2;

            header('location: index.php');
        } else {
            header('location: register.php?error=1'); // Usuario ya existe
        }
    }

    public function LostPass(){

    }

}

?>