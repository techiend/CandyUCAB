    <?php

    include ("Main/Comunes.php");

    $errorPN = isset($_GET['errorPN']) ? $_GET['errorPN'] : 'default';

    switch ($errorPN) {
        case '1':
            $errorPN = 'Usuario ya existe';
            break;
        case '2':
            $errorPN = 'Error de envio de formulario';
            break;
        case '3':
            $errorPN = 'Debes llenar el campo de contraseña';
            break;
        case '4':
            $errorPN = 'Debes llenar el campo de usuario';
            break;
        case '5':
            $errorPN = 'Debes seleccionar tu dirección';
            break;
        case '6':
            $errorPN = 'Debes llenar el campo de teléfono';
            break;
        case '7':
            $errorPN = 'Debes llenar el campo de correo electrónico';
            break;
        case '8':
            $errorPN = 'Debes llenar el campo de apellido';
            break;
        case '9':
            $errorPN = 'Debes llenar el campo de nombre';
            break;
        case '10':
            $errorPN = 'Debes llenar el campo de cédula';
            break;
        default:
            unset($errorPN);
            break;
    }

    $errorPJ = isset($_GET['errorPJ']) ? $_GET['errorPJ'] : 'default';

    switch ($errorPJ) {
        case '1':
            $errorPJ = 'Usuario ya existe';
            break;
        case '2':
            $errorPJ = 'Error de envio de formulario';
            break;
        case '3':
            $errorPJ = 'Debes llenar el campo de contraseña';
            break;
        case '4':
            $errorPJ = 'Debes llenar el campo de usuario';
            break;
        case '5':
            $errorPJ = 'Debes seleccionar tu dirección';
            break;
        case '6':
            $errorPJ = 'Debes llenar el campo de teléfono';
            break;
        case '7':
            $errorPJ = 'Debes llenar el campo de correo electrónico';
            break;
        case '8':
            $errorPJ = 'Debes llenar el campo de apellido';
            break;
        case '9':
            $errorPJ = 'Debes llenar el campo de nombre';
            break;
        case '10':
            $errorPJ = 'Debes llenar el campo de cédula';
            break;
        default:
            unset($errorPJ);
            break;
    }

    $modo = isset($_GET['modo']) ? $_GET['modo'] : 'default';

    switch ($modo) {
        case 'registerPN':
            #echo 'register';

            if (isset($_POST['registerPN'])){
                if(!empty($_POST['ci'])){
                    if(!empty($_POST['name'])){
                        if(!empty($_POST['lname1'])){
                            if(!empty($_POST['cb_parroquiaPN'])){
                                if(!empty($_POST['user'])){
                                    if(!empty($_POST['pass']) && !empty($_POST['conf_pass'])){
//                                        echo 'Realizar comprobaciones de datos y registrar';
                                        echo "<pre>";
                                        print_r($_POST);

                                        include("Main/class.Acceso.php");
                                        $acceso = new Acceso($_POST['user'],$_POST['pass'],null);
                                        $acceso->Register($_POST);
                                    }else{
                                        header('location: register.php?errorPN=3&ci='.$_POST['ci'].'&name='.$_POST['name'].'&lname1='.$_POST['lname1'].'&lname2='.$_POST['lname2'].'&celphone='.$_POST['celphone'].'&user='.$_POST['user']); // Debes llenar el campo de contraseña
                                    }
                                }else{
                                    header('location: register.php?errorPN=4&ci='.$_POST['ci'].'&name='.$_POST['name'].'&lname1='.$_POST['lname1'].'&lname2='.$_POST['lname2'].'&celphone='.$_POST['celphone'].'&user='.$_POST['user']); // Debes llenar el campo de usuario
                                }
                            }else{
                                header('location: register.php?errorPN=5&ci='.$_POST['ci'].'&name='.$_POST['name'].'&lname1='.$_POST['lname1'].'&lname2='.$_POST['lname2'].'&celphone='.$_POST['celphone'].'&user='.$_POST['user']); // Debes seleccionar tu dirección
                            }
                        }else{
                            header('location: register.php?errorPN=8&ci='.$_POST['ci'].'&name='.$_POST['name'].'&lname1='.$_POST['lname1'].'&lname2='.$_POST['lname2'].'&celphone='.$_POST['celphone'].'&user='.$_POST['user']); // Debes llenar el campo de apellido
                        }
                    }else{
                        header('location: register.php?errorPN=9&ci='.$_POST['ci'].'&name='.$_POST['name'].'&lname1='.$_POST['lname1'].'&lname2='.$_POST['lname2'].'&celphone='.$_POST['celphone'].'&user='.$_POST['user']); // Debes llenar el campo de nombre
                    }
                }else{
                    header('location: register.php?errorPN=10&registerPN&ci='.$_POST['ci'].'&name='.$_POST['name'].'&lname1='.$_POST['lname1'].'&lname2='.$_POST['lname2'].'&celphone='.$_POST['celphone'].'&user='.$_POST['user']); // Debes llenar el campo de cédula
                }
            } else {
                header('location: register.php?errorPN=2'); // Debes iniciar sesion primero
            }

            break;
        case 'registerPJ':

            if (isset($_POST['registerPJ'])){
                if(!empty($_POST['rif'])){

                } else {
                    header('location: register.php?errorPJ=10&registerPJ'); // Debes iniciar sesion primero
                }
            } else {
                header('location: register.php?errorPJ=2'); // Debes iniciar sesion primero
            }

            break;
        case 'registerPP':
            break;
        default:
            #echo 'Default';
            if (isset($errorPN)) {
                $template = new CandyUCAB();
                $template->assign(array(
                    'page_name' => 'Registro',
                    'errorPN' => $errorPN
                ));
                $template->display("Public/register.tpl");
            }
            else if(isset($errorPJ)){
                $template = new CandyUCAB();
                $template->assign(array(
                    'page_name' => 'Registro',
                    'errorPJ' => $errorPJ
                ));
                $template->display("Public/register.tpl");
            }
            else{
                $template = new CandyUCAB();
                $template->assign(array(
                    'page_name' => 'Registro'
                ));
                $template->display("Public/register.tpl");
            }
            break;

}

?>