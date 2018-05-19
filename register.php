<?php

    include ("Main/Comunes.php");

    $error = isset($_GET['error']) ? $_GET['error'] : 'default';

    switch ($error) {
        case '1':
            $error = 'Usuario ya existe';
            break;
        case '2':
            $error = 'Error de envio de formulario';
            break;
        case '3':
            $error = 'Debes llenar el campo de contraseña';
            break;
        case '4':
            $error = 'Debes llenar el campo de usuario';
            break;
        case '5':
            $error = 'Debes seleccionar tu dirección';
            break;
        case '6':
            $error = 'Debes llenar el campo de teléfono';
            break;
        case '7':
            $error = 'Debes llenar el campo de correo electrónico';
            break;
        case '8':
            $error = 'Debes llenar el campo de apellido';
            break;
        case '9':
            $error = 'Debes llenar el campo de nombre';
            break;
        case '10':
            $error = 'Debes llenar el campo de cédula';
            break;
        default:
            unset($error);
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
                            if(!empty($_POST['email']) && !empty($_POST['conf_email'])){
                                if(!empty($_POST['celphone'])){
                                    if(!empty($_POST['cb_parroquia'])){
                                        if(!empty($_POST['user'])){
                                            if(!empty($_POST['pass']) && !empty($_POST['conf_pass'])){
                                                echo 'Realizar comprobaciones de datos y registrar';
                                            }else{
                                                header('location: register.php?error=3&ci='.$_POST['ci'].'&name='.$_POST['name'].'&lname1='.$_POST['lname1'].'&lname2='.$_POST['lname2'].'&celphone='.$_POST['celphone'].'&user='.$_POST['user']); // Debes llenar el campo de contraseña
                                            }
                                        }else{
                                            header('location: register.php?error=4&ci='.$_POST['ci'].'&name='.$_POST['name'].'&lname1='.$_POST['lname1'].'&lname2='.$_POST['lname2'].'&celphone='.$_POST['celphone'].'&user='.$_POST['user']); // Debes llenar el campo de usuario
                                        }
                                    }else{
                                        header('location: register.php?error=5&ci='.$_POST['ci'].'&name='.$_POST['name'].'&lname1='.$_POST['lname1'].'&lname2='.$_POST['lname2'].'&celphone='.$_POST['celphone'].'&user='.$_POST['user']); // Debes seleccionar tu dirección
                                    }
                                }else{
                                    header('location: register.php?error=6&ci='.$_POST['ci'].'&name='.$_POST['name'].'&lname1='.$_POST['lname1'].'&lname2='.$_POST['lname2'].'&celphone='.$_POST['celphone'].'&user='.$_POST['user']); // Debes llenar el campo de teléfono
                                }
                            }else{
                                header('location: register.php?error=7&ci='.$_POST['ci'].'&name='.$_POST['name'].'&lname1='.$_POST['lname1'].'&lname2='.$_POST['lname2'].'&celphone='.$_POST['celphone'].'&user='.$_POST['user']); // Debes llenar el campo de correo electrónico
                            }
                        }else{
                            header('location: register.php?error=8&ci='.$_POST['ci'].'&name='.$_POST['name'].'&lname1='.$_POST['lname1'].'&lname2='.$_POST['lname2'].'&celphone='.$_POST['celphone'].'&user='.$_POST['user']); // Debes llenar el campo de apellido
                        }
                    }else{
                        header('location: register.php?error=9&ci='.$_POST['ci'].'&name='.$_POST['name'].'&lname1='.$_POST['lname1'].'&lname2='.$_POST['lname2'].'&celphone='.$_POST['celphone'].'&user='.$_POST['user']); // Debes llenar el campo de nombre
                    }
                }else{
                    header('location: register.php?error=10&ci='.$_POST['ci'].'&name='.$_POST['name'].'&lname1='.$_POST['lname1'].'&lname2='.$_POST['lname2'].'&celphone='.$_POST['celphone'].'&user='.$_POST['user']); // Debes llenar el campo de cédula
                }
            } else {
                header('location: register.php?error=2'); // Debes iniciar sesion primero
            }

            break;
        case 'registerPJ':
            break;
        case 'registerPP':
            break;
        default:
            #echo 'Default';
            if (isset($error)) {
                $template = new CandyUCAB();
                $template->assign(array(
                    'page_name' => 'Registro',
                    'error' => $error
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