<?php

include ("Main/Comunes.php");

session_start();

if (isset($_SESSION['user'])) {
    #echo 'Has iniciado sesion ',$_SESSION['name'];

    $Descuento= 0;
    $Total  =0;
    $J= array();
    $J[0]= array("Descripcion" => "caramelo", "Precio" => 30, "Cantidad"=> 5, "Descuento"=> 5);
    $J[1]= array("Descripcion" => "paleta", "Precio" => 50, "Cantidad"=> 15, "Descuento"=> 7);
    $J[2]= array("Descripcion" => "chupa-chupa", "Precio" => 20, "Cantidad"=> 10, "Descuento"=> 0);
    $J[3]= array("Descripcion" => "Ricolin", "Precio" => 15, "Cantidad"=> 20, "Descuento"=>10);
    $aux = json_encode($J);
    $aux = addslashes($aux);
    foreach ($J as $m) {
    $Descuento += $m["Precio"] * $m["Descuento"] /100 ;
    $Total += $m["Precio"] * $m["Cantidad"];
    }

    $template = new CandyUCAB();
    $template->assign(array(
        'page_name' => 'Presupuesto',
        'login' => true,
        'name' => $_SESSION['name'],
        'user' => $_SESSION['user'],
        'rol' => $_SESSION['rol'],
        "Descuento" => $Descuento,
        "Total" => $Total,
        "Productos"=> $J,
        "ProductosToFactura" => $aux
    ));
    $template->display("Public/presupuesto.tpl");
}
?>
