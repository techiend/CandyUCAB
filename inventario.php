<?php

include ("Main/Comunes.php");

session_start();

if (isset($_SESSION['user'])) {
    #echo 'Has iniciado sesion ',$_SESSION['name'];
    $template = new CandyUCAB();
    $template->assign(array(
        'page_name' => 'Inventario',
        'login' => true,
        'name' => $_SESSION['name'],
        'user' => $_SESSION['user'],
        'rol' => $_SESSION['rol'],
        'tienda' => $_SESSION['tienda'],
        'codU' => $_SESSION['codU'],
        'tipoU' => $_SESSION['tipoU']
    ));
    $template->display("Public/inventario.tpl");
}
?>