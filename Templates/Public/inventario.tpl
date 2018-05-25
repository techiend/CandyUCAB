{include file="../Overall/Header.tpl"}

<link rel="stylesheet" href="assets/css/inventario.css?v={0|rand:100}" media="screen">

{php}
    $db = new Conexion();
    $query = $db->query("SELECT cod_caramelo,");

{/php}

<body>
    <div id="wrapper">
        {include file='../Overall/Navbar_admin.tpl'}
        <div id="page-wrapper">
            <div class="col-md-12 contenedorPrincipal">
                <div class="col-md-12 columna">
                        <br>
                        <br>
                        <br>
                    <div class="row">
                        <div class="col-md-6">
                            <label>Caramelos disponibles:</label>
                        </div>
                    </div>
                        <div class="col-md-12">
                            <table class="table table-bordered margenIz ">
                                <thead>
                                <tr>
                                    <th width="260" class="text-center info">Dulce</th> <!-- Table Data Head -->
                                    <th width="20" class="text-center info">Cantidad</th> <!-- Table Data Head -->
                                    <th width="20" class="text-center info">Precio U</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr> <!-- Table Row -->
                                    <td width="270">Columna 1 - Fila 1</td> <!-- Table Data -->
                                    <td width="5" class="text-center">Columna 2 - Fila 1</td> <!-- Table Data -->
                                    <td width="5" class="text-center">Columna 3 - Fila 1</td>
                                </tr>
                                <tr> <!-- Table Row -->
                                    <td width="270">Columna 1 - Fila 2</td> <!-- Table Data -->
                                    <td width="5" class="text-center">Columna 2 - Fila 2</td> <!-- Table Data -->
                                    <td width="5" class="text-center">Columna 3 - Fila 2</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                </div>
            </div>
        </div>
    </div>
</body>

{include file="../Overall/Footer.tpl"}