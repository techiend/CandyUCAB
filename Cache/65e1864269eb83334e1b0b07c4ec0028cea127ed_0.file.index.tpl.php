<?php
/* Smarty version 3.1.30, created on 2018-04-20 04:45:10
  from "C:\xampp\htdocs\CandyUCAB\Templates\Public\index.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5ad954366d28b0_93715899',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '65e1864269eb83334e1b0b07c4ec0028cea127ed' => 
    array (
      0 => 'C:\\xampp\\htdocs\\CandyUCAB\\Templates\\Public\\index.tpl',
      1 => 1524192309,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:../Overall/Header.tpl' => 1,
    'file:../Overall/Navbar_classic.tpl' => 1,
    'file:../Overall/Footer.tpl' => 1,
  ),
),false)) {
function content_5ad954366d28b0_93715899 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:../Overall/Header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<?php $_smarty_tpl->_subTemplateRender("file:../Overall/Navbar_classic.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>


<?php $_smarty_tpl->_subTemplateRender("file:../Overall/Footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
