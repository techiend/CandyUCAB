$(document).ready(function(){
    $("#addContact").click(function(){
        $("#personasContacto").append("<li>" +
            "<div class=\"col-md-6\">\n" +
            "<select class=\"form-control\" disabled id=\"\" name=\"\">\n" +
            "<option value=\"\">Teléfono</option>\n" +
            "</select>\n" +
            "</div>\n" +
            "<div class=\"col-md-6\">\n" +
            "<input type=\"text\" name=\"celphone\" placeholder=\"Teléfono\" class=\"form-control\"/>\n" +
            "</div></li>");
    });
});