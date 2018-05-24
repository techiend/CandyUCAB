var contactNumberPN = 2;
var contactNumberPJ = 3;

function addElementPN() {
    var itemName = 'itemPN'+(contactNumberPN+1);


    $("#personasContacto").append("" +
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

    $("#personasContactoPJ").append("" +
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
    }
    contactNumberPN = contactNumberPN - 1;
}

function remElementPJ(id) {
    var list = document.getElementById(id);

    if (list.hasChildNodes() && list.childElementCount > 3) {
        list.removeChild(list.lastChild);
    }
    contactNumberPJ = contactNumberPJ - 1;
}