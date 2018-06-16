{include file="../Overall/Header.tpl"}
<link rel="stylesheet" href="assets/css/presupuesto.css?v={0|rand:100}" media="screen">
<div id="wrapper">
    {include file='../Overall/Navbar_admin.tpl'}
    <div id="page-wrapper">
      <div class= "margins">
        <div class="row">
          <div class="col-md-12">
            <h3>Factura</h3>

          </div>

        </div>
        <div class="row">
      <div class="col-xs-4">
        <span class="help-block">Metodo de Pago</span>
        <input type="text" value="{$metodo}" class="form-control" placeholder="Tipo de pago" disabled>
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
    <span class="help-block">IVA</span> <input type="text" value="12%" class="form-control" placeholder="Monto del iva" disabled>
  </div>
  </div>
    <div class="row">
    <div class="col-xs-6">
    <span class="help-block">Total de compra</span> <input type="text" value="{$total}" class="form-control" placeholder="Total a pagar" disabled>
  </div>
  </div>
  <div class="row" style="padding-top: 10px">
    <div class="col-md-6">
      <button type="button" class="btn btn-primary btn-md">Salir</button>

    </div>
  </div>
</div>
</div>
</div>
