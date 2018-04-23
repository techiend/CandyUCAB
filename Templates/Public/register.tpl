{include file="../Overall/Header.tpl"}

    <div class="jumbotron registerBox">
        <form method="POST" name="fregister" id="fregister" action="login.php?modo=register">
            <label>Nombre: </label>
            <input type="text" name="name" placeholder="Nombre" class="form-control"/>
            <label>Apellido: </label>
            <input type="text" name="lname" placeholder="Apellido" class="form-control"/>
            <label>Correo Electronico: </label>
            <input type="text" name="user" placeholder="Correo Electronico" class="form-control"/>
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