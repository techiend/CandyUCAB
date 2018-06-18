{include file="../Overall/Header.tpl"}

<body>
{php}

    $db = new Conexion();
    $query = $db->query("SELECT cod_Lugar, nombre_Lugar FROM lugar WHERE tipo_Lugar = 'Estado' ORDER BY nombre_Lugar ASC;");

    $queryPJ = $query;
    $queryPJP = $query;

    $queryTienda = $db->query("SELECT cod_Tienda, nombre_Tienda FROM tienda;");
{/php}


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
                            <label>Tienda:</label>
                            <select class="form-control" id="tiendaPN" name="tiendaPN">
                            <option value="">Selecciona una tienda</option>
                            {php}
                                while($row = $queryTienda->fetch_assoc()){
                            {/php}
                            <option value="{php}echo $row['cod_Tienda'];{/php}">{php}echo utf8_encode($row['nombre_Tienda']);{/php}</option>
                            {php}
                                }
                            {/php}
                            </select>
                        </div>
                    </div>
                </div>

                <div class="col-md-12 registerData">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Cédula: </label>
                            <input type="text" name="ci" placeholder="Cédula" value="{php}if(isset($_GET['ci'])) echo $_GET['ci'];{/php}" class="form-control"/>
                        </div>
                        <div class="col-md-6">
                            <label>RIF: </label>
                            <input type="text" name="rif" placeholder="RIF" value="{php}if(isset($_GET['rif'])) echo $_GET['rif'];{/php}"  class="form-control"/>
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
                        <ul class="registerData" id="contactosPN">
                            <li>
                                <div class="col-md-12 row">
                                    <div class="col-md-6">
                                        <select class="form-control" name="tipoContactoPN[]">
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
                                        <select class="form-control" name="tipoContactoPN[]">
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
                        <button onclick="remElementPN('contactosPN');" type="button" class="btn btn-danger" style="margin-top: 10px">-</button>
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
                        <label>Métodos de Pago:</label>
                    </div>
                </div>

                <div class="col-md-12 registerData" style="margin-bottom: 20px;: ">
                    <div class="row">
                        <div class="row">
                            <ul class="registerData" id="pagosPN">
                                <li id="metodoPagoPN1">
                                    <div class="col-md-12 row" >
                                        <div class="col-md-7">
                                            <select class="form-control" name="tipoPagoPN[]" id="tipoPago" onchange="showDataTipoPagoPN(this, 'metodoPagoPN1')">
                                                <option value="">Seleccione método de pago</option>
                                                <option value="tdc">Tarjeta de Crédito</option>
                                                <option value="tdd">Tarjeta de Débito</option>
                                                {*<option value="efe">Efectivo</option>*}
                                                {*<option value="che">Cheque</option>*}
                                            </select>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>

                        <div class="row col-md-1">
                            <button onclick="remMetodoPagoPN('pagosPN');" type="button" class="btn btn-danger" style="margin-top: 10px">-</button>
                        </div>
                        <div class="row col-md-1 col-md-push-11">
                            <button onclick="addMetodoPagoPN();" type="button" class="btn btn-primary" style="margin-top: 10px">+</button>
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
                        <a href="index.php" type="button" class="btn btn-block btn-danger">Cancelar</a>
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

                $queryTienda = $db->query("SELECT cod_Tienda, nombre_Tienda FROM tienda;");
            {/php}

            <form method="POST" name="fregisterPJ" id="fregisterPJ" action="register.php?modo=registerPJ">
                <input type="hidden" name="registerPJ" value="1"/>
                <div class="col-md-12 registerData">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Tienda:</label>
                            <select class="form-control" id="tiendaPJ" name="tiendaPJ">
                                <option value="">Selecciona una tienda</option>
                                {php}
                                    while($row = $queryTienda->fetch_assoc()){
                                {/php}
                                <option value="{php}echo $row['cod_Tienda'];{/php}">{php}echo utf8_encode($row['nombre_Tienda']);{/php}</option>
                                {php}
                                    }
                                {/php}
                            </select>
                        </div>
                    </div>
                </div>
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
                            <ul class="registerData" id="contactosPJ">
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
                            <button onclick="remElementPJ('contactosPJ');" type="button" class="btn btn-danger" style="margin-top: 10px">-</button>
                        </div>
                        <div class="row col-md-1 col-md-push-11">
                            <button onclick="addElementPJ();" type="button" class="btn btn-primary" style="margin-top: 10px">+</button>
                        </div>
                    </div>
                </div>

                <div>
                    <hr>
                </div>

                <div class="col-md-12 registerData">
                    <div class="row">
                        <label>Personas de Contacto:</label>
                    </div>
                </div>

                <div class="col-md-12 registerData" style="margin-bottom: 20px;: ">
                    <div class="row">
                        <div class="row">
                            <ul class="registerData" id="personasContactosPJ">
                                <li>
                                    <div class="col-md-12 row">
                                        <div class="col-md-4">
                                            <input type="text" name="personaContactoPJ[]" placeholder="Relación" class="form-control"/>
                                        </div>
                                        <div class="col-md-4">
                                            <input type="text" name="personaContactoPJ[]" placeholder="Nombre" class="form-control"/>
                                        </div>
                                        <div class="col-md-4">
                                            <input type="text" name="personaContactoPJ[]" placeholder="Apellido" class="form-control"/>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>

                        <div class="row col-md-1">
                            <button onclick="remPersonaContactoPJ('personasContactosPJ');" type="button" class="btn btn-danger" style="margin-top: 10px">-</button>
                        </div>
                        <div class="row col-md-1 col-md-push-11">
                            <button onclick="addPersonaContactoPJ();" type="button" class="btn btn-primary" style="margin-top: 10px">+</button>
                        </div>
                    </div>
                </div>

                <div>
                    <hr>
                </div>

                <div class="col-md-12 registerData">
                    <div class="row">
                        <label>Métodos de Pago:</label>
                    </div>
                </div>

                <div class="col-md-12 registerData" style="margin-bottom: 20px;: ">
                    <div class="row">
                        <div class="row">
                            <ul class="registerData" id="pagosPJ">
                                <li id="metodoPagoPJ1">
                                    <div class="col-md-12 row" >
                                        <div class="col-md-7">
                                            <select class="form-control" name="tipoPagoPJ[]" id="tipoPago" onchange="showDataTipoPagoPJ(this, 'metodoPagoPJ1')">
                                                <option value="">Seleccione método de pago</option>
                                                <option value="tdc">Tarjeta de Crédito</option>
                                                <option value="tdd">Tarjeta de Débito</option>
                                                <option value="efe">Efectivo</option>
                                                <option value="che">Cheque</option>
                                            </select>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>

                        <div class="row col-md-1">
                            <button onclick="remMetodoPagoPJ('pagosPJ');" type="button" class="btn btn-danger" style="margin-top: 10px">-</button>
                        </div>
                        <div class="row col-md-1 col-md-push-11">
                            <button onclick="addMetodoPagoPJ();" type="button" class="btn btn-primary" style="margin-top: 10px">+</button>
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
                        <a href="index.php" type="button" class="btn btn-block btn-danger">Cancelar</a>
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
<script src="assets/js/addHTMLElement.js"></script>


{include file="../Overall/Footer.tpl"}