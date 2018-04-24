<?php
/* Smarty version 3.1.30, created on 2018-04-24 05:18:27
  from "C:\xampp\htdocs\CandyUCAB\Templates\Public\register.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5adea203ae0580_23126310',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'bc765a5ecb1b93a01d34135b5a65c12246ead543' => 
    array (
      0 => 'C:\\xampp\\htdocs\\CandyUCAB\\Templates\\Public\\register.tpl',
      1 => 1524539892,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:../Overall/Header.tpl' => 1,
    'file:../Overall/Footer.tpl' => 1,
  ),
),false)) {
function content_5adea203ae0580_23126310 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:../Overall/Header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>


    <div class="jumbotron registerBox">
        <form method="POST" name="fregister" id="fregister" action="login.php?modo=register">
            <div class="form-group">
                <label>Tipo de Cuenta:</label>
                <label class="radio-inline">
                    <input type="radio" name="optionsRadiosInline" id="optionsRadiosInline1" value="option1" checked>Persona Natural
                </label>
                <label class="radio-inline">
                    <input type="radio" name="optionsRadiosInline" id="optionsRadiosInline2" value="option2">Persona Juridica
                </label>
            </div>
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-6">
                        <label>Nombre: </label>
                        <input type="text" name="name" placeholder="Nombre" class="form-control"/>
                    </div>
                    <div class="col-md-6">
                        <label>Apellido: </label>
                        <input type="text" name="lname" placeholder="Apellido" class="form-control"/>
                    </div>
                </div>
            </div>

            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-6">
                        <label>Correo Electronico: </label>
                        <input type="text" name="user" placeholder="Correo Electronico" class="form-control"/>
                    </div>
                    <div class="col-md-6">
                        <label>Confirmar Correo: </label>
                        <input type="text" name="user" placeholder="Correo Electronico" class="form-control"/>
                    </div>
                </div>
            </div>
            <label>Contraseña: </label>
            <input type="password" name="pass" placeholder="Contraseña" class="form-control"/>
            <?php if (isset($_smarty_tpl->tpl_vars['error']->value)) {?>
            <div class="alert alert-danger loginError" role="alert"><?php echo $_smarty_tpl->tpl_vars['error']->value;?>
</div>
            <?php }?>
            <input type="hidden" name="login" value="1"/>
            <input type="submit" class="btn btn-success" value="Registrarse"/>
        </form>
    </div>

<?php $_smarty_tpl->_subTemplateRender("file:../Overall/Footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
