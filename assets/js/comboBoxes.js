var codMunicipios = new Array();
var idEstados = new Array();
var municipios = new Array();

function limpiarMunicipios() {
    var reference = document.getElementById("cb_municipio");
    var largo = reference.options.length;
    for (j = 0; j < 8;j++) {
        for (i = 0; i < largo; i++) {
            document.getElementById("cb_municipio").remove();
        }
    }
}

function cargarMunicipios(valor) {
    var longitud = idEstados.length;
    var reference = document.getElementById("cb_municipio");

    var i = 0;
    var j = 0;

    limpiarMunicipios();

    for (i=0;i<longitud;i++){
        if (idEstados[i] == valor){
            var newOption = new Option(municipios[i],codMunicipios[i]);
            reference.options[j] = newOption;
            j++;
        }
    }

}