{include file="../Overall/Header.tpl"}

<link rel="stylesheet" href="assets/css/clientes.css?v={0|rand:100}" media="screen">

<body>

    <div id="wrapper">
        {include file='../Overall/Navbar_admin.tpl'}
        <div id="page-wrapper">
            <div class="col-md-12 contenedorPrincipal">
                <div class="col-md-12 columna">

                    <div class="row">
                        <div class="col-md-6">
                            <select class="form-control">
                                <option value="-1">Buscar por puntos</option>
                               <!--- {php}
                                    while($row = $query->fetch_assoc()){
                                {/php}
                                <option value="{php}echo $row['cod_Caramelo'];{/php}">{php}echo utf8_encode($row['nombre_Caramelo']);{/php}</option>
                                {php}
                                    }
                                {/php} --->
                            </select>
                        </div>
                    </div>
                    <div class="row contedorPrincipal">
                        <div class="col-md-3">
                            <label>Caramelo:</label>
                        </div>
                    </div>
                </div>


                </div>
            </div>
        </div>
    </div>

</body>

{include file="../Overall/Footer.tpl"}