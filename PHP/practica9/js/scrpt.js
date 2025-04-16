// Función para validar el formulario antes de enviarlo
function validarFormulario() {
    var producto = document.forms["formulario"]["producto"].value;
    var precio = document.forms["formulario"]["precio"].value;
    var cantidad = document.forms["formulario"]["cantidad"].value;

    if (producto == "" || precio == "" || cantidad == "" || precio <= 0 || cantidad <= 0) {
        alert("Todos los campos son obligatorios y deben ser valores positivos.");
        return false; // Previene el envío del formulario si algún campo está vacío
    }

    return true;
}

// Asignar evento de validación al botón de calcular
document.getElementById("boton").addEventListener("click", function(event) {
    if (!validarFormulario()) {
        event.preventDefault(); // Evitar que el formulario se envíe si no pasa la validación
    }
});
