<?php
/* Smarty version 3.1.30, created on 2018-05-21 03:41:48
  from "C:\xampp\htdocs\CandyUCAB\Templates\Public\login.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5b0223dcca7c73_32446062',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '01fbd74eeb262d43ace507a3ff36a9d99e96766e' => 
    array (
      0 => 'C:\\xampp\\htdocs\\CandyUCAB\\Templates\\Public\\login.tpl',
      1 => 1526854481,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:../Overall/Header.tpl' => 1,
    'file:../Overall/Footer.tpl' => 1,
  ),
),false)) {
function content_5b0223dcca7c73_32446062 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:../Overall/Header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>


<body>
    <div class="jumbotron loginBox">
        <form method="POST" name="flogin" id="flogin" action="login.php?modo=login">
            <label>Correo Electronico: </label>
            <input type="text" name="user" placeholder="Correo Electronico" class="form-control"/>
            <label>Contraseña: </label>
            <input type="password" name="pass" placeholder="Contraseña" class="form-control"/>

            <?php if (isset($_smarty_tpl->tpl_vars['error']->value)) {?>
            <div class="alert alert-danger loginError" role="alert"><?php echo $_smarty_tpl->tpl_vars['error']->value;?>
</div>
            <?php }?>
            
            <input type="hidden" name="login" value="1"/>
            <input type="submit" class="btn btn-success" value="Iniciar Sesion"/>
        </form>
        <label class="text-center">¿No tienes cuenta? <a href="register.php">Registrate</a></label>
    </div>
</body>

<?php $_smarty_tpl->_subTemplateRender("file:../Overall/Footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
