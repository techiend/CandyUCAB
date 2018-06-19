<?php

class Main{

  public function __construct(){    }
  public function getMunicipio($id_estado){
    $db = new Conexion();
    $queryMun = $db->query("SELECT id_lugar, nombre_lugar FROM lugar WHERE tipo_lugar = 'Municipio' AND '$id_estado' = fk_lugar ORDER BY nombre_lugar ASC;");
    $html = "<option value='0'>Seleccionar Municipio</option>";
    while ($rowM = $queryMun->fetch_assoc()){
      $html = "<option value='".$rowM['id_lugar']."'>".$rowM['nombre_lugar']."</option>";
    }
  }
}

?>
