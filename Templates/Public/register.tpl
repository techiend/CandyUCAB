{include file="../Overall/Header.tpl"}

{php}
    if (){

    }
{/php}

    <div class="jumbotron registerBox">

        <div class="form-group" onChange="mostrar(this.value);">
            <label>Tipo de Cuenta:</label>
            <label class="radio-inline">
                <input type="radio" name="optionsRadiosInline" id="PersonaNatural" checked onclick="mostrar(this.id);">Persona Natural
            </label>
            <label class="radio-inline">
                <input type="radio" name="optionsRadiosInline" id="PersonaJuridica" onclick="mostrar(this.id);">Persona Juridica
            </label>
        </div>

        <div id="registerPN" value='registerPN'>
            <form method="POST" name="fregisterPN" id="fregisterPN" action="register.php?modo=register">
                <input type="hidden" name="register" value="1"/>
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Cédula: </label>
                            <input type="text" name="ci" placeholder="Cédula" class="form-control"/>
                        </div>
                    </div>
                </div>

                <div class="col-md-12" style="margin-top: 10px;">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Nombre: </label>
                            <input type="text" name="name" placeholder="Nombre" class="form-control"/>
                        </div>
                    </div>
                </div>

                <div class="col-md-12" style="margin-top: 10px; margin-bottom: 15px;">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Primer Apellido: </label>
                            <input type="text" name="lname1" placeholder="Primer Apellido" class="form-control"/>
                        </div>
                        <div class="col-md-6">
                            <label>Segundo Apellido: </label>
                            <input type="text" name="lname2" placeholder="Segundo Apellido" class="form-control"/>
                        </div>
                    </div>
                </div>

                <div>
                    <hr>
                </div>

                <div class="col-md-12" style="margin-top: 10px;">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Estado: </label><br>
                            <select class="form-control" id="cb_estado" name="cb_estado" onchange="">
                                <option value="0">Seleccionar Estado</option>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label>Municipio: </label><br>
                            <select class="form-control" id="cb_municipio" name="cb_municipio">

                            </select>
                        </div>
                    </div>
                </div>

                <div class="col-md-12" style="margin-top: 10px; margin-bottom: 15px;">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Parroquia: </label><br>
                            <select class="form-control" id="cb_parroquia" name="cb_parroquia">
                                <option value="0">Seleccionar Parroquia</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div>
                    <hr>
                </div>

                <div class="col-md-12" style="margin-top: 10px;">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Usuario: </label>
                            <input type="text" name="user" placeholder="Usuario" class="form-control"/>
                        </div>
                    </div>
                </div>

                <div class="col-md-12" style="margin-top: 10px;">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Correo Electronico: </label>
                            <input type="text" name="email" placeholder="Correo Electronico" class="form-control"/>
                        </div>
                        <div class="col-md-6">
                            <label>Confirmar Correo: </label>
                            <input type="text" name="conf_email" placeholder="Correo Electronico" class="form-control"/>
                        </div>
                    </div>
                </div>

                <div class="col-md-12" style="margin-top: 10px;">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Contraseña: </label>
                            <input type="text" name="pass" placeholder="Correo Electronico" class="form-control"/>
                        </div>
                        <div class="col-md-6">
                            <label>Confirmar Contraseña: </label>
                            <input type="text" name="conf_pass" placeholder="Correo Electronico" class="form-control"/>
                        </div>
                    </div>
                </div>
                <input type="submit" class="btn btn-success" value="Registrarse"/>
            </form>
            {if isset($error)}
                <div class="alert alert-danger loginError" role="alert">{$error}</div>
            {/if}
        </div>

        <div id="registerPJ" style="display: none;" >
            <form method="POST" name="fregisterPJ" id="fregisterPJ" action="login.php?modo=registerPJ">
                <input type="hidden" name="register" value="1"/>
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-6">
                            <label>RIF: </label>
                            <input type="text" name="rif" placeholder="RIF" class="form-control"/>
                        </div>
                        <div class="col-md-6">
                            <label>Nombre: </label>
                            <input type="text" name="name" placeholder="Nombre" class="form-control"/>
                        </div>
                    </div>
                </div>
                <div class="col-md-12" style="margin-top: 10px;">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Primer Apellido: </label>
                            <input type="text" name="lname1" placeholder="Primer Apellido" class="form-control"/>
                        </div>
                        <div class="col-md-6">
                            <label>Segundo Apellido: </label>
                            <input type="text" name="lname2" placeholder="Segundo Apellido" class="form-control"/>
                        </div>
                    </div>
                </div>

                <div class="col-md-12" style="margin-top: 10px; margin-bottom: 15px;">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Correo Electronico: </label>
                            <input type="text" name="user" placeholder="Correo Electronico" class="form-control"/>
                        </div>
                        <div class="col-md-6">
                            <label>Confirmar Correo: </label>
                            <input type="text" name="conf_user" placeholder="Correo Electronico" class="form-control"/>
                        </div>
                    </div>
                </div>

                <div>
                    <hr>
                </div>

                <div class="col-md-12" style="margin-top: 10px;">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Contraseña: </label>
                            <input type="text" name="pass" placeholder="Correo Electronico" class="form-control"/>
                        </div>
                        <div class="col-md-6">
                            <label>Confirmar Contraseña: </label>
                            <input type="text" name="conf_pass" placeholder="Correo Electronico" class="form-control"/>
                        </div>
                    </div>
                </div>
                {if isset($error)}
                    <div class="alert alert-danger loginError" role="alert">{$error}</div>
                {/if}
                <input type="hidden" name="login" value="1"/>
                <input type="submit" class="btn btn-success" value="Registrarse"/>
            </form>
        </div>
    </div>

<script src="assets/js/register.js"></script>

{php}
    function llenarEstados(){
        $db = new Conexion();
        $query = $db->query("SELECT id_lugar, nombre_lugar FROM lugar WHERE tipo_lugar = 'Estado' ORDER BY nombre_lugar ASC;");

        $i=0;
        $combo = '<select class="form-control" id="cb_estado" name="cb_estado" onchange="cargarMunicipios(value);">';
        while($row = $query->fetch_assoc()){
            if($i==0)
                $combo .= '<option value="-1">Seleccionar Estado</option>'."\n";
            $combo .= '<option value="'.$row[0].'">'.$row[1].'</option>'."\n";
        }
        $combo .= "</select>\n";
        return $combo;
    }

    function llenarMunicipios(){
    $db = new Conexion();
    $query = $db->query("SELECT id_lugar, nombre_lugar FROM lugar WHERE tipo_lugar = 'Estado' ORDER BY nombre_lugar ASC;");

    $i=0;
    $comboM = '<select class="form-control" id="cb_municipio" name="cb_municipio">';
    while($row = $query->fetch_assoc()){
    if($i==0)
    $comboM .= '<option value="-1">Seleccionar Estado</option>'."\n";
    $comboM .= '<option value="'.$row[0].'">'.$row[1].'</option>'."\n";
    }
    $comboM .= "</select>\n";
    return $comboM;
    }
{/php}

{include file="../Overall/Footer.tpl"}