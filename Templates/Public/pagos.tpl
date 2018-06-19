{include file="../Overall/Header.tpl"}
<link rel="stylesheet" href="assets/css/presupuesto.css?v={0|rand:100}" media="screen">
<div id="wrapper">
    {include file='../Overall/Navbar_admin.tpl'}
    <div id="page-wrapper">
      <div class="row">
        <div class="col-md-12">
          <h3>{$title}</h3>
        </div>
      </div>
        <form action="factura.php">
          {if $title neq "Efectivo"}
          <div class="row">
        <div class="col-xs-4">
          {if $title eq "Tarjeta de Credito" or $title eq "Tarjeta de Debito"}
	          <span class="help-block">Numero de la Tarjeta</span>
            <input type="text" class="form-control" placeholder="Numero de la tarjeta" name="numero" required>
          {elseif $title eq "Cheque"}
            <span class="help-block">Numero de cheque</span>
            <input type="text" class="form-control" placeholder="Numero del cheque" name="numero" required>
          {/if}
        </div>
        </div>
        {/if}
        {if $title eq "Tarjeta de Credito"}
        <div class="row">
      <div class="col-xs-4">
        <span class="help-block">Fecha de Vencimiento</span>
        <input type="date" class="form-control" placeholder="d/m/a" name="fecha" required>
      </div>
      </div>
      {/if}
      {if $title neq "Efectivo"}
        <div class="row">
        <div class="col-xs-4">
          <span class="help-block">C.I</span>
          <input type="text" class="form-control" placeholder="Cedula del usuario" name="cedula" required>
        </div>
      </div>
      {/if}
      <div>
        {if $title eq "Efectivo"}
        <div class="row">
      <div class="col-xs-4">
        <span class="help-block">Descripcion</span>
        <input type="text" class="form-control" placeholder="Concepto de la compra" name="descripcion" required>
      </div>
      </div>
      {/if}
        <div class="row">
      <div class="col-xs-4">
        <button type="submit" class="btn btn-primary help-block">Enviar</button>
      </div>
    </div>
        <input type="hidden" value="{$total}" name="Totalpagar">
        <input type="hidden" value="{$descuento}" name="descuento">
        <input type="hidden" value='{$productos}' name="productos">
        <input type="hidden" value='{$title}' name="metodoPago">

    </form>

    </div>
</div>




<script src="assets/js/presupuesto.js"></script>
