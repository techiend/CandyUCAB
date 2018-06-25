<?php

include("Main/Comunes.php");

    $respuesta = new stdClass();
    $respuesta->ok = false;
    $respuesta->mgs = '';
    $respuesta->tpl = '';

    $dulce = filter_input(INPUT_POST,'idD');
    $tienda = filter_input(INPUT_POST,'idT');
    $htmlM = "<label>Cantidad:</label>";

    if (isset($dulce)&&$dulce!=-1){

        $db = new Conexion();


        $queryDulce = $db->query("select cantidadProducto_I from inventario, caramelo where fk_pasillo in (SELECT cod_Pasillo FROM Pasillo WHERE fk_Tienda = $tienda) and cod_Caramelo = $dulce;");

        $dulceq = $db->recorrer($queryDulce);

        foreach ($dulceq as $key=>$d){
//            $htmlM .= "<option value='".$m['cod_Lugar']."'>".utf8_encode($m['nombre_Lugar'])."</option>";
            $htmlM .= "<input type='number' min='1' max ='".$d['cantidadProducto_I']."' value='1' name='numcantidad' id='numcantidad' class='form-control'/>";
        }

    //echo $html;

        $respuesta->ok = true;
        $respuesta->msg = 'El dulce que llego fue el: '.$dulce.' Y la tienda fue: '.$tienda;
        $respuesta->tpl = $htmlM;

    }else{
        $htmlM .= "<input type='number' min='1' value='1' name='numcantidad' id='numcantidad' class='form-control'/>";
        $respuesta->ok = false;
        $respuesta->msg = "No se ha enviado ningun parametro";
        $respuesta->tpl = $htmlM;
    }


    header('Content-type: application/json');
    echo json_encode($respuesta);

