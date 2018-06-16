{include file="../Overall/Header.tpl"}

<body>
{php}

    $db = new Conexion();
    $query = $db->query("SELECT cod_Lugar, nombre_Lugar FROM lugar WHERE tipo_Lugar = 'Estado' ORDER BY nombre_Lugar ASC;");



{/php}


    <div class="jumbotron registerBox">

        <div id="registerPersonal" value='registerPersonal'>
            <form method="POST" name="registerPersonal" id="registerPersonal" action="">
                <div class="col-md-12 registerData">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Cédula: </label>
                            <input type="text" name="ci" placeholder="Cédula" value="{php}if(isset($_GET['ci'])) echo $_GET['ci'];{/php}" class="form-control"/>
                        </div>

                        <div class="col-md-6">
                            <label>Nombres: </label>
                            <input type="text" name="name" placeholder="Nombre" value="{php}if(isset($_GET['name'])) echo $_GET['name'];{/php}" class="form-control"/>
                        </div>
                    </div>
                </div>

                <div class="col-md-12 registerData" style="margin-bottom: 20px;">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Apellidos: </label>
                            <input type="text" name="lastName" placeholder="Apellidos" value="{php}if(isset($_GET['lname1'])) echo $_GET['lname1'];{/php}" class="form-control"/>
                        </div>
                    </div>
                </div>


                <div>
                    <hr>
                </div>


                <div class="col-md-12 registerData">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Estado: </label><br>
                            <select class="form-control" id="cb_estadoPN" name="cb_estadoPN">
                                <option value="">Selecciona un estado</option>
                                {php}
                                    while($row = $query->fetch_assoc()){
                                {/php}
                                    <option value="{php}echo $row['cod_Lugar'];{/php}">{php}echo utf8_encode($row['nombre_Lugar']);{/php}</option>
                                {php}
                                    }
                                {/php}
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label>Municipio: </label><br>
                            <select class="form-control" id="cb_municipioPN" name="cb_municipioPN">
                                <option value="">Selecciona un municipio</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div class="col-md-12 registerData" style="margin-bottom: 20px;">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Parroquia: </label><br>
                            <select class="form-control" id="cb_parroquiaPN" name="cb_parroquiaPN">
                                <option value="0">Selecciona una parroquia</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div>
                    <hr>
                </div>

                <div class="col-md-12 registerData" style="margin-bottom: 20px;">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Tienda: </label><br>
                            <select class="form-control" id="tieda" name="tienda">
                                <option value="0">Selecciona una tienda</option>
                                {foreach from=$tiendas item=$tienda}
                                    <option value="{$tienda['cod_Tienda']}">{utf8_encode($tienda['nombre_Tienda'])}</option>
                                {/foreach}
                            </select>
                        </div>
                        <div class="col-md-6">
                            <label>Departamento: </label><br>
                            <select class="form-control" id="departamento" name="departamento">
                                <option value="0">Selecciona un departamento</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div class="col-md-12 registerData" style="margin-bottom: 20px;">
                    <div class="row">
                        <div class="col-md-12">
                            <label>Cargo: </label><br>
                            <select class="form-control" id="cargo" name="cargo">
                                <option value="0">Selecciona un cargo</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div>
                    <hr>
                </div>

                <div class="col-md-12 registerData">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Usuario: </label>
                            <input type="text" name="user" placeholder="Usuario" value="{php}if(isset($_GET['user'])) echo $_GET['user'];{/php}" class="form-control"/>
                        </div>
                    </div>
                </div>

                <div class="col-md-12 registerData">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Contraseña: </label>
                            <input type="password" name="pass" placeholder="Contraseña" class="form-control"/>
                        </div>
                        <div class="col-md-6">
                            <label>Confirmar Contraseña: </label>
                            <input type="password" name="conf_pass" placeholder="Contraseña" class="form-control"/>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4">
                        <a href="login.php" type="button" class="btn btn-block btn-danger">Cancelar</a>
                    </div>
                    <div class="col-md-6 col-md-push-5">
                        <input type="submit" class="btn btn-success" value="Registrarse"/>
                    </div>
                </div>
                {if isset($errorPersonal)}
                    <div class="alert alert-danger loginError" role="alert">{$errorPersonal}</div>
                {/if}
            </form>
        </div>

    </div>


<script src="assets/js/register.js"></script>
<script src="assets/js/selectLugar.js"></script>

{include file="../Overall/Footer.tpl"}
