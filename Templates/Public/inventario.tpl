{include file="../Overall/Header.tpl"}

<link rel="stylesheet" href="assets/css/inventario.css?v={0|rand:100}" media="screen">

{php}
    $tienda = $_smarty_tpl->tpl_vars['tienda']->value;

    $db = new Conexion();
    $query = $db->query("select nombre_caramelo,cantidadProducto_I,costo_Caramelo  from inventario, caramelo where fk_pasillo in (SELECT cod_Pasillo FROM Pasillo WHERE fk_Tienda = $tienda) and cod_Caramelo = fk_Caramelo;");

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

                            <table cellpadding="0" cellspacing="0" border="0" class="dataTable table table-striped" id="tabla">
                            {*<table class="table table-bordered margenIz ">*}
                                <thead>
                                <tr>
                                    <th width="260" class="text-center info">Dulce</th> <!-- Table Data Head -->
                                    <th width="20" class="text-center info">Cantidad</th> <!-- Table Data Head -->
                                    <th width="20" class="text-center info">Precio U</th>
                                </tr>
                                </thead>
                                <tbody>

                                {php}
                                    while($row = $query->fetch_assoc()){
                                {/php}
                                    <tr> <!-- Table Row -->
                                        <td width="270">{php}echo utf8_encode($row['nombre_caramelo']);{/php}</td> <!-- Table Data -->
                                        <td width="5" class="text-center">{php}echo utf8_encode($row['cantidadProducto_I']);{/php}</td> <!-- Table Data -->
                                        <td width="5" class="text-center">{php}echo utf8_encode($row['costo_Caramelo']);{/php}</td>
                                    </tr>
                                {php}
                                    }
                                {/php}

                                </tbody>
                            </table>
                        </div>
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