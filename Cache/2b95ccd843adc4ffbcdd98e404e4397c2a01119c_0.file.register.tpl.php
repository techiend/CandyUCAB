<?php
/* Smarty version 3.1.30, created on 2018-04-23 21:29:16
  from "C:\wamp\www\CandyUCAB\Templates\Public\register.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5ade502c374662_94423200',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '2b95ccd843adc4ffbcdd98e404e4397c2a01119c' => 
    array (
      0 => 'C:\\wamp\\www\\CandyUCAB\\Templates\\Public\\register.tpl',
      1 => 1524518945,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:../Overall/Header.tpl' => 1,
    'file:../Overall/Footer.tpl' => 1,
  ),
),false)) {
function content_5ade502c374662_94423200 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:../Overall/Header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>


    <div class="jumbotron registerBox">
        <form method="POST" name="fregister" id="fregister" action="login.php?modo=register">
            <label>Nombre: </label>
            <input type="text" name="name" placeholder="Nombre" class="form-control"/>
            <label>Apellido: </label>
            <input type="text" name="lname" placeholder="Apellido" class="form-control"/>
            <label>Correo Electronico: </label>
            <input type="text" name="user" placeholder="Correo Electronico" class="form-control"/>
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
