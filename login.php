<?php

    include ("Main/Comunes.php");

    $modo = isset($_GET['modo']) ? $_GET['modo'] : 'default';
    $error = isset($_GET['error']) ? $_GET['error'] : '';

    switch ($error){
        case 'camposVacios':
            $error = 'mmgvo, se serio, llena tu vaina';
            break;
        default:
            break;
    }

    switch ($modo) {
        case 'login':
            #echo 'login';

            if (isset($_POST['login'])){
                if(!empty($_POST['user']) and !empty($_POST['pass'])){

                    include("Main/class.Acceso.php");
                    $acceso = new Acceso($_POST['user'],$_POST['pass']);
                    $acceso->Login();

                }else {
                    header('location: login.php?error=camposVacios');
                }
            } else {
                header('location: login.php');
            }

            break;
        case 'register':
            echo 'register';
            break;
        case 'lost-password':
            echo 'lost-password';
            break;
        default:
            #echo 'Default';
            $template = new CandyUCAB();
            $template->assign(array(
               'page_name' => 'Login',
                'error' => $error
            ));
            $template->display("Public/login.tpl");
            break;
    }

?>
