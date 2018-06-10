<?php
/* Smarty version 3.1.30, created on 2018-05-21 03:41:51
  from "C:\xampp\htdocs\CandyUCAB\Templates\Overall\Navbar_admin.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5b0223df479bc9_76328516',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '738d057b9220f93aba70902b719392f887bbc668' => 
    array (
      0 => 'C:\\xampp\\htdocs\\CandyUCAB\\Templates\\Overall\\Navbar_admin.tpl',
      1 => 1526854481,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5b0223df479bc9_76328516 (Smarty_Internal_Template $_smarty_tpl) {
$rol = $_smarty_tpl->tpl_vars['rol']->value;

    $db = new Conexion();
    $query = $db->query("SELECT m.* FROM menu as m, rol_menu as rm WHERE rm.fk_Rol = $rol AND m.cod_Menu = rm.fk_Menu AND m.fk_Menu IS NULL;");

    $menu = $db->recorrer($query);

?>

<!-- Navigation -->
<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="index.php">Candy UCAB</a>
    </div>
    <!-- /.navbar-header -->

    <ul class="nav navbar-top-links navbar-right">

        <?php if ($_smarty_tpl->tpl_vars['login']->value) {?>
        <!-- /.dropdown -->
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <i class="fa fa-user fa-fw"></i> <?php echo $_smarty_tpl->tpl_vars['name']->value;?>
 <i class="fa fa-caret-down"></i>
            </a>
            <ul class="dropdown-menu dropdown-user">
                <li><a href="#"><i class="fa fa-user fa-fw"></i> Perfil</a>
                </li>
                <li><a href="#"><i class="fa fa-gear fa-fw"></i> Ajustes</a>
                </li>
                <li class="divider"></li>
                <li><a href="index.php?modo=logout"><i class="fa fa-sign-out fa-fw"></i> Cerrar Sesión</a>
                </li>
            </ul>
            <!-- /.dropdown-user -->
        </li>
        <!-- /.dropdown -->
        <?php }?>
    </ul>
    <!-- /.navbar-top-links -->

    <div class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">
            <ul class="nav" id="side-menu">
                <?php 
                    foreach ($menu as $key=>$m){
                        if ($m['tipo_Menu'] != 'D'){
                ?>
                            <li><a href="<?php echo $m['ref_Menu'];?>"><i class="<?php echo $m['clase_Menu'];?>"></i> <?php echo utf8_encode($m['nombre_Menu']);?></a></li>
                <?php 
                        }
                        else{
                            $query2 = $db->query("SELECT * FROM menu WHERE ".$m['cod_Menu']." = fk_Menu;");
                            $subMenu = $db->recorrer($query2);
                ?>
                            <li>
                                <a href="<?php echo $m['ref_Menu'];?>"><i class="<?php echo $m['clase_Menu'];?>"></i> <?php echo utf8_encode($m['nombre_Menu']);?><span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <?php 
                                        foreach ($subMenu as $key=>$sm){
                                    ?>
                                            <li><a href="<?php echo $sm['ref_Menu'];?>"><i class="<?php echo $sm['clase_Menu'];?>"></i> <?php echo utf8_encode($sm['nombre_Menu']);?></a></li>
                                    <?php 
                                        }
                                    ?>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                <?php 
                        }
                    }
                ?>
            </ul>
        </div>
        <!-- /.sidebar-collapse -->
    </div>
    <!-- /.navbar-static-side -->
</nav><?php }
}
