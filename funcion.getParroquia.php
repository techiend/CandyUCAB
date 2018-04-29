<?php

include("Main/Comunes.php");

$respuesta = new stdClass();
$respuesta->ok = false;
$respuesta->mgs = '';
$respuesta->tpl = '';

$municipio = filter_input(INPUT_POST,'id');
$html = "";

if (isset($municipio)&&$municipio!=""){

    $db = new Conexion();


    $queryParr = $db->query("SELECT id_lugar, nombre_lugar FROM lugar WHERE tipo_lugar = 'Parroquia' AND $municipio = fk_lugar ORDER BY nombre_lugar ASC;");
    $charset = $db->set_charset("UTF8");

    $parroquias = $db->recorrer($queryParr);

    $html .= "<option value=''>Selecciona una parroquia</option>";
    foreach ($parroquias as $key=>$p){
        $html .= "<option value='".$p['id_lugar']."'>".utf8_encode($p['nombre_lugar'])."</option>";
    }

//echo $html;

    $respuesta->ok = true;
    $respuesta->msg = 'La parroquia que llego fue el: '.$municipio;
    $respuesta->tpl = $html;

}else{
    $html .= "<option value=''>Selecciona una parroquia</option>";
    $respuesta->ok = false;
    $respuesta->msg = "No se ha enviado ningun parametro";
    $respuesta->tpl = $html;
}
header('Content-type: application/json');
echo json_encode($respuesta);

