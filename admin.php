<?php

    include ("Main/Comunes.php");


    $modo = isset($_GET['modo']) ? $_GET['modo'] : 'default';

    switch ($modo) {
        case 'logout':
            session_start();
            session_destroy();
            break;
    }

    session_start();

    if (isset($_SESSION['user'])){
        #echo 'Has iniciado sesion ',$_SESSION['name'];
        if($_SESSION['rol']=='1'){
            $template = new CandyUCAB();
            $template->assign(array(
                'page_name' => 'Panel Administrativo',
                'login' => true,
                'name' => $_SESSION['name'],
                'user' => $_SESSION['user'],
                'rol' => $_SESSION['rol'],
                'menu'=>array(
                    '0'=>array(
                        'nombre'=>'Dashboard',
                        'href'=>'',
                        'icon'=>''
                    )
                )
            ));
            $template->display("Public/admin.tpl");
        }else{
            $template = new CandyUCAB();
            $template->assign(array(
                'page_name' => 'Panel Administrativo',
                'login' => true,
                'name' => $_SESSION['name'],
                'user' => $_SESSION['user'],
                'rol' => $_SESSION['rol']
            ));
            header('location: index.php');
            $template->display("Public/index.tpl");
        }
    }else {
        $template = new CandyUCAB();
        $template->assign(array(
            'page_name' => 'Index',
            'login' => false
        ));
        $template->display("Public/index.tpl");
    }


?>