{include file="../Overall/Header.tpl"}

<body>
    <div class="jumbotron loginBox">
        <form method="POST" name="flogin" id="flogin" action="index.php?modo=login">
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
        <label class="text-center">¿No tienes cuenta? <a href="register.php">Registrate</a></label>
        <label class="text-center"><a href="registerPersonal.php">Registrarse como personal</a></label>
    </div>
</body>

{include file="../Overall/Footer.tpl"}
