{include file="../Overall/Header.tpl"}

<link rel="stylesheet" href="assets/css/clientes.css?v={0|rand:100}" media="screen">

<body>
<div id="wrapper">
    {include file='../Overall/Navbar_admin.tpl'}
    <div id="page-wrapper">
        <div class="col-md-12 contenedorPrincipal">
            <div class="col-md-12 columna">
                <div class="row">
                    <div class="col-md-7">
                        <input type="text" class="form-control" placeholder="Buscar por persona">
                    </div>
                    <div class="col-md-3">
                        <button class="btn btn-info" type="submit">Buscar</button>
                    </div>
                </div>
                <br>
                <br>
                <div class="row">
                    <div class="col-md-6">
                        <label>Clientes:</label>
                    </div>
                </div>
            </div>

            <div class="col-md-12">
                <table class="table table-bordered margenIz ">
                    <thead>
                    <tr>
                        <th width="260" class="text-center info">Clientes</th> <!-- Table Data Head -->
                        <th width="20" class="text-center info">Puntos</th> <!-- Table Data Head -->
                        <th width="20" class="text-center info">Estatus</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr> <!-- Table Row -->
                        <td width="270"><a data-toggle="modal" data-target="#myModal"> Columna 1 - Fila 1</a></td> <!-- Table Data -->
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

    <!-- Modal -->
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Modal Header</h4>
                </div>

                <div class="col-md-12 contenedorSecundaria">
                    <div class="col-md-12 columnaSecundaria">
                        <div class="modal-body">

                        </div>
                    </div>
                </div>


                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button class="btn btn-danger" type="submit">Eliminar</button>
                    <button class="btn btn-warning" type="submit">Modificar</button>
                    <button class="btn btn-success" type="submit">Información</button>
                </div>
            </div>
        </div>
    </div>
</body>

{include file="../Overall/Footer.tpl"}