{include file="../Overall/Header.tpl"}

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
            <form method="POST" name="fregisterPN" id="fregisterPN" action="login.php?modo=registerPN">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Nombre: </label>
                            <input type="text" name="name" placeholder="Nombre" class="form-control"/>
                        </div>
                        <div class="col-md-6">
                            <label>Apellido: </label>
                            <input type="text" name="lname" placeholder="Apellido" class="form-control"/>
                        </div>
                    </div>
                </div>

                <div class="col-md-12" style="margin-top: 10px">
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

                <hr>

                <div class="col-md-12" style="margin-top: 10px">
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

        <div id="registerPJ" style="display: none;" >
            <form method="POST" name="fregisterPJ" id="fregisterPJ" action="login.php?modo=registerPJ">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-6">
                            <label>Nombre: </label>
                            <input type="text" name="name" placeholder="Nombre" class="form-control"/>
                        </div>
                        <div class="col-md-6">
                            <label>Apellido: </label>
                            <input type="text" name="lname" placeholder="Apellido" class="form-control"/>
                        </div>
                    </div>
                </div>

                <div class="col-md-12" style="margin-top: 10px">
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

                <hr>    

                <div class="col-md-12" style="margin-top: 10px">
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
{include file="../Overall/Footer.tpl"}