<?php

include ("Main/Comunes.php");

if ($_SERVER["REQUEST_METHOD"] == "GET") {

  $db = new Conexion();
  $query = $db->query("SELECT cod_Tienda, nombre_Tienda FROM tienda order by nombre_Tienda asc;");
  $tiendas = $db->recorrer($query);
  $template = new CandyUCAB();
  $template->assign("tiendas", $tiendas);
  $template->display("Public/registerPersonal.tpl");


} elseif ($_SERVER["REQUEST_METHOD"] == "POST") {


}

?>
