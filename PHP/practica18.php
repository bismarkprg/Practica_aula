<?php
$edad = 60; // Cambiar este valor para probar diferentes edades
$genero = "F"; // Cambiar este valor a "M" o "F" según el género

if ($genero == "M") {
    if ($edad >= 60) {
        echo "Usted puede jubilarse";
    } else {
        echo "Usted NO puede jubilarse";
    }
} elseif ($genero == "F") {
    if ($edad >= 54) {
        echo "Usted puede jubilarse";
    } else {
        echo "Usted NO puede jubilarse";
    }
} else {
    echo "Por favor, ingrese una opción válida";
}
?>