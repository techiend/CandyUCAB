{include file="../Overall/Header.tpl"}
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
    </div>
</div>
</div>
