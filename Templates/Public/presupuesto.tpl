{include file="../Overall/Header.tpl"}
<link rel="stylesheet" href="assets/css/presupuesto.css?v={0|rand:100}" media="screen">
<div id="wrapper">
    {include file='../Overall/Navbar_admin.tpl'}
    <div id="page-wrapper">
      <div class= "margins">
        <div class="row">
          <div class="col-md-12">
            <h3>Presupuesto</h3>

          </div>

        </div>
        {foreach from=$Productos item=producto}
        <div class="row">
      <div class="col-xs-4">
        <span class="help-block">Descripcion del producto</span>
        <input type="text" value="{$producto['Descripcion']}" class="form-control" placeholder="Nombre producto" disabled>
      </div>
      <div class="col-xs-4">
        <span class="help-block">Precio por unidad</span>
        <input type="text" value="{$producto['Precio']}" class="form-control" placeholder="Valor de la unidad" disabled>
      </div>
      <div class="col-xs-4">
        <span class="help-block">Cantidad</span>
        <input type="text" value="{$producto['Cantidad']}" class="form-control" placeholder="Numero de unidades"disabled>
      </div>
    </div>
    {/foreach}
    <div class="row">
    <div class="col-xs-6">
      <span class="help-block">Descuento</span> <input type="text" value="{$Descuento}" class="form-control" placeholder="Descuento en la compra" disabled>
    </div>
    </div>
    <div class="row">
    <div class="col-xs-6">
    <span class="help-block">Total de compra</span> <input type="text" value="{$Total - $Descuento}" class="form-control" placeholder="Total a pagar" disabled>
  </div>
  </div>
  <div class="row" style="padding-top: 10px">
    <div class="col-md-6">
      <button type="button" class="btn btn-primary btn-md" onclick="metodoPago()">Siguiente</button>

    </div>
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

<script src="assets/js/presupuesto.js"></script>
