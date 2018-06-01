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
                    <table id="TablaDulces" class="table table-bordered">
                        <thead>
                            <th width="210">Dulce</th>
                            <th width="70" class="text-center">Cantidad</th>
                            <th width="70" class="text-center">Precio U.</th>
                            <th width="70" class="text-center">Precio T.</th>
                            <th width="1"></th>
                        </thead>
                        <tbody>
                            <!-- Aca empieza el llenado automatico -->
                            <tr>
                                <td width="210">Dulce #1</td>
                                <td width="70" class="text-center" name="cant">Cantidad</td>
                                <td width="70" class="text-right">Precio U.</td>
                                <td width="70" class="text-right">Precio T.</td>
                                <td width="1"><input type="submit" class="btn btn-danger borrarDulce" value="-" style="margin: 0px"/></td>
                            </tr>
                            <tr>
                                <td width="210">Dulce #2</td>
                                <td width="70" class="text-center" name="cant">Cantidad</td>
                                <td width="70" class="text-right">Precio U.</td>
                                <td width="70" class="text-right">Precio T.</td>
                                <td width="1"><input type="submit" class="btn btn-danger borrarDulce" value="-" style="margin: 0px"/></td>
                            </tr>
                            <!-- Aca termina el llenado automatico -->
                        </tbody>
                    </table>
                    <ul class="pagination pagination-lg pager" id="PaginadorDulces"></ul>
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

<script>
    {literal}
    $(document).on('click', '.borrarDulce', function (event) {
        event.preventDefault();
        $(this).closest('tr').remove();
    });
    {/literal}
</script>
    
{include file="../Overall/Footer.tpl"}