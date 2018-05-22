{include file="../Overall/Header.tpl"}

<body>
{php}

    $db = new Conexion();
    $query = $db->query("SELECT cod_Lugar, nombre_Lugar FROM lugar WHERE tipo_Lugar = 'Estado' ORDER BY nombre_Lugar ASC;");

    $queryPJ = $query;
    $queryPJP = $query;

{/php}


<script src="assets/js/addHTMLElement.js"></script>

    <div class="jumbotron registerBox">

        <div class="form-group">
            <label>Tipo de Cuenta:</label>
            <label class="radio-inline">
                <input type="radio" name="optionsRadiosInline" id="PersonaNatural" {php}if(!isset($_GET['registerPJ'])) echo "checked";{/php} onclick="mostrar(this.id);">Persona Natural
            </label>
            <label class="radio-inline">
                <input type="radio" name="optionsRadiosInline" id="PersonaJuridica" {php}if(isset($_GET['registerPJ'])) echo "checked";{/php} onclick="mostrar(this.id);">Persona Juridica
            </label>
        </div>

        <div id="registerPN" value='registerPN'>
            <form method="POST" name="fregisterPN" id="fregisterPN" action="register.php?modo=registerPN">
                <input type="hidden" name="registerPN" value="1"/>
                <div class="col-md-12 registerData">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Cédula: </label>
                            <input type="text" name="ci" placeholder="Cédula" value="{php}if(isset($_GET['ci'])) echo $_GET['ci'];{/php}" class="form-control"/>
                        </div>
                    </div>
                </div>

                <div class="col-md-12 registerData">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Nombre: </label>
                            <input type="text" name="name" placeholder="Nombre" value="{php}if(isset($_GET['name'])) echo $_GET['name'];{/php}" class="form-control"/>
                        </div>
                    </div>
                </div>

                <div class="col-md-12 registerData" style="margin-bottom: 20px;">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Primer Apellido: </label>
                            <input type="text" name="lname1" placeholder="Primer Apellido" value="{php}if(isset($_GET['lname1'])) echo $_GET['lname1'];{/php}" class="form-control"/>
                        </div>
                        <div class="col-md-6">
                            <label>Segundo Apellido: </label>
                            <input type="text" name="lname2" placeholder="Segundo Apellido" value="{php}if(isset($_GET['lname2'])) echo $_GET['lname2'];{/php}" class="form-control"/>
                        </div>
                    </div>
                </div>


                <div>
                    <hr>
                </div>

                <div class="col-md-12 registerData">
                    <div class="row">
                        <label>Contactos:</label>
                    </div>
                </div>

                <div class="col-md-12 registerData" style="margin-bottom: 20px;: ">
                    <div class="row">
                        <ul class="registerData" id="personasContacto">
                            <li>
                                <div class="col-md-12 row">
                                    <div class="col-md-6">
                                        <select class="form-control" disabled name="tipoContactoPN[]">
                                            <option value="Teléfono">Teléfono</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <input type="text" name="contactoPN[]" value="{php}if(isset($_GET['celphone'])) echo $_GET['celphone'];{/php}" placeholder="Teléfono" class="form-control"/>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="col-md-12 row">
                                    <div class="col-md-6">
                                        <select class="form-control" disabled name="tipoContactoPN[]">
                                            <option value="Correo Electrónico">Correo Electrónico</option>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <input type="text" name="contactoPN[]" placeholder="Correo Electrónico" class="form-control"/>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="row col-md-1">
                        <button onclick="remElementPN('personasContacto');" type="button" class="btn btn-danger" style="margin-top: 10px">-</button>
                    </div>
                    <div class="row col-md-1 col-md-push-11">
                        <button onclick="addElementPN();" type="button" class="btn btn-primary" style="margin-top: 10px">+</button>
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
                {if isset($errorPN)}
                    <div class="alert alert-danger loginError" role="alert">{$errorPN}</div>
                {/if}
            </form>
        </div>

        <div id="registerPJ" style="display: none;" >

            {php}

                $db = new Conexion();
                $query = $db->query("SELECT cod_Lugar, nombre_Lugar FROM lugar WHERE tipo_Lugar = 'Estado' ORDER BY nombre_Lugar ASC;");

            {/php}

            <form method="POST" name="fregisterPJ" id="fregisterPJ" action="register.php?modo=registerPJ">
                <input type="hidden" name="registerPJ" value="1"/>
                <div class="col-md-12 registerData">
                    <div class="row">
                        <div class="col-md-6">
                            <label>RIF: </label>
                            <input type="text" name="rif" placeholder="RIF" class="form-control"/>
                        </div>
                    </div>
                </div>

                <div class="col-md-12 registerData">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Denominación Comercial: </label>
                            <input type="text" name="dComercial" placeholder="Denominación Comercial" class="form-control"/>
                        </div>
                        <div class="col-md-6">
                            <label>Razón Social: </label>
                            <input type="text" name="rSocial" placeholder="Razón Social" class="form-control"/>
                        </div>
                    </div>
                </div>

                <div class="col-md-12 registerData" style="margin-bottom: 20px;: ">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Capital Disponible: </label>
                            <input type="text" name="cDisponible" placeholder="Capital Disponible" class="form-control"/>
                        </div>
                    </div>
                </div>


                <div>
                    <hr>
                </div>

                <div class="col-md-12 registerData">
                    <div class="row">
                        <label>Contactos:</label>
                    </div>
                </div>

                <div class="col-md-12 registerData" style="margin-bottom: 20px;: ">
                    <div class="row">
                        <div class="row">
                            <ul class="registerData" id="personasContactoPJ">
                                <li>
                                    <div class="col-md-12 row">
                                        <div class="col-md-6">
                                            <select class="form-control" disabled name="tipoContactoPJ[]">
                                                <option value="Teléfono">Teléfono</option>
                                            </select>
                                        </div>
                                        <div class="col-md-6">
                                            <input type="text" name="contactoPJ[]" placeholder="Teléfono" class="form-control"/>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="col-md-12 row">
                                        <div class="col-md-6">
                                            <select class="form-control" disabled name="tipoContactoPJ[]">
                                                <option value="Correo Electrónico">Correo Electrónico</option>
                                            </select>
                                        </div>
                                        <div class="col-md-6">
                                            <input type="text" name="contactoPJ[]" placeholder="Correo Electrónico" class="form-control"/>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="col-md-12 row">
                                        <div class="col-md-6">
                                            <select class="form-control" disabled name="tipoContactoPJ[]">
                                                <option value="Página WEB">Página WEB</option>
                                            </select>
                                        </div>
                                        <div class="col-md-6">
                                            <input type="text" name="contactoPJ[]" placeholder="Página WEB" class="form-control"/>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>

                        <div class="row col-md-1">
                            <button onclick="remElementPJ('personasContactoPJ');" type="button" class="btn btn-danger" style="margin-top: 10px">-</button>
                        </div>
                        <div class="row col-md-1 col-md-push-11">
                            <button onclick="addElementPJ();" type="button" class="btn btn-primary" style="margin-top: 10px">+</button>
                        </div>
                    </div>
                </div>

                <div>
                    <hr>
                </div>

                <div class="col-md-12">
                    <div class="row">
                        <label>Dirección Fiscal:</label>
                    </div>
                </div>

                <div class="col-md-12 registerData">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Estado: </label><br>
                            <select class="form-control" id="cb_estadoPJ" name="cb_estadoPJ">
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
                            <select class="form-control" id="cb_municipioPJ" name="cb_municipioPJ">
                                <option value="">Selecciona un municipio</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div class="col-md-12 registerData" style="margin-bottom: 20px;">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Parroquia: </label><br>
                            <select class="form-control" id="cb_parroquiaPJ" name="cb_parroquiaPJ">
                                <option value="0">Selecciona una parroquia</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="row">
                        <label>Dirección Fiscal Principal:</label>
                    </div>
                </div>


                {php}

                    $db = new Conexion();
                    $query = $db->query("SELECT cod_Lugar, nombre_Lugar FROM lugar WHERE tipo_Lugar = 'Estado' ORDER BY nombre_Lugar ASC;");

                {/php}

                <div class="col-md-12 registerData">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Estado: </label><br>
                            <select class="form-control" id="cb_estadoPJP" name="cb_estadoPJP">
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
                            <select class="form-control" id="cb_municipioPJP" name="cb_municipioPJP">
                                <option value="">Selecciona un municipio</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div class="col-md-12 registerData" style="margin-bottom: 20px;">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Parroquia: </label><br>
                            <select class="form-control" id="cb_parroquiaPJP" name="cb_parroquiaPJP">
                                <option value="0">Selecciona una parroquia</option>
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
                {if isset($errorPJ)}
                    <div class="alert alert-danger loginError" role="alert">{$errorPJ}</div>
                {/if}
            </form>
        </div>
    </div>

{php}
    if (isset($_GET['registerPN'])){
{/php}
        <script>
            {literal}
            $("#registerPN").show();
            $("#registerPJ").hide();
            {/literal}
        </script>
{php}
    }
{/php}


{php}
    if (isset($_GET['registerPJ'])){
{/php}
        <script>
            {literal}
            $("#registerPJ").show();
            $("#registerPN").hide();
            {/literal}
        </script>
{php}
    }
{/php}

<script src="assets/js/register.js"></script>
<script src="assets/js/selectLugar.js"></script>

<script type="text/javascript" >
    var contactNumberPN = 2;
    var contactNumberPJ = 3;

    function addElementPN() {
        var itemName = 'itemPN'+(contactNumberPN+1);


        $("#personasContacto").append("" +
            "<li id=\""+itemName+"\">" +
            "<div class=\"col-md-12 row\"'>"+
            "<div class=\"col-md-6\">\n" +
            "<select class=\"form-control\" id=\"tipoContactoPN"+(contactNumberPN+1)+"\" name=\"tipoContactoPN[]\">\n" +
            "<option value=\"Correo Electrónico\">Correo Electrónico</option>\n" +
            "<option value=\"Teléfono\">Teléfono</option>\n" +
            "</select>\n" +
            "</div>\n" +
            "<div class=\"col-md-6\">\n" +
            "<input type=\"text\" name=\"contactoPN[]\" placeholder=\"\" class=\"form-control\"/>\n" +
            "</div>" +
            "</div>" +
            "</li>");
        contactNumberPN = contactNumberPN + 1;
    }

    function addElementPJ() {
        var itemName = 'itemPJ'+(contactNumberPJ+1);

        $("#personasContactoPJ").append("" +
            "<li id=\""+itemName+"\">" +
            "<div class=\"col-md-12 row\"'>"+
            "<div class=\"col-md-6\">\n" +
            "<select class=\"form-control\" id=\"tipoContactoPJ"+(contactNumberPJ+1)+"\" name=\"tipoContactoPJ[]\">\n" +
            "<option value=\"Correo Electrónico\">Correo Electrónico</option>\n" +
            "<option value=\"Teléfono\">Teléfono</option>\n" +
            "<option value=\"Página WEB\">Página WEB</option>\n" +
            "</select>\n" +
            "</div>\n" +
            "<div class=\"col-md-6\">\n" +
            "<input type=\"text\" name=\"contactoPJ[]\" placeholder=\"\" class=\"form-control\"/>\n" +
            "</div>" +
            "</div>" +
            "</li>");
        contactNumberPJ = contactNumberPJ + 1;

    }
    
    function remElementPN(id) {
        var list = document.getElementById(id);

        if (list.hasChildNodes() && list.childElementCount > 2) {
            list.removeChild(list.lastChild);
        }
        contactNumberPN = contactNumberPN - 1;
    }

    function remElementPJ(id) {
        var list = document.getElementById(id);

        if (list.hasChildNodes() && list.childElementCount > 3) {
            list.removeChild(list.lastChild);
        }
        contactNumberPJ = contactNumberPJ - 1;
    }
</script>

{include file="../Overall/Footer.tpl"}