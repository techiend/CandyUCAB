<?php

    include ("Main/Comunes.php");

    $error = isset($_GET['error']) ? $_GET['error'] : 'default';

    switch ($error) {
        case '1':
            $error = 'Usuario o Contraseña incorrectos';
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
        case 'login':
            #echo 'login';

            if (isset($_POST['login'])){
                if(!empty($_POST['user']) and !empty($_POST['pass'])){

                    include("Main/class.Acceso.php");
                    $acceso = new Acceso($_POST['user'],$_POST['pass'],null);
                    $acceso->Login();

                }else {
                    header('location: login.php?error=2'); // Campos Vacios
                }
            } else {
                header('location: login.php?error=3'); // Debes iniciar sesion primero
            }

            break;
        case 'lost-password':
            echo 'lost-password';
            break;
        default:
            #echo 'Default';
        if (isset($error)) {
            $template = new CandyUCAB();
            $template->assign(array(
               'page_name' => 'Login',
               'error' => $error
            ));
            $template->display("Public/login.tpl");
        } 
        else{
            $template = new CandyUCAB();
            $template->assign(array(
               'page_name' => 'Login'
            ));
            $template->display("Public/login.tpl");
        }
            break;
        
    }

?>
