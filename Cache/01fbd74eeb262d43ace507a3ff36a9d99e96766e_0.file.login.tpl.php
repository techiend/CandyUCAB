<?php
/* Smarty version 3.1.30, created on 2018-04-20 04:49:28
  from "C:\xampp\htdocs\CandyUCAB\Templates\Public\login.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5ad95538f0a254_02722408',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '01fbd74eeb262d43ace507a3ff36a9d99e96766e' => 
    array (
      0 => 'C:\\xampp\\htdocs\\CandyUCAB\\Templates\\Public\\login.tpl',
      1 => 1524191375,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:../Overall/Header.tpl' => 1,
    'file:../Overall/Footer.tpl' => 1,
  ),
),false)) {
function content_5ad95538f0a254_02722408 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:../Overall/Header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>


    <div class="jumbotron loginBox">
        <form method="POST" name="flogin" id="flogin" action="login.php?modo=login">
            <label>Usuario: </label>
            <input type="text" name="user" placeholder="Usuario" class="form-control"/>
            <label>Contraseña: </label>
            <input type="password" name="pass" placeholder="Contraseña" class="form-control"/>
            <input type="hidden" name="login" value="1"/>
            <input type="submit" class="btn btn-success" value="Iniciar Sesion"/>
        </form>
    </div>

<?php $_smarty_tpl->_subTemplateRender("file:../Overall/Footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
