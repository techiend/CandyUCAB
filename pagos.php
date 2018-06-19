<?php

include ("Main/Comunes.php");

session_start();

if (isset($_SESSION['user'])) {
    #echo 'Has iniciado sesion ',$_SESSION['name'];

    $Total = $_GET['Totalpagar'];
    $metodo = $_GET['Metodopago'];
    $descuento = $_GET['descuento'];
    $title = "Pagar";
    $productos = $_GET['productosArray'];
    

    if ($metodo == "TarjetaC") {
      $title = "Tarjeta de Credito";
    } elseif ($metodo == "TarjetaD") {
      $title = "Tarjeta de Debito";
    } elseif ($metodo == "Cheque") {
      $title = "Cheque";
    } elseif ($metodo == "Efectivo") {
      $title = "Efectivo";
    }




    $template = new CandyUCAB();
    $template->assign(array(
        'page_name' => 'Presupuesto',
        'login' => true,
        'name' => $_SESSION['name'],
        'user' => $_SESSION['user'],
        'rol' => $_SESSION['rol'],
        "title" => $title,
        "total" => $Total,
        "descuento" => $descuento,
        "productos" => $productos
    ));
    $template->display("Public/pagos.tpl");
}
?>
