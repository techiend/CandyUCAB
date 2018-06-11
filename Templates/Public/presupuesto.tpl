{include file="../Overall/Header.tpl"}
<link rel="stylesheet" href="assets/css/presupuesto.css?v={0|rand:100}" media="screen">
<div id="wrapper">
    {include file='../Overall/Navbar_admin.tpl'}
    <div id="page-wrapper">
      <div class= "margins">
        <div class="row">
      <div class="col-xs-4">
        <span class="help-block">Descripcion del producto</span>
        <input type="text" class="form-control" placeholder="Nombre producto">
      </div>
      <div class="col-xs-4">
        <span class="help-block">Precio por unidad</span>
        <input type="text" class="form-control" placeholder="Valor de la unidad">
      </div>
      <div class="col-xs-4">
        <span class="help-block">Cantidad</span>
        <input type="text" class="form-control" placeholder="Numero de unidades">
      </div>
    </div>
    <div class="row">
    <div class="col-xs-6">
      <span class="help-block">Descuento</span> <input type="text" class="form-control" placeholder="Descuento en la compra">
    </div>
    </div>
    <div class="row">
    <div class="col-xs-6">
    <span class="help-block">Total de compra</span> <input type="text" class="form-control" placeholder="Total a pagar">
  </div>
  </div>
  <div class="row">
    <div class= "col-md-5">
      <button type="submit" class="btn btn-primary">Siguiente</button>
  </div>
  </div>
</div>
</div>
</div>
