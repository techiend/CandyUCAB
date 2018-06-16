{include file="../Overall/Header.tpl"}


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
            <form method="POST" name="addCaramelo" id="addCaramelo" action="dulces.php?modo=addCaramelo">
                <div class="row" style="margin-top: 20px">
                    <div class="col-md-4">
                        <label>Selecciona un dulce:</label>
                        <select class="form-control" id="cb_Dulce">
                            <option value="">Selecciona un dulce</option>
                        </select>
                    </div>
                </div>
                <div class="row" style="margin-top: 20px">
                    <div class="col-md-4">
                        <label>Selecciona un tipo:</label>
                        <select class="form-control" id="cb_TipoDulce">
                            <option value="">Selecciona un tipo</option>
                        </select>
                    </div>

                    <div class="col-md-2 col-md-offset-1">
                        <label>Cantidad:</label>
                        <input type="number" min="1" value="1" name="cantidad" class="form-control"/>
                    </div>

                    <div class="col-md-4  col-md-offset-1" style="margin-top: 5px">
                        <input type="submit" class="btn btn-info" value="Agregar Caramelo"/>
                    </div>
                </div>
            </form>

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
                      <input type="submit" id="delete" class="btn btn-danger" value="-" style="margin: 0px"/>
                      <input type="submit" id="add" class="btn btn-success" value="+" style="margin: 0px"/>
                 </div>
            </div>
              <div class="row">
                  <div class="col-md-6 col-md-offset-5">
                      <div class="row">
                          <div class="col-md-4 text-right">
                              <label>Sub-Total:</label>
                          </div>
                          <div class="col-md-6 text-right">
                              Bs.S. 999.999.999,99
                          </div>
                      </div>
                  </div>
              </div>
              <div class="row" style="margin-top: 5px">
                  <div class="col-md-6 col-md-offset-5">
                      <div class="row">
                          <div class="col-md-4 text-right">
                              <label>Puntos:</label>
                          </div>
                          <div class="col-md-3 col-md-push-3">
                              <input type="number" min="0" value="0" name="puntos" class="text-right form-control"/>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="row" style="margin-top: 5px">
                  <div class="col-md-6 col-md-offset-5">
                      <div class="row">
                          <div class="col-md-4 text-right">
                              <label>Total:</label>
                          </div>
                          <div class="col-md-6 text-right">
                              Bs.S. 999.999.999,99
                          </div>
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
                {text: 'Agregar',name: 'add'},
                {extend: 'selected',text: 'Editar',name: 'edit'},
                {extend: 'selected',text: 'Eliminar',name: 'delete'}
            ]
        });
    });



    // $(document).ready(function() {
    //     $('#tabla').DataTable({
    //         "searching": false
    //     });
    // } );
    //



    // $(document).ready(function() {
    //     var table = $('#tabla').DataTable();
    //
    //     $('#tabla tbody').on( 'click', 'tr', function () {
    //         if ( $(this).hasClass('selected') ) {
    //             $(this).removeClass('selected');
    //         }
    //         else {
    //             table.$('tr.selected').removeClass('selected');
    //             $(this).addClass('selected');
    //         }
    //         // $(this).toggleClass('selected');
    //     } );
    // } );

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

<script>
    {literal}
    $(document).on('click', '.borrarDulce', function (event) {
        event.preventDefault();
        $(this).closest('tr').remove();
    });
    {/literal}
</script>
    
{include file="../Overall/Footer.tpl"}