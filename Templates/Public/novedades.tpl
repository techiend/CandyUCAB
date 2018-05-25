{include file="../Overall/Header.tpl"}

<link rel="stylesheet" href="assets/css/novedades.css?v={0|rand:100}" media="screen">

<body>

{php}

    $db = new Conexion();
    $query = $db->query("SELECT cod_Caramelo, nombre_Caramelo FROM caramelo");


{/php}


<div id="wrapper">
    {include file='../Overall/Navbar_admin.tpl'}
    <div id="page-wrapper">
        <div class="col-md-12 contenedorPrincipal">
            <div class="col-md-12 columna">
                <form method="POST" name="addCarameloNovedades" id="addCarameloNovedades" action="novedades.php?modo=prueba">
                    <div class="row">
                        <div class="col-md-4">
                            <label>Seleccione un Caramelo:</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <select class="form-control">
                                <option value="-1">Seleccione un caramelo</option>
                                {php}
                                    while($row = $query->fetch_assoc()){
                                {/php}
                                <option value="{php}echo $row['cod_Caramelo'];{/php}">{php}echo utf8_encode($row['nombre_Caramelo']);{/php}</option>
                                {php}
                                    }
                                {/php}
                            </select>
                        </div>
                    </div>
                </div>

                <div class="col-md-12 columna">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="col-md-12">
                                <div class="row">
                                    <label>Selecciona su tipo:</label>
                                </div>
                                <div class="row">
                                    <select class="form-control">
                                        <option value="-1">Selecciona su tipo</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="col-md-12">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Agrega un %:</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3">
                                        <input type="number" class="form-control" placeholder="%">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                     <div class="col-md-push-6  col-md-4">
                         <button class="btn btn-info" type="submit">Agregar dulce</button>
                     </div>
                </div>
            </form>

            <br><!-- Salto de linea -->
            <br><!-- Salto de linea -->

            <div class="row">
                <div class="col-md-8 table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th width="270" class="text-center info">Dulce</th> <!-- Table Data Head -->
                                <th width="5" class="text-center info">% Porcentaje</th> <!-- Table Data Head -->
                            </tr>
                        </thead>
                        <tbody>
                            <tr> <!-- Table Row -->
                                <td width="270">Columna 1 - Fila 1</td> <!-- Table Data -->
                                <td width="5" class="text-center">Columna 2 - Fila 1</td> <!-- Table Data -->
                            </tr>
                            <tr> <!-- Table Row -->
                                <td width="270">Columna 1 - Fila 2</td> <!-- Table Data -->
                                <td width="5" class="text-center">Columna 2 - Fila 2</td> <!-- Table Data -->
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="row contenedorPrincipal">
            <div class="col-md-2">
                <button class="btn btn-danger" type="submit">Eliminar</button>
            </div>
            <div class="col-md-1 col-md-push-7">
                <button class="btn btn-primary" type="submit">Guardar</button>
            </div>
        </div>
    </div>
    <!-- /#page-wrapper -->
</div>


</body>

{include file="../Overall/Footer.tpl"}