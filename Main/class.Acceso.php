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
        $query1 = $db->query("SELECT * FROM usuario WHERE user_usuario = '$this->user' AND pass_usuario = '$this->pass';");

        $resultQuery1 = $db->result($query1);

        echo '<pre>';
        print_r($resultQuery1);

        if (isset($resultQuery1['cod_Usuario'])){

            session_start();
            $_SESSION['user'] = $this->user;
            $_SESSION['name'] = $this->user;
            $_SESSION['rol'] = $resultQuery1['fk_Rol'];

            header('location: admin.php');
        } else {
            header('location: index.php?error=1'); // Usuario o Contraseña incorrectos
        }
    }

    public function Register($data){
        $db = new Conexion();
        $db->set_charset("UTF8");

        $user = $data['user'];
        $query = $db->query("SELECT user_usuario FROM usuario WHERE user_usuario = '$user';");
//        echo "SELECT user_usuario FROM usuario WHERE user_usuario = '".$data['user']."';";
        $resultQuery = $db->result($query);

        echo '<pre>';
        print_r($resultQuery);

        if(!isset($resultQuery['user_usuario'])){
            if($resultQuery['user_usuario'] != $data['user']){

                if(isset($data['registerPN'])){
                    $query2 = $db->query("SELECT cod_CN, CI_CN, RIF_CN FROM cliente_natural WHERE CI_CN = ".$data['ci']." OR RIF_CN = '".$data['rif']."';");
                    echo "SELECT cod_CN, CI_CN, RIF_CN FROM cliente_natural WHERE CI_CN = ".$data['ci']." OR RIF_CN = '".$data['rif']."';";
                    $resultQuery2 = $db->result($query2);

                    echo '<pre>';
                    print_r($resultQuery2);

                    if (empty($resultQuery2)){

//                        Datos para insertar Cliente Natural
                        $tienda = $data['tiendaPN'];
                        $ci = $data['ci'];
                        $rif = $data['rif'];
                        $name = $data['name'];
                        $lname1 = $data['lname1'];
                        $lname2 = isset($data['lname2']) ? "'".$data['lname2']."'" : NULL;
                        $parroquia = $data['cb_parroquiaPN'];
//                        Datos para insertar Contacto;
                        $tipoContacto = $data['tipoContactoPN'];
                        $contacto = $data['contactoPN'];
//                        Datos para insertar TipoPagos
                        $tdcPN = isset($data['TDCPN']) ? $data['TDCPN'] : NULL;
                        $tddPN = isset($data['TDDPN']) ? $data['TDDPN'] : NULL;

                        $db->query("INSERT INTO cliente_natural(nombre_CN, apellido1_CN, apellido2_CN, CI_CN, RIF_CN, fk_Lugar) VALUE ('$name', '$lname1', $lname2, $ci, '$rif', $parroquia);");
                        $query = $db->query("SELECT cod_CN FROM cliente_natural WHERE CI_CN = $ci;");
                        $resultQuery = $db->result($query);

                        $idCN = $resultQuery['cod_CN'];

//                      Añado Contactos
                        for ($i = 0; $i < sizeof($tipoContacto); $i++) {
                            $db->query("INSERT INTO Contacto(nombre_Contacto, valor_Contacto, tipo_Contacto, fk_ClienteJ, fk_Personal, fk_ClienteN) VALUE ('$tipoContacto[$i]', '$contacto[$i]', '$tipoContacto[$i]', NULL, NULL, $idCN);");
                        }
//                      Añado Tarjetas de Debito
                        if(isset($tddPN)) {
                            foreach ($tddPN as $tdd) {
                                $db->query("INSERT INTO tarjeta_debito(numero_TDD, fk_ClienteJ, fk_ClienteN) VALUE ('$tdd', NULL, $idCN);");
                            }
                        }
//                      Añado Tarjetas de Credito
                        if(isset($tdcPN)) {
//                            echo sizeof($tdcPN);
//                            $i = sizeof($tdcPN)/3;

                            $tarjetas = array();
                            foreach ($tdcPN as $llave=>$dato){
                                $j = count($dato);
                                $j = ($j-1);
                                for ( $index = 0; $index <= $j; $index++ ) {

                                $tarjetas[$index][$llave] = $dato[$index];
                                }
                            }


                            foreach ($tarjetas as $key=>$t){

                                $tdc = $t['nro'];
                                $vec = $t['vec'];
                                $cvv = $t['cvv'];

                                $db->query("INSERT INTO tarjeta_credito(numero_TDC, Fecha_Vencimiento_TDC, cvv_TDC, fk_ClienteJ, fk_ClienteN) VALUE ('$tdc', '$vec', $cvv, NULL, $idCN);");

                            }
                        }

//                      Añado el usuario
                        if($data['pass'] == $data['conf_pass']){        
                            $pass = $data['pass'];
                            $db->query("INSERT INTO Usuario(user_Usuario, pass_Usuario, fk_Rol, fk_ClienteJ, fk_ClienteN, fk_Personal) VALUE ('$user', '$pass', 2, NULL, $idCN, NULL);");
                        }

                        $query = $db->query("SELECT cod_Usuario FROM Usuario WHERE user_Usuario = '$user';");
                        $resultQuery = $db->result($query);

                        $idUser = $resultQuery['cod_Usuario'];
//                        Creo el codigo del carnet e Inserto el carnet del Usuario Registrado
                        $codCarnet = "".$tienda." - ".str_pad($idUser, 8, "0", STR_PAD_LEFT);
                        $db->query("INSERT INTO carnet(descripcion_Carnet, fk_ClienteNatural, fk_ClienteJuridico, fk_tienda) VALUES ('$codCarnet', $idCN , NULL, $tienda);");


//                      Cargo la ventana de login
                        header('location: index.php');

                    }else{
//                        Cédula y/o RIF, ya se encuentran registrados.
                        header('location: register.php?error=1'); // Usuario ya existe
                    }
                }
                if(isset($data['registerPJ'])){

                }
            }else{
                header('location: register.php?error=1'); // Usuario ya existe
            }
        } else {
            header('location: register.php?error=1'); // Usuario ya existe
        }
    }

    public function LostPass(){

    }

}

?>