<?php
/* Smarty version 3.1.30, created on 2018-04-27 20:41:53
  from "C:\wamp\www\CandyUCAB\Templates\Public\register.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5ae38b1152a9e9_98857615',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '2b95ccd843adc4ffbcdd98e404e4397c2a01119c' => 
    array (
      0 => 'C:\\wamp\\www\\CandyUCAB\\Templates\\Public\\register.tpl',
      1 => 1524861712,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:../Overall/Header.tpl' => 1,
    'file:../Overall/Footer.tpl' => 1,
  ),
),false)) {
function content_5ae38b1152a9e9_98857615 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:../Overall/Header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>


    <div class="jumbotron registerBox">

        <div class="form-group" onChange="mostrar(this.value);">
            <label>Tipo de Cuenta:</label>
            <label class="radio-inline">
                <input type="radio" name="optionsRadiosInline" id="PersonaNatural" checked onclick="mostrar(this.id);">Persona Natural
            </label>
            <label class="radio-inline">
                <input type="radio" name="optionsRadiosInline" id="PersonaJuridica" onclick="mostrar(this.id);">Persona Juridica
            </label>
        </div>

        <div id="registerPN" value='registerPN'>
            <form method="POST" name="fregisterPN" id="fregisterPN" action="login.php?modo=registerPN">
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

                <div class="col-md-12" style="margin-top: 10px">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Correo Electronico: </label>
                            <input type="text" name="user" placeholder="Correo Electronico" class="form-control"/>
                        </div>
                        <div class="col-md-6">
                            <label>Confirmar Correo: </label>
                            <input type="text" name="conf_user" placeholder="Correo Electronico" class="form-control"/>
                        </div>
                    </div>
                </div>

                <hr>

                <div class="col-md-12" style="margin-top: 10px">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Contraseña: </label>
                            <input type="text" name="pass" placeholder="Correo Electronico" class="form-control"/>
                        </div>
                        <div class="col-md-6">
                            <label>Confirmar Contraseña: </label>
                            <input type="text" name="conf_pass" placeholder="Correo Electronico" class="form-control"/>
                        </div>
                    </div>
                </div>
                <?php if (isset($_smarty_tpl->tpl_vars['error']->value)) {?>
                    <div class="alert alert-danger loginError" role="alert"><?php echo $_smarty_tpl->tpl_vars['error']->value;?>
</div>
                <?php }?>
                <input type="hidden" name="login" value="1"/>
                <input type="submit" class="btn btn-success" value="Registrarse"/>
            </form>
        </div>

        <div id="registerPJ" style="display: none;" >
            <form method="POST" name="fregisterPJ" id="fregisterPJ" action="login.php?modo=registerPJ">
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

                <div class="col-md-12" style="margin-top: 10px">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Correo Electronico: </label>
                            <input type="text" name="user" placeholder="Correo Electronico" class="form-control"/>
                        </div>
                        <div class="col-md-6">
                            <label>Confirmar Correo: </label>
                            <input type="text" name="conf_user" placeholder="Correo Electronico" class="form-control"/>
                        </div>
                    </div>
                </div>

                <hr>    

                <div class="col-md-12" style="margin-top: 10px">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Contraseña: </label>
                            <input type="text" name="pass" placeholder="Correo Electronico" class="form-control"/>
                        </div>
                        <div class="col-md-6">
                            <label>Confirmar Contraseña: </label>
                            <input type="text" name="conf_pass" placeholder="Correo Electronico" class="form-control"/>
                        </div>
                    </div>
                </div>
                <?php if (isset($_smarty_tpl->tpl_vars['error']->value)) {?>
                    <div class="alert alert-danger loginError" role="alert"><?php echo $_smarty_tpl->tpl_vars['error']->value;?>
</div>
                <?php }?>
                <input type="hidden" name="login" value="1"/>
                <input type="submit" class="btn btn-success" value="Registrarse"/>
            </form>
        </div>
    </div>

<?php echo '<script'; ?>
 src="assets/js/register.js"><?php echo '</script'; ?>
>
<?php $_smarty_tpl->_subTemplateRender("file:../Overall/Footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
