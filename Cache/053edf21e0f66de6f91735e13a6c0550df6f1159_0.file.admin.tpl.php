<?php
/* Smarty version 3.1.30, created on 2018-04-27 19:20:03
  from "C:\wamp\www\CandyUCAB\Templates\Public\admin.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5ae377e38c19d8_43654156',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '053edf21e0f66de6f91735e13a6c0550df6f1159' => 
    array (
      0 => 'C:\\wamp\\www\\CandyUCAB\\Templates\\Public\\admin.tpl',
      1 => 1524856720,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:../Overall/Header.tpl' => 1,
    'file:../Overall/Navbar_admin.tpl' => 1,
    'file:../Overall/Footer.tpl' => 1,
  ),
),false)) {
function content_5ae377e38c19d8_43654156 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:../Overall/Header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>


<?php if ($_smarty_tpl->tpl_vars['rol']->value == '1') {?>
    <div id="wrapper">
        <?php $_smarty_tpl->_subTemplateRender("file:../Overall/Navbar_admin.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

        <div id="page-wrapper">
            
        </div>
        <!-- /#page-wrapper -->
    </div>
<?php }?>

<?php $_smarty_tpl->_subTemplateRender("file:../Overall/Footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
