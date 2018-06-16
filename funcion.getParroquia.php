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


    $queryParr = $db->query("SELECT cod_Lugar, nombre_Lugar FROM lugar WHERE tipo_Lugar = 'Parroquia' AND $municipio = fk_Lugar ORDER BY nombre_Lugar ASC;");
    $charset = $db->set_charset("UTF8");

    $parroquias = $db->recorrer($queryParr);

    $html .= "<option value=''>Selecciona una parroquia</option>";
    foreach ($parroquias as $key=>$p){
        $html .= "<option value='".$p['cod_Lugar']."'>".utf8_encode($p['nombre_Lugar'])."</option>";
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
