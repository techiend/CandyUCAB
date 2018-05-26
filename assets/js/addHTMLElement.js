var contactNumberPN = 2;
var contactNumberPJ = 3;

function addElementPN() {
    var itemName = 'itemPN'+(contactNumberPN+1);


    $("#contactosPN").append("" +
        "<li id=\""+itemName+"\">" +
        "<div class=\"col-md-12 row\"'>"+
        "<div class=\"col-md-6\">\n" +
        "<select class=\"form-control\" id=\"tipoContactoPN"+(contactNumberPN+1)+"\" name=\"tipoContactoPN[]\">\n" +
        "<option value=\"Correo Electrónico\">Correo Electrónico</option>\n" +
        "<option value=\"Teléfono\">Teléfono</option>\n" +
        "</select>\n" +
        "</div>\n" +
        "<div class=\"col-md-6\">\n" +
        "<input type=\"text\" name=\"contactoPN[]\" placeholder=\"\" class=\"form-control\"/>\n" +
        "</div>" +
        "</div>" +
        "</li>");
    contactNumberPN = contactNumberPN + 1;
}

function addElementPJ() {
    var itemName = 'itemPJ'+(contactNumberPJ+1);

    $("#contactosPJ").append("" +
        "<li id=\""+itemName+"\">" +
        "<div class=\"col-md-12 row\"'>"+
        "<div class=\"col-md-6\">\n" +
        "<select class=\"form-control\" id=\"tipoContactoPJ"+(contactNumberPJ+1)+"\" name=\"tipoContactoPJ[]\">\n" +
        "<option value=\"Correo Electrónico\">Correo Electrónico</option>\n" +
        "<option value=\"Teléfono\">Teléfono</option>\n" +
        "<option value=\"Página WEB\">Página WEB</option>\n" +
        "</select>\n" +
        "</div>\n" +
        "<div class=\"col-md-6\">\n" +
        "<input type=\"text\" name=\"contactoPJ[]\" placeholder=\"\" class=\"form-control\"/>\n" +
        "</div>" +
        "</div>" +
        "</li>");
    contactNumberPJ = contactNumberPJ + 1;

}

function remElementPN(id) {
    var list = document.getElementById(id);

    if (list.hasChildNodes() && list.childElementCount > 2) {
        list.removeChild(list.lastChild);
        contactNumberPN = contactNumberPN - 1;
    }
}

function remElementPJ(id) {
    var list = document.getElementById(id);

    if (list.hasChildNodes() && list.childElementCount > 3) {
        list.removeChild(list.lastChild);
        contactNumberPJ = contactNumberPJ - 1;
    }
}

var personasContacto = 1;
function addPersonaContactoPJ() {
    var itemName = 'personaContactoPJ'+(contactNumberPJ+1);

    $("#personasContactosPJ").append("" +
        "<li>\n" +
        "<div class=\"col-md-12 row\">\n" +
        "<div class=\"col-md-4\">\n" +
        "<input type=\"text\" name=\"personaContactoPJ[]\" placeholder=\"Relación\" class=\"form-control\"/>\n" +
        "</div>\n" +
        "<div class=\"col-md-4\">\n" +
        "<input type=\"text\" name=\"personaContactoPJ[]\" placeholder=\"Nombre\" class=\"form-control\"/>\n" +
        "</div>\n" +
        "<div class=\"col-md-4\">\n" +
        "<input type=\"text\" name=\"personaContactoPJ[]\" placeholder=\"Apellido\" class=\"form-control\"/>\n" +
        "</div>\n" +
        "</div>\n" +
        "</li>");
    personasContacto = personasContacto + 1;

}

function remPersonaContactoPJ(id) {
    var list = document.getElementById(id);

    if (list.hasChildNodes() && list.childElementCount > 1) {
        list.removeChild(list.lastChild);
        personasContacto = personasContacto - 1;
    }
}

var metodosPagoPJ = 1;
var hasPagosPJ = 0;
function showDataTipoPagoPJ(selectObject, id) {
    switch (selectObject.value){
        case 'tdc':
            if(hasPagosPJ == metodosPagoPJ){
                document.getElementById("dataMPPJ"+metodosPagoPJ).remove();
                console.log("hasPagosPJ: "+hasPagosPJ);
                console.log("metodosPagoPJ: "+metodosPagoPJ);
            }else {
                hasPagosPJ = hasPagosPJ + 1;
            }

            var newDiv = document.createElement("div");
            newDiv.id = "dataMPPJ"+metodosPagoPJ;
            var liFather = document.getElementById(id);
            liFather.appendChild(newDiv);
            document.getElementById("dataMPPJ"+metodosPagoPJ).innerHTML = "" +
                "<div class=\"col-md-12 row\">\n" +
                "<div class=\"col-md-5\">\n" +
                "<input type=\"text\" name=\"TDCPJ[]\" placeholder=\"Número Tarjeta\" class=\"form-control\"/>\n" +
                "</div>\n" +
                "<div class=\"col-md-3\">\n" +
                "<input type=\"text\" name=\"TDCPJ[]\" placeholder=\"Vencimiento\" class=\"form-control\"/>\n" +
                "</div>\n" +
                "<div class=\"col-md-2\">\n" +
                "<input type=\"text\" name=\"TDCPJ[]\" placeholder=\"CVV\" class=\"form-control\"/>\n" +
                "</div>\n" +
                "</div>";

            console.log("hasPagosPJ: "+hasPagosPJ);
            console.log("metodosPagoPJ: "+metodosPagoPJ);
            break;
        case 'tdd':
            if(hasPagosPJ == metodosPagoPJ){
                document.getElementById("dataMPPJ"+metodosPagoPJ).remove();
                console.log("hasPagosPJ: "+hasPagosPJ);
                console.log("metodosPagoPJ: "+metodosPagoPJ);
            }else {
                hasPagosPJ = hasPagosPJ + 1;
            }

            var newDiv = document.createElement("div");
            newDiv.id = "dataMPPJ"+metodosPagoPJ;
            var liFather = document.getElementById(id);
            liFather.appendChild(newDiv);
            document.getElementById("dataMPPJ"+metodosPagoPJ).innerHTML = "" +
                "<div class=\"col-md-12 row\">\n" +
                "<div class=\"col-md-5\">\n" +
                "<input type=\"text\" name=\"TDDPJ[]\" placeholder=\"Número Tarjeta\" class=\"form-control\"/>\n" +
                "</div>\n" +
                "</div>";

            console.log("hasPagosPJ: "+hasPagosPJ);
            console.log("metodosPagoPJ: "+metodosPagoPJ);
            break;
        case 'efe':
            if(hasPagosPJ == metodosPagoPJ){
                document.getElementById("dataMPPJ"+metodosPagoPJ).remove();
                console.log("hasPagosPJ: "+hasPagosPJ);
                console.log("metodosPagoPJ: "+metodosPagoPJ);
            }else {
                hasPagosPJ = hasPagosPJ + 1;
            }

            var newDiv = document.createElement("div");
            newDiv.id = "dataMPPJ"+metodosPagoPJ;
            var liFather = document.getElementById(id);
            liFather.appendChild(newDiv);
            document.getElementById("dataMPPJ"+metodosPagoPJ).innerHTML = "" +
                "<div class=\"col-md-12 row\">\n" +
                "<div class=\"col-md-5\">\n" +
                "<input type=\"text\" name=\"EFEPJ[]\" placeholder=\"Descripcción\" class=\"form-control\"/>\n" +
                "</div>\n" +
                "</div>";

            console.log("hasPagosPJ: "+hasPagosPJ);
            console.log("metodosPagoPJ: "+metodosPagoPJ);
            break;
        case 'che':
            if(hasPagosPJ == metodosPagoPJ){
                document.getElementById("dataMPPJ"+metodosPagoPJ).remove();
                console.log("hasPagosPJ: "+hasPagosPJ);
                console.log("metodosPagoPJ: "+metodosPagoPJ);
            } else {
                hasPagosPJ = hasPagosPJ + 1;
            }

            var newDiv = document.createElement("div");
            newDiv.id = "dataMPPJ"+metodosPagoPJ;
            var liFather = document.getElementById(id);
            liFather.appendChild(newDiv);
            document.getElementById("dataMPPJ"+metodosPagoPJ).innerHTML = "" +
                "<div class=\"col-md-12 row\">\n" +
                "<div class=\"col-md-5\">\n" +
                "<input type=\"text\" name=\"CHEPJ[]\" placeholder=\"Número de cuenta\" class=\"form-control\"/>\n" +
                "</div>\n" +
                "</div>";

            console.log("hasPagosPJ: "+hasPagosPJ);
            console.log("metodosPagoPJ: "+metodosPagoPJ);
            break;
        default:
            if(hasPagosPJ == metodosPagoPJ){

                hasPagosPJ = hasPagosPJ - 1;
                document.getElementById("dataMPPJ"+metodosPagoPJ).remove();
                console.log("metodosPagoPJ: "+metodosPagoPJ);
            }
            console.log("hasPagosPJ: "+hasPagosPJ);
            console.log("metodosPagoPJ: "+metodosPagoPJ);
            break;
    }
}

function addMetodoPagoPJ() {
    var nameMetodoPagoPJ = 'metodoPagoPJ'+(metodosPagoPJ+1);

    $("#pagosPJ").append("" +
        "<li id=\""+nameMetodoPagoPJ+"\">\n" +
        "<div class=\"col-md-12 row\" >\n" +
        "<div class=\"col-md-7\">\n" +
        "<select class=\"form-control\" name=\"tipoPagoPJ[]\" id=\"tipoPago\" onchange=\"showDataTipoPagoPJ(this, '"+nameMetodoPagoPJ+"')\">\n" +
        "<option value=\"\">Seleccione método de pago</option>\n" +
        "<option value=\"tdc\">Tarjeta de Crédito</option>\n" +
        "<option value=\"tdd\">Tarjeta de Débito</option>\n" +
        "<option value=\"efe\">Efectivo</option>\n" +
        "<option value=\"che\">Cheque</option>\n" +
        "</select>\n" +
        "</div>\n" +
        "</div>\n" +
        "</li>");

    metodosPagoPJ = metodosPagoPJ + 1;
    console.log("hasPagosPJ: "+hasPagosPJ);
}

function remMetodoPagoPJ(id) {
    var list = document.getElementById(id);

    if (list.hasChildNodes() && list.childElementCount > 1) {
        list.removeChild(list.lastChild);
        metodosPagoPJ = metodosPagoPJ - 1;
        hasPagosPJ = hasPagosPJ - 1;

        console.log("hasPagosPJ : "+hasPagosPJ);
        console.log("metodosPagoPJ: "+metodosPagoPJ);
    }
}



var metodosPagoPN = 1;
var hasPagosPN = 0;
function showDataTipoPagoPN(selectObject, id) {
    switch (selectObject.value){
        case 'tdc':
            if(hasPagosPN == metodosPagoPN){
                document.getElementById("dataMPPN"+metodosPagoPN).remove();
                console.log("hasPagosPN: "+hasPagosPN);
                console.log("metodosPagoPN: "+metodosPagoPN);
            }else {
                hasPagosPN = hasPagosPN + 1;
            }

            var newDiv = document.createElement("div");
            newDiv.id = "dataMPPN"+metodosPagoPN;
            var liFather = document.getElementById(id);
            liFather.appendChild(newDiv);
            document.getElementById("dataMPPN"+metodosPagoPN).innerHTML = "" +
                "<div class=\"col-md-12 row\">\n" +
                "<div class=\"col-md-5\">\n" +
                "<input type=\"text\" name=\"TDCPN[]\" placeholder=\"Número Tarjeta\" class=\"form-control\"/>\n" +
                "</div>\n" +
                "<div class=\"col-md-3\">\n" +
                "<input type=\"text\" name=\"TDCPN[]\" placeholder=\"Vencimiento\" class=\"form-control\"/>\n" +
                "</div>\n" +
                "<div class=\"col-md-2\">\n" +
                "<input type=\"text\" name=\"TDCPN[]\" placeholder=\"CVV\" class=\"form-control\"/>\n" +
                "</div>\n" +
                "</div>";

            console.log("hasPagosPN: "+hasPagosPN);
            console.log("metodosPagoPN: "+metodosPagoPN);
            break;
        case 'tdd':
            if(hasPagosPN == metodosPagoPN){
                document.getElementById("dataMPPN"+metodosPagoPN).remove();
                console.log("hasPagosPN: "+hasPagosPN);
                console.log("metodosPagoPN: "+metodosPagoPN);
            }else {
                hasPagosPN = hasPagosPN + 1;
            }

            var newDiv = document.createElement("div");
            newDiv.id = "dataMPPN"+metodosPagoPN;
            var liFather = document.getElementById(id);
            liFather.appendChild(newDiv);
            document.getElementById("dataMPPN"+metodosPagoPN).innerHTML = "" +
                "<div class=\"col-md-12 row\">\n" +
                "<div class=\"col-md-5\">\n" +
                "<input type=\"text\" name=\"TDDPN[]\" placeholder=\"Número Tarjeta\" class=\"form-control\"/>\n" +
                "</div>\n" +
                "</div>";

            console.log("hasPagosPN: "+hasPagosPN);
            console.log("metodosPagoPN: "+metodosPagoPN);
            break;
        case 'efe':
            if(hasPagosPN == metodosPagoPN){
                document.getElementById("dataMPPN"+metodosPagoPN).remove();
                console.log("hasPagosPN: "+hasPagosPN);
                console.log("metodosPagoPN: "+metodosPagoPN);
            }else {
                hasPagosPN = hasPagosPN + 1;
            }

            var newDiv = document.createElement("div");
            newDiv.id = "dataMPPN"+metodosPagoPN;
            var liFather = document.getElementById(id);
            liFather.appendChild(newDiv);
            document.getElementById("dataMPPN"+metodosPagoPN).innerHTML = "" +
                "<div class=\"col-md-12 row\">\n" +
                "<div class=\"col-md-5\">\n" +
                "<input type=\"text\" name=\"EFEPN[]\" placeholder=\"Descripcción\" class=\"form-control\"/>\n" +
                "</div>\n" +
                "</div>";

            console.log("hasPagosPN: "+hasPagosPN);
            console.log("metodosPagoPN: "+metodosPagoPN);
            break;
        case 'che':
            if(hasPagosPN == metodosPagoPN){
                document.getElementById("dataMPPN"+metodosPagoPN).remove();
                console.log("hasPagosPN: "+hasPagosPN);
                console.log("metodosPagoPN: "+metodosPagoPN);
            } else {
                hasPagosPN = hasPagosPN + 1;
            }

            var newDiv = document.createElement("div");
            newDiv.id = "dataMPPN"+metodosPagoPN;
            var liFather = document.getElementById(id);
            liFather.appendChild(newDiv);
            document.getElementById("dataMPPN"+metodosPagoPN).innerHTML = "" +
                "<div class=\"col-md-12 row\">\n" +
                "<div class=\"col-md-5\">\n" +
                "<input type=\"text\" name=\"CHEPN[]\" placeholder=\"Número de cuenta\" class=\"form-control\"/>\n" +
                "</div>\n" +
                "</div>";

            console.log("hasPagosPN: "+hasPagosPN);
            console.log("metodosPagoPN: "+metodosPagoPN);
            break;
        default:
            if(hasPagosPN == metodosPagoPN){

                hasPagosPN = hasPagosPN - 1;
                document.getElementById("dataMPPN"+metodosPagoPN).remove();
                console.log("metodosPagoPN: "+metodosPagoPN);
            }
            console.log("hasPagosPN: "+hasPagosPN);
            console.log("metodosPagoPN: "+metodosPagoPN);
            break;
    }
}

function addMetodoPagoPN() {
    var nameMetodoPagoPN = 'metodoPagoPN'+(metodosPagoPN+1);

    $("#pagosPN").append("" +
        "<li id=\""+nameMetodoPagoPN+"\">\n" +
        "<div class=\"col-md-12 row\" >\n" +
        "<div class=\"col-md-7\">\n" +
        "<select class=\"form-control\" name=\"tipoPagoPN[]\" id=\"tipoPago\" onchange=\"showDataTipoPagoPN(this, '"+nameMetodoPagoPN+"')\">\n" +
        "<option value=\"\">Seleccione método de pago</option>\n" +
        "<option value=\"tdc\">Tarjeta de Crédito</option>\n" +
        "<option value=\"tdd\">Tarjeta de Débito</option>\n" +
        "<option value=\"efe\">Efectivo</option>\n" +
        "<option value=\"che\">Cheque</option>\n" +
        "</select>\n" +
        "</div>\n" +
        "</div>\n" +
        "</li>");

    metodosPagoPN = metodosPagoPN + 1;
    console.log("hasPagosPN: "+hasPagosPN);
}

function remMetodoPagoPN(id) {
    var list = document.getElementById(id);

    if (list.hasChildNodes() && list.childElementCount > 1) {
        list.removeChild(list.lastChild);
        metodosPagoPN = metodosPagoPN - 1;
        hasPagosPN = hasPagosPN - 1;

        console.log("hasPagosPN : "+hasPagosPN);
        console.log("metodosPagoPN: "+metodosPagoPN);
    }
}