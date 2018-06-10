{include file="../Overall/Header.tpl"}

<link rel="stylesheet" href="assets/css/pedidos.css?v={0|rand:100}" media="screen">

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
                    <div class="col-md-7">
                        <input type="text" class="form-control" placeholder="Buscar por número">
                    </div>
                    <div class="col-md-3">
                        <button class="btn btn-info" type="submit">Buscar</button>
                    </div>
                </div>
                <br>
                <br>
                <div class="row">
                    <div class="col-md-6">
                        <label>Pedidos:</label>
                    </div>
                </div>
                <div class="col-md-12">
                    <table class="table table-bordered margenIz ">
                        <thead>
                        <tr>
                            <th width="260" class="text-center info">Pedido</th> <!-- Table Data Head -->
                            <th width="20" class="text-center info">Estado</th> <!-- Table Data Head -->
                            <th width="20" class="text-center info">Número</th>
                            <th width="20" class="text-center info">Costo Total</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr> <!-- Table Row -->
                            <td width="270">Columna 1 - Fila 1</td> <!-- Table Data -->
                            <td width="5" class="text-center">Columna 2 - Fila 1</td> <!-- Table Data -->
                            <td width="5" class="text-center">Columna 3 - Fila 1</td>
                            <td width="5" class="text-center">Columna 4 - Fila 1</td>
                        </tr>
                        <tr> <!-- Table Row -->
                            <td width="270">Columna 1 - Fila 2</td> <!-- Table Data -->
                            <td width="5" class="text-center">Columna 2 - Fila 2</td> <!-- Table Data -->
                            <td width="5" class="text-center">Columna 3 - Fila 2</td>
                            <td width="5" class="text-center">Columna 4 - Fila 2</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="row">
                <div class="col-md-3 col-md-offset-10">
                    <br>
                    <button class="btn btn-danger" type="submit">Cancelar Pedido</button>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

{include file="../Overall/Footer.tpl"}