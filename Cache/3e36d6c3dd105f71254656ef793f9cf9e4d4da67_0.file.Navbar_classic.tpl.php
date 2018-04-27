<?php
/* Smarty version 3.1.30, created on 2018-04-27 19:06:53
  from "C:\wamp\www\CandyUCAB\Templates\Overall\Navbar_classic.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5ae374cdcddf25_66215647',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '3e36d6c3dd105f71254656ef793f9cf9e4d4da67' => 
    array (
      0 => 'C:\\wamp\\www\\CandyUCAB\\Templates\\Overall\\Navbar_classic.tpl',
      1 => 1524195807,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5ae374cdcddf25_66215647 (Smarty_Internal_Template $_smarty_tpl) {
?>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="login.php">Brand</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="#">Link <span class="sr-only">(current)</span></a></li>
                <li><a href="#">Link</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">One more separated link</a></li>
                    </ul>
                </li>
            </ul>

            <?php if ($_smarty_tpl->tpl_vars['login']->value) {?>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><?php echo $_smarty_tpl->tpl_vars['name']->value;?>
<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Ajustes</a></li>
                            <li><a href="#">Perfil</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="index.php?modo=logout">Cerrar Sesion</a></li>
                        </ul>
                    </li>
                </ul>
            <?php }?>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav><?php }
}
