<?php

include("Main/Comunes.php");

$respuesta = new stdClass();
$respuesta->ok = false;
$respuesta->mgs = '';
$respuesta->tpl = '';

$estado = filter_input(INPUT_POST,'id');
$htmlM = "";
$htmlP = "";

if (isset($estado)&&$estado!=""){

    $db = new Conexion();


    $queryMun = $db->query("SELECT id_lugar, nombre_lugar FROM lugar WHERE tipo_lugar = 'Municipio' AND $estado=fk_lugar ORDER BY nombre_lugar ASC;");

    $municipios = $db->recorrer($queryMun);

        $htmlM .= "<option value=''>Selecciona un municipio</option>";
    foreach ($municipios as $key=>$m){
        $htmlM .= "<option value='".$m['id_lugar']."'>".utf8_encode($m['nombre_lugar'])."</option>";
    }

//echo $html;

    $respuesta->ok = true;
    $respuesta->msg = 'El estado que llego fue el: '.$estado;
    $respuesta->tpl = $htmlM;

}else{
    $htmlM .= "<option value=''>Selecciona un municipio</option>";
    $htmlP .= "<option value=''>Selecciona una parroquia</option>";
    $respuesta->ok = false;
    $respuesta->msg = "No se ha enviado ningun parametro";
    $respuesta->tpl = $htmlM;
    $respuesta->tplP = $htmlP;
}
header('Content-type: application/json');
echo json_encode($respuesta);

