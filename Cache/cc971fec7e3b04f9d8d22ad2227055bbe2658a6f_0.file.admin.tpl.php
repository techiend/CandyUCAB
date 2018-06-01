<?php
/* Smarty version 3.1.30, created on 2018-05-21 03:41:50
  from "C:\xampp\htdocs\CandyUCAB\Templates\Public\admin.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5b0223deef9357_17788136',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'cc971fec7e3b04f9d8d22ad2227055bbe2658a6f' => 
    array (
      0 => 'C:\\xampp\\htdocs\\CandyUCAB\\Templates\\Public\\admin.tpl',
      1 => 1526854481,
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
function content_5b0223deef9357_17788136 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_subTemplateRender("file:../Overall/Header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>


<body>
    <div id="wrapper">
        <?php $_smarty_tpl->_subTemplateRender("file:../Overall/Navbar_admin.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

        <div id="page-wrapper">
            
        </div>
        <!-- /#page-wrapper -->
    </div>

</body>
<?php $_smarty_tpl->_subTemplateRender("file:../Overall/Footer.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
