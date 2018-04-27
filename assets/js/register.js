function mostrar(id) {
    if (id == "PersonaJuridica") {
        $("#registerPN").hide();
        $("#registerPJ").show();
    }

    if (id == "PersonaNatural") {
        $("#registerPN").show();
        $("#registerPJ").hide();
    }
}