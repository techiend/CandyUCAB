{include file="../Overall/Header.tpl"}

    <div class="jumbotron registerBox">
        <form method="POST" name="fregister" id="fregister" action="login.php?modo=register&tipo=">
            <div class="form-group">
                <label>Tipo de Cuenta:</label>
                <label class="radio-inline">
                    <input type="radio" name="optionsRadiosInline" id="optionsRadiosInline1" value="option1" checked>Persona Natural
                </label>
                <label class="radio-inline">
                    <input type="radio" name="optionsRadiosInline" id="optionsRadiosInline2" value="option2">Persona Juridica
                </label>
            </div>
        </form>
        <form method="POST" name="fregister" id="fregister" action="login.php?modo=register">
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

            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-6">
                        <label>Correo Electronico: </label>
                        <input type="text" name="user" placeholder="Correo Electronico" class="form-control"/>
                    </div>
                    <div class="col-md-6">
                        <label>Confirmar Correo: </label>
                        <input type="text" name="user" placeholder="Correo Electronico" class="form-control"/>
                    </div>
                </div>
            </div>
            <label>Contraseña: </label>
            <input type="password" name="pass" placeholder="Contraseña" class="form-control"/>
            {if isset($error)}
            <div class="alert alert-danger loginError" role="alert">{$error}</div>
            {/if}
            <input type="hidden" name="login" value="1"/>
            <input type="submit" class="btn btn-success" value="Registrarse"/>
        </form>
    </div>

{include file="../Overall/Footer.tpl"}