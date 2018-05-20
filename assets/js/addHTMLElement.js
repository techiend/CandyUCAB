$(document).ready(function(){
    $("#addContact").click(function(){
        $("#personasContacto").append("<li>" +
            "<div class=\"col-md-6\">\n" +
            "<select class=\"form-control\" id=\"\" name=\"\">\n" +
            "<option value=\"\">Correo Electrónico</option>\n" +
            "<option value=\"\">Teléfono</option>\n" +
            "</select>\n" +
            "</div>\n" +
            "<div class=\"col-md-6\">\n" +
            "<input type=\"text\" name=\"\" placeholder=\"\" class=\"form-control\"/>\n" +
            "</div></li>");
    });
});

$(document).ready(function(){
    $("#addContactPJ").click(function(){
        $("#personasContactoPJ").append("<li>" +
            "<div class=\"col-md-6\">\n" +
            "<select class=\"form-control\" id=\"\" name=\"\">\n" +
            "<option value=\"\">Correo Electrónico</option>\n" +
            "<option value=\"\">Teléfono</option>\n" +
            "<option value=\"\">Página WEB</option>\n" +
            "</select>\n" +
            "</div>\n" +
            "<div class=\"col-md-6\">\n" +
            "<input type=\"text\" name=\"\" placeholder=\"\" class=\"form-control\"/>\n" +
            "</div></li>");
    });
});