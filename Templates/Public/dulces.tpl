{include file="../Overall/Header.tpl"}

{php}
    $tienda = $_smarty_tpl->tpl_vars['tienda']->value;

    $db = new Conexion();
    $query = $db->query("select cod_caramelo,nombre_caramelo from inventario, caramelo where fk_pasillo in (SELECT cod_Pasillo FROM Pasillo WHERE fk_Tienda = $tienda) and cod_Caramelo = fk_Caramelo;");

{/php}

<body>
<div id="wrapper">
    {include file='../Overall/Navbar_admin.tpl'}
    <div id="page-wrapper">
        <div class="container">
                <div class="row" style="margin-top: 20px">
                    <div class="col-md-4">
                        <label>Código del cliente:</label>
                        <input type="text" name="clienteCod" placeholder="Código del cliente" class="form-control"/>
                    </div>
                    <div class="col-md-4" style="margin-top: 5px">
                        <input type="submit" class="btn btn-success" value="Validar cliente"/>
                    </div>
                </div>
            {*<form method="POST" name="addCaramelo" id="addCaramelo" action="dulces.php?modo=addCaramelo">*}
                <div class="row" style="margin-top: 20px">
                    <div class="col-md-4">
                        <label>Selecciona un dulce:</label>
                        <select class="form-control" id="cb_Dulce">
                            <option value="-1">Selecciona un dulce</option>
                            {php}
                                while($row = $query->fetch_assoc()){
                            {/php}
                                <option value="{php}echo $row['cod_caramelo'];{/php}">{php}echo utf8_encode($row['nombre_caramelo']);{/php}</option>
                            {php}
                                }
                            {/php}
                        </select>
                        <input value="{$tienda}" id="tienda" name="tienda" type="hidden">
                    </div>
                </div>
                <div class="row" style="margin-top: 20px">
                    <div class="col-md-2" id="cant">
                        <label>Cantidad:</label>
                        <input type="number" min="1" value="1" name="numcantidad" id="cant" class="form-control"/>
                    </div>

                    <div class="col-md-4  col-md-offset-1" style="margin-top: 5px">
                        <input type="submit" id="add" class="btn btn-info" value="Agregar Caramelo"/>
                    </div>
                </div>
            {*</form>*}

            <div class="row" style="margin-top: 30px">
                 <div class="col-md-10">
                     <table cellpadding="0" cellspacing="0" border="0" class="dataTable table table-striped" id="tabla">
                      {*<table id="tabla" class="display table table-bordered" style="width:100%">*}
                          <thead>
                              <th width="210">Dulce</th>
                              <th width="70" class="text-center">Cantidad</th>
                              <th width="70" class="text-center">Precio U.</th>
                              <th width="70" class="text-center">Precio T.</th>
                          </thead>
                          <tbody>
                              {*<tr>*}
                                  {*<td width="210">Dulce #1</td>*}
                                  {*<td width="70" class="text-center" name="cant">Cantidad</td>*}
                                  {*<td width="70" class="text-right">Precio U.</td>*}
                                  {*<td width="70" class="text-right">Precio T.</td>*}
                              {*</tr>*}
                              {*<tr>*}
                                  {*<td width="210">Dulce #2</td>*}
                                  {*<td width="70" class="text-center" name="cant">Cantidad</td>*}
                                  {*<td width="70" class="text-right">Precio U.</td>*}
                                  {*<td width="70" class="text-right">Precio T.</td>*}
                              {*</tr>*}
                          </tbody>
                      </table>
                      {*<input type="submit" id="delete" class="btn btn-danger" value="-" style="margin: 0px"/>*}
                      {*<input type="submit" id="add" class="btn btn-success" value="+" style="margin: 0px"/>*}
                 </div>
            </div>
              <div class="row">
                  <div class="col-md-6 col-md-offset-5">
                      <div class="row">
                          <div class="col-md-4 text-right">
                              <label>Sub-Total Bs.:</label>
                          </div>
                          <div class="col-md-6 text-right" >
                              <input disabled value="0" id="stotal" class="text-right">
                          </div>
                      </div>
                  </div>
              </div>
              {*<div class="row" style="margin-top: 5px">*}
                  {*<div class="col-md-6 col-md-offset-5">*}
                      {*<div class="row">*}
                          {*<div class="col-md-4 text-right">*}
                              {*<label>Puntos:</label>*}
                          {*</div>*}
                          {*<div class="col-md-3 col-md-push-3">*}
                              {*<input type="number" min="0" value="0" name="puntos" class="text-right form-control"/>*}
                          {*</div>*}
                      {*</div>*}
                  {*</div>*}
              {*</div>*}
              <div class="row" style="margin-top: 5px">
                  <div class="col-md-6 col-md-offset-5">
                      <div class="row">
                          <div class="col-md-4 text-right">
                              {*<label>Total Bs.:</label>*}
                          </div>
                          <div class="col-md-6 text-right" >
                              {*<input disabled value="0" id="total" class="text-right">*}
                              <input type="submit" id="buy" class="btn btn-success" onclick="metodoPago()" value="Realizar pago"/>
                          </div>
                      </div>
                  </div>
              </div>

            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3 class="modal-title" id="exampleModalLabel">Presupuesto final</h3>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form action="pagos.php" validate>
                                <div class="row">
                                    <div class="col-xs-8">
                                        <div class="form-group">
                                            <label for="recipient-name" class="col-form-label">Monto total:</label>
                                            <input name="Totalpagar" type="text" value="{(($Total - $Descuento) * 0.12) + ($Total - $Descuento)}" class="form-control" id="recipient-name" readonly>
                                        </div>
                                    </div>
                                </div>
                                <div>
                                    <div class="row">
                                        <div class="col-xs-8">
                                            <select name="Metodopago" required>
                                                <option disabled selected value="">Metodo de Pago </option>
                                                <option value="TarjetaC"> Tarjeta de Credito </option>
                                                <option value="TarjetaD">Tarjeta de Debito</option>
                                                <option value="Cheque" >Cheque</option>
                                                <option value="Efectivo">Efectivo</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <input name="descuento" type="hidden" value="{$Descuento}" class="form-control" id="hidden-descuento" readonly>
                                <input name="productosArray" type="hidden" value='{$ProductosToFactura}' class="form-control" id="hidden-descuento" readonly>


                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Volver</button>
                            <button type="submit" class="btn btn-primary">Pagar</button>
                        </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!-- /#page-wrapper -->
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
                {extend: 'selected',text: 'Eliminar',name: 'delete'}
            ]
        });
    });

    $(document).ready(function() {
        var t = $('#tabla').DataTable();
        var counter = 1;

        $('#add').on( 'click', function () {
            var dulce = $('#cb_Dulce').val();
            var tienda = $('#tienda').val();
            var cantidad = $('#numcantidad').val();
            var stotal = $('#stotal').val();

            if (dulce == -1){
                alert( 'Por favor, selecciona un dulce.');
            }else {

                $.post("funcion.getDulce.php", {idD: dulce, idT: tienda, cant: cantidad}, function (json) {
                    console.log(json);
                    if (json.ok === true) {

                        t.row.add([
                            json.dulce,
                            cantidad,
                            json.precioU,
                            json.precioT
                        ]).draw(false);


                        $('#stotal').val(parseInt(stotal) + parseInt(json.precioT));
                    } else {
                        console.log('Else')
                    }
                }, 'json');

            }

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

<script>
    {literal}
    $(document).on('click', '.borrarDulce', function (event) {
        event.preventDefault();
        $(this).closest('tr').remove();
    });
    {/literal}
</script>

<script>
    {literal}

    $('#cb_Dulce').change(function () {
        var dulce = $(this).val();
        var tienda = $('#tienda').val();

        $.post("funcion.getCantd.php",{idD:dulce,idT:tienda},function (json) {
            console.log(json);
            if (json.ok === true){
                $('#cant').html(json.tpl);
            }else{
                console.log('Else')
                $('#cant').html(json.tpl);
            }
        },'json');
    });

    {/literal}
</script>


<script src="assets/js/presupuesto.js"></script>


{include file="../Overall/Footer.tpl"}