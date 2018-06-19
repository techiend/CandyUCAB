{include file="../Overall/Header.tpl"}

<link rel="stylesheet" href="assets/css/clientes.css?v={0|rand:100}" media="screen">

{php}

    $tienda = $_smarty_tpl->tpl_vars['tienda']->value;

    $db = new Conexion();
    $queryCN = $db->query("select nombre_CN, apellido1_CN, ci_CN, rif_CN from cliente_natural WHERE cod_CN in (select fk_clienteNatural from carnet where fk_tienda = $tienda and fk_ClienteNatural is not null);");
    $queryCJ = $db->query("select DenominacionComercial_CJ, RazonSocial_CJ, CapitalDisponible_CJ, rif_CJ from cliente_juridico where cod_CJ in (select fk_ClienteJuridico from carnet where fk_tienda = $tienda and fk_ClienteJuridico is not null);");

{/php}

<body>
<div id="wrapper">
    {include file='../Overall/Navbar_admin.tpl'}
    <div id="page-wrapper">
        <div class="col-md-12 contenedorPrincipal">
            <div class="col-md-12 columna">
                {*<div class="row">*}
                    {*<div class="col-md-7">*}
                        {*<input type="text" class="form-control" placeholder="Buscar por persona">*}
                    {*</div>*}
                    {*<div class="col-md-3">*}
                        {*<button class="btn btn-info" type="submit">Buscar</button>*}
                    {*</div>*}
                {*</div>*}
                <div class="row">
                    <div class="col-md-6">
                        <label>Cliente Natural:</label>
                    </div>
                </div>
            </div>

            <div class="col-md-12">
                <table cellpadding="0" cellspacing="0" border="0" class="dataTable table table-striped" id="tablaCN">
                {*<table class="table table-bordered margenIz ">*}
                    <thead>
                    <tr>
                        <th width="150" class="text-center info">Nombre</th> <!-- Table Data Head -->
                        <th width="150" class="text-center info">Apellido</th> <!-- Table Data Head -->
                        <th width="20" class="text-center info">CI</th> <!-- Table Data Head -->
                        <th width="20" class="text-center info">RIF</th>
                    </tr>
                    </thead>
                    <tbody>


                    {php}
                        while($row = $queryCN->fetch_assoc()){
                    {/php}
                    <tr> <!-- Table Row -->
                        <td width="150">{php}echo utf8_encode($row['nombre_CN']);{/php}</td> <!-- Table Data -->
                        <td width="150">{php}echo utf8_encode($row['apellido1_CN']);{/php}</td> <!-- Table Data -->
                        <td width="20" class="text-center">{php}echo utf8_encode($row['ci_CN']);{/php}</td>
                        <td width="20" class="text-center">{php}echo utf8_encode($row['rif_CN']);{/php}</td>
                    </tr>
                    {php}
                        }
                    {/php}

                    </tbody>
                </table>
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
                <div class="row">
                    <div class="col-md-6">
                        <label>Cliente Juridico:</label>
                    </div>
                </div>
            </div>

            <div class="col-md-12">
                <table cellpadding="0" cellspacing="0" border="0" class="dataTable table table-striped" id="tablaCJ">
                    {*<table class="table table-bordered margenIz ">*}
                    <thead>
                    <tr>
                        <th width="150" class="text-center info">Denominación Comercial</th> <!-- Table Data Head -->
                        <th width="150" class="text-center info">Razón Social</th> <!-- Table Data Head -->
                        <th width="20" class="text-center info">Capital</th> <!-- Table Data Head -->
                        <th width="20" class="text-center info">RIF</th>
                    </tr>
                    </thead>
                    <tbody>

                    {php}
                        while($row = $queryCJ->fetch_assoc()){
                    {/php}
                    <tr> <!-- Table Row -->
                        <td width="150">{php}echo utf8_encode($row['DenominacionComercial_CJ']);{/php}</td> <!-- Table Data -->
                        <td width="150">{php}echo utf8_encode($row['RazonSocial_CJ']);{/php}</td> <!-- Table Data -->
                        <td width="20" class="text-center">{php}echo utf8_encode($row['CapitalDisponible_CJ']);{/php}</td>
                        <td width="20" class="text-center">{php}echo utf8_encode($row['rif_CJ']);{/php}</td>
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
    {literal}
    $(document).ready(function() {

        var myTableCN = $('#tablaCN').DataTable({
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

        var myTableCJ = $('#tablaCJ').DataTable({
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
    {/literal}
</script>
{include file="../Overall/Footer.tpl"}