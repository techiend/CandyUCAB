<?php

include("Main/Comunes.php");

    $respuesta = new stdClass();
    $respuesta->ok = false;
    $respuesta->mgs = '';
    $respuesta->tpl = '';

    $tipoU = filter_input(INPUT_POST,'tu');
    $codU = filter_input(INPUT_POST,'cu');
    $tipoP = filter_input(INPUT_POST, "tp");
    $htmlM = "";

    if (isset($tipoP)&&$tipoP!=-1){

        switch ($tipoU){
            case '2':
                $queryTDD = $db->query("SELECT * FROM tarjeta_debito WHERE fk_ClienteJ in (SELECT cod_CJ FROM cliente_juridico WHERE RIF_CJ like '%$codU');");
                $queryTDC = $db->query("SELECT * FROM tarjeta_credito WHERE fk_ClienteJ in (SELECT cod_CJ FROM cliente_juridico WHERE RIF_CJ like '%$codU');");

                $TDC = $db->recorrer($queryTDC);
                $TDD = $db->recorrer($queryTDD);
                break;
            case '1':
                $queryTDC = $db->query("SELECT * FROM tarjeta_credito WHERE fk_ClienteN in (SELECT cod_CN FROM cliente_natural WHERE CI_CN = $codU);");
                $queryTDD = $db->query("SELECT * FROM tarjeta_debito WHERE fk_ClienteN in (SELECT cod_CN FROM cliente_natural WHERE CI_CN = $codU);");

                $TDC = $db->recorrer($queryTDC);
                $TDD = $db->recorrer($queryTDD);
                break;
        }

        switch ($tipoP){
            case 'TDD':
                $htmlM .= "<option value=''>Selecciona una TDD</option>";
                $db = new Conexion();

                foreach ($TDD as $key=>$m){
                    $htmlM .= "<option value='".$m['cod_TDD']."'>".$m['numero_TDD']."</option>";
                }

                //echo $html;

                $respuesta->ok = true;
                $respuesta->msg = 'codU: '.$codU.' tipoU: '.$tipoU.' tipoP: '.$tipoP;
                $respuesta->tpl = $htmlM;
                break;
            case 'TDC':
                $htmlM .= "<option value=''>Selecciona una TDC</option>";
                $db = new Conexion();

                foreach ($TDC as $key=>$m){
                    $htmlM .= "<option value='".$m['cod_TDC']."'>".$m['numero_TDC']."</option>";
                }

                //echo $html;

                $respuesta->ok = true;
                $respuesta->msg = 'codU: '.$codU.' tipoU: '.$tipoU.' tipoP: '.$tipoP;
                $respuesta->tpl = $htmlM;
                break;
            case 'E':
                break;
            case 'C':
                break;
        }

    }else{
        $htmlM .= "<option value=''>Selecciona un método</option>";
        $respuesta->ok = false;
        $respuesta->msg = "No se ha enviado ningun parametro";
        $respuesta->tpl = $htmlM;
    }


    header('Content-type: application/json');
    echo json_encode($respuesta);

