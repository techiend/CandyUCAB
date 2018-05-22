{include file="../Overall/Header.tpl"}

<link rel="stylesheet" href="assets/css/novedades.css?v={0|rand:100}" media="screen">

<body>

{php}

    $db = new Conexion();
    $query = $db->query("SELECT cod_Caramelo, nombre_Caramelo FROM caramelo");


{/php}


<div id="wrapper">
    {include file='../Overall/Navbar_admin.tpl'}
    <div id="page-wrapper">
        <div class="col-md-12 contenedorPrincipal">
            <div class="col-md-12 columna">
                <div class="row">
                    <div class="col-md-4">
                        <label>Seleccione un Caramelo:</label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <select class="form-control">
                            <option value="-1">Seleccione un caramelo</option>
                            {php}
                                while($row = $query->fetch_assoc()){
                            {/php}
                            <option value="{php}echo $row['cod_Caramelo'];{/php}">{php}echo utf8_encode($row['nombre_Caramelo']);{/php}</option>
                            {php}
                                }
                            {/php}
                        </select>
                    </div>
                </div>
            </div>

            <div class="col-md-12 columna">
                <div class="row">
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="row">
                                <label>Selecciona su tipo:</label>
                            </div>
                            <div class="row">
                                <select class="form-control">
                                    <option value="-1">Selecciona su tipo</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Agrega un %:</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <input type="number" class="form-control" placeholder="%">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /#page-wrapper -->
</div>

</body>

{include file="../Overall/Footer.tpl"}