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


    $queryMun = $db->query("SELECT cod_Lugar, nombre_Lugar FROM lugar WHERE tipo_Lugar = 'Municipio' AND $estado=fk_Lugar ORDER BY nombre_Lugar ASC;");

    $municipios = $db->recorrer($queryMun);

        $htmlM .= "<option value=''>Selecciona un municipio</option>";
    foreach ($municipios as $key=>$m){
        $htmlM .= "<option value='".$m['cod_Lugar']."'>".utf8_encode($m['nombre_Lugar'])."</option>";
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

