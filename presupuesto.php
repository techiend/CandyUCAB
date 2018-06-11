<?php

include ("Main/Comunes.php");

session_start();

if (isset($_SESSION['user'])) {
    #echo 'Has iniciado sesion ',$_SESSION['name'];
    $template = new CandyUCAB();
    $template->assign(array(
        'page_name' => 'Presupuesto',
        'login' => true,
        'name' => $_SESSION['name'],
        'user' => $_SESSION['user'],
        'rol' => $_SESSION['rol']
    ));
    $template->display("Public/presupuesto.tpl");
}
?>
