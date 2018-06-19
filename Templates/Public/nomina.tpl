{include file="../Overall/Header.tpl"}

<link rel="stylesheet" href="assets/css/clientes.css?v={0|rand:100}" media="screen">

{php}

    $tienda = $_smarty_tpl->tpl_vars['tienda']->value;

    $db = new Conexion();
    $queryP = $db->query("select CI_personal, Nombre_personal, apellido1_personal, fnac_personal, fInicioTrabajo_personal from personal where fk_CD in (select cod_CD from cargo_departamento where fk_departamento in (select cod_Departamento from departamento where fk_tienda = $tienda));");
{/php}

<body>
<div id="wrapper">
    {include file='../Overall/Navbar_admin.tpl'}
    <div id="page-wrapper">
        <div class="col-md-12 contenedorPrincipal">
            <div class="row">
                <div class="col-md-12">
                    <form action="nomina.php" method="post"  enctype="multipart/form-data">
                        <input type="file" name="nomina">
                        <input type="submit" class="btn btn-info" value="enviar">
                    </form>
                </div>
            </div>
            
            <div class="col-md-12 columna">
                {*<div class="row">*}
                    {*<div class="col-md-7">*}
                        {*<input type="text" class="form-control" placeholder="Buscar por persona">*}
                    {*</div>*}
                    {*<div class="col-md-3">*}
                        {*<button class="btn btn-info" type="submit">Buscar</button>*}
                    {*</div>*}
                {*</div>*}
                <br>
                <br>
                <div class="row">
                    <div class="col-md-6">
                        <label>Personal:</label>
                    </div>
                </div>
            </div>

            <div class="col-md-12">
                <table cellpadding="0" cellspacing="0" border="0" class="dataTable table table-striped" id="tabla">
                {*<table class="table table-bordered margenIz ">*}
                    <thead>
                    <tr>
                        <th width="20" class="text-center info">CI</th> <!-- Table Data Head -->
                        <th width="150" class="text-center info">Nombre</th> <!-- Table Data Head -->
                        <th width="150" class="text-center info">Apellido</th> <!-- Table Data Head -->
                        <th width="20" class="text-center info">Fecha de Nacimiento</th> <!-- Table Data Head -->
                        <th width="20" class="text-center info">Inicio de Operaciones</th>
                    </tr>
                    </thead>
                    <tbody>


                    {php}
                        while($row = $queryP->fetch_assoc()){
                    {/php}
                    <tr> <!-- Table Row -->
                        <td width="20" class="text-center">{php}echo utf8_encode($row['CI_personal']);{/php}</td>
                        <td width="150">{php}echo utf8_encode($row['Nombre_personal']);{/php}</td> <!-- Table Data -->
                        <td width="150">{php}echo utf8_encode($row['apellido1_personal']);{/php}</td> <!-- Table Data -->
                        <td width="20" class="text-center">{php}echo utf8_encode($row['fnac_personal']);{/php}</td>
                        <td width="20" class="text-center">{php}echo utf8_encode($row['fInicioTrabajo_personal']);{/php}</td>
                    </tr>
                    {php}
                        }
                    {/php}

                    {*<tr> <!-- Table Row -->*}
                        {*<td width="270"><a data-toggle="modal" data-target="#myModal"> Columna 1 - Fila 1</a></td> <!-- Table Data -->*}
                        {*<td width="5" class="text-center">Columna 2 - Fila 1</td> <!-- Table Data -->*}
                        {*<td width="5" class="text-center">Columna 3 - Fila 1</td>*}
                    {*</tr>*}
                    {*<tr> <!-- Table Row -->*}
                        {*<td width="270">Columna 1 - Fila 2</td> <!-- Table Data -->*}
                        {*<td width="5" class="text-center">Columna 2 - Fila 2</td> <!-- Table Data -->*}
                        {*<td width="5" class="text-center">Columna 3 - Fila 2</td>*}
                    {*</tr>*}
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

<script type="text/javascript">
    $(document).ready(function() {
        {literal}

        var myTable = $('#tabla').DataTable({
            "sPaginationType": "full_numbers",
            dom: 'Bfrtip',        // element order: NEEDS BUTTON CONTAINER (B) ****
            select: 'single',     // enable single row selection
            altEditor: true,      // Enable altEditor ****
            buttons: [
                // {text: 'Agregar',name: 'add'},
                // {extend: 'selected',text: 'Editar',name: 'edit'},
                // {extend: 'selected',text: 'Eliminar',name: 'delete'}
            ]
        });
    });

    $(document).ready(function() {
        var t = $('#tabla').DataTable();
        var counter = 1;

        $('#add').on( 'click', function () {
            t.row.add( [
                'Dulce #' + counter,
                'Cantidad',
                'Precio U.',
                'Precio T.'
            ] ).draw( false );

            counter++;
        } );

        $('#delete').on('click', function () {
            var data = t
                .rows()
                .data();


            console.log(data[0][0])
            alert( 'The table has ' + data.length + ' records' );
        });

    } );
    {/literal}
</script>
{include file="../Overall/Footer.tpl"}