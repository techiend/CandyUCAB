<?php

include ("Main/Comunes.php");

session_start();

if (isset($_SESSION['user'])) {
    #echo 'Has iniciado sesion ',$_SESSION['name'];

    $Total = $_GET['Totalpagar'];
    $descuento = $_GET['descuento'];
    $Productos = $_GET['productos'];
    $metodoPago = $_GET['metodoPago'];
    #realizar codigo para insertar el pago en la bd
    $Productos = stripslashes($Productos);
    $Productos = json_decode($Productos, true);




    $template = new CandyUCAB();
    $template->assign(array(
        'page_name' => 'Presupuesto',
        'login' => true,
        'name' => $_SESSION['name'],
        'user' => $_SESSION['user'],
        'rol' => $_SESSION['rol'],
        "total" => $Total,
        "Descuento" => $descuento,
        "Productos" => $Productos,
        "metodo" => $metodoPago

    ));
    $template->display("Public/factura.tpl");
}
?>
