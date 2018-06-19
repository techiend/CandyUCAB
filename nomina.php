<?php
include ("Main/Comunes.php");
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
if ($_SERVER["REQUEST_METHOD"] == "GET") {
    session_start();
    if (isset($_SESSION['user'])) {
        #echo 'Has iniciado sesion ',$_SESSION['name'];
        $template = new CandyUCAB();
        $template->assign(array(
            'page_name' => 'Nomina',
            'login' => true,
            'name' => $_SESSION['name'],
            'user' => $_SESSION['user'],
            'rol' => $_SESSION['rol'],
            'tienda' => $_SESSION['tienda']
        ));
        $template->display("Public/nomina.tpl");
    }
} else {
    require_once 'Main/libs/PHPExcel/Classes/PHPExcel.php';
    $archivo = $_FILES['nomina']['name'];
    $tipo = $_FILES['nomina']['type'];
    $destino = "bak_".$archivo;
    if (copy($_FILES['nomina']['tmp_name'],$destino)) echo "Archivo Cargado Con Éxito";
    $archivo = $destino;
    $inputFileType = PHPExcel_IOFactory::identify($archivo);
    $objReader = PHPExcel_IOFactory::createReader($inputFileType);
    $objPHPExcel = $objReader->load($archivo);
    $sheet = $objPHPExcel->getSheet(0);
    $highestRow = $sheet->getHighestRow();
    $highestColumn = $sheet->getHighestColumn();
    $arrayControl = array();
    for ($row = 2; $row <= $highestRow; $row++){
        $control = new stdClass();
        $control->entrada = $sheet->getCell("A".$row)->getValue();
        $control->salida = $sheet->getCell("B".$row)->getValue();
        $control->cedula = $sheet->getCell("C".$row)->getValue();
        $arrayControl[] = $control;
    }
    $db = new Conexion();
    $db->set_charset("UTF8");
    foreach ($arrayControl as $control) {
        $db->query("INSERT INTO control_laboral(FechaInicial_CL, FechaSalida_CL, fk_personal) VALUE ('". $control->entrada."','".$control->salida."', ". $control->cedula.");");
        echo $db->error;
    }

    session_start();
    $template = new CandyUCAB();
    $template->assign(array(
        'page_name' => 'Nomina',
        'login' => true,
        'name' => $_SESSION['name'],
        'user' => $_SESSION['user'],
        'rol' => $_SESSION['rol'],
        'tienda' => $_SESSION['tienda']
    ));
    $template->display("Public/nomina.tpl");
}
?>