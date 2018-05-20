$('#cb_estadoPN').change(function () {
    var estado = $(this).val();


    $.post("funcion.getMunicipio.php",{id:estado},function (json) {
        console.log(json);
        if (json.ok === true){

            $('#cb_municipioPN').html(json.tpl);

        }else{
            document.getElementById("cb_municipioPN").length=0;
            document.getElementById("cb_parroquiaPN").length=0;
            $('#cb_municipioPN').html(json.tpl);
            $('#cb_parroquiaPN').html(json.tplP);
        }

    },'json');


});

$('#cb_estadoPJ').change(function () {
    var estado = $(this).val();


    $.post("funcion.getMunicipio.php",{id:estado},function (json) {
        console.log(json);
        if (json.ok === true){

            $('#cb_municipioPJ').html(json.tpl);

        }else{
            document.getElementById("cb_municipioPJ").length=0;
            document.getElementById("cb_parroquiaPJ").length=0;
            $('#cb_municipioPJ').html(json.tpl);
            $('#cb_parroquiaPJ').html(json.tplP);
        }

    },'json');


});

$('#cb_estadoPJP').change(function () {
    var estado = $(this).val();


    $.post("funcion.getMunicipio.php",{id:estado},function (json) {
        console.log(json);
        if (json.ok === true){

            $('#cb_municipioPJP').html(json.tpl);

        }else{
            document.getElementById("cb_municipioPJP").length=0;
            document.getElementById("cb_parroquiaPJP").length=0;
            $('#cb_municipioPJP').html(json.tpl);
            $('#cb_parroquiaPJP').html(json.tplP);
        }

    },'json');


});

$('#cb_municipioPN').change(function () {
    var municipio = $(this).val();


    $.post("funcion.getParroquia.php",{id:municipio},function (json) {
        console.log(json);
        if (json.ok === true){

            $('#cb_parroquiaPN').html(json.tpl);

        }else{
            document.getElementById("cb_parroquiaPN").length=0;
            $('#cb_parroquiaPN').html(json.tpl);
        }

    },'json');


});

$('#cb_municipioPJ').change(function () {
    var municipio = $(this).val();


    $.post("funcion.getParroquia.php",{id:municipio},function (json) {
        console.log(json);
        if (json.ok === true){

            $('#cb_parroquiaPJ').html(json.tpl);

        }else{
            document.getElementById("cb_parroquiaPJ").length=0;
            $('#cb_parroquiaPJ').html(json.tpl);
        }

    },'json');


});

$('#cb_municipioPJP').change(function () {
    var municipio = $(this).val();


    $.post("funcion.getParroquia.php",{id:municipio},function (json) {
        console.log(json);
        if (json.ok === true){

            $('#cb_parroquiaPJP').html(json.tpl);

        }else{
            document.getElementById("cb_parroquiaPJP").length=0;
            $('#cb_parroquiaPJP').html(json.tpl);
        }

    },'json');


});