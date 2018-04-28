<?php

    include ("Main/Comunes.php");

    $error = isset($_GET['error']) ? $_GET['error'] : 'default';

    switch ($error) {
        case '1':
            $error = 'Usuario ya existe';
            break;
        case '2':
            $error = 'Debe llenar todos los campos';
            break;
        case '3':
            $error = 'Debes iniciar sesion primero';
            break;
        default:
            unset($error);
            break;
    }

    $modo = isset($_GET['modo']) ? $_GET['modo'] : 'default';

    switch ($modo) {
        case 'register':
            #echo 'register';

            if (isset($_POST['register'])){
                if(!empty($_POST['user']) and !empty($_POST['pass']) and !empty($_POST['name']) and !empty($_POST['lname1'])){

                    include("Main/class.Acceso.php");
                    if (isset($_POST['lname2'])){
                        $name = $_POST['name']." ".$_POST['lname1']." ".$_POST['lname2'];
                    }else {
                        $name = $_POST['name']." ".$_POST['lname1'];
                    }

                    $acceso = new Acceso($_POST['user'],$_POST['pass'],$name);
                    #$acceso->getEstado();
                    $acceso->Register();

                }else {
                    header('location: register.php?error=2'); // Campos Vacios
                }
            } else {
                header('location: register.php?error=3'); // Debes iniciar sesion primero
            }

            break;
        default:
            #echo 'Default';
            if (isset($error)) {
                $template = new CandyUCAB();
                $template->assign(array(
                    'page_name' => 'Registro',
                    'error' => $error
                ));
                $template->display("Public/register.tpl");
            }
            else{
                $template = new CandyUCAB();
                $template->assign(array(
                    'page_name' => 'Registro'
                ));
                $template->display("Public/register.tpl");
            }
            break;

}

?>