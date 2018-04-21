{include file="../Overall/Header.tpl"}

    <div class="jumbotron loginBox">
        <form method="POST" name="flogin" id="flogin" action="login.php?modo=login">
            <label>Usuario: </label>
            <input type="text" name="user" placeholder="Usuario" class="form-control"/>
            <label>Contraseña: </label>
            <input type="password" name="pass" placeholder="Contraseña" class="form-control"/>
            <input type="hidden" name="login" value="1"/>
            {if !empty($error)}
                <div class="alert alert-danger" role="alert">{$error}</div>
            {/if}
            <input type="submit" class="btn btn-success" value="Iniciar Sesion"/>
        </form>
    </div>


{include file="../Overall/Footer.tpl"}