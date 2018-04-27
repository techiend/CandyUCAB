{include file="../Overall/Header.tpl"}

    <div class="jumbotron loginBox">
        <form method="POST" name="flogin" id="flogin" action="login.php?modo=login">
            <label>Correo Electronico: </label>
            <input type="text" name="user" placeholder="Correo Electronico" class="form-control"/>
            <label>Contraseña: </label>
            <input type="password" name="pass" placeholder="Contraseña" class="form-control"/>

            {if isset($error)}
            <div class="alert alert-danger loginError" role="alert">{$error}</div>
            {/if}
            
            <input type="hidden" name="login" value="1"/>
            <input type="submit" class="btn btn-success" value="Iniciar Sesion"/>
        </form>
        <label class="text-center">¿No tienes cuenta? <a href="login.php?modo=register">Registrate</a></label>
    </div>

{include file="../Overall/Footer.tpl"}