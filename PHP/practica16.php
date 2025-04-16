<?php
// Lista de componentes del PC
$pc = ["SO", "SSD", "GPU", "RAM", "CPU"];
foreach ($pc as $componente) {
    // Saltar la iteración si el componente es "RAM"
    if ($componente == "RAM") {
        continue;
    }
    echo $componente . "<br>"; // Asegurarse de que esta línea esté correctamente escrita
}
?>

<?php
// Ciclo for para imprimir números del 1 al 10, excepto el 5
for ($i = 1; $i <= 10; $i++) {
    // Saltar la iteración si el número es 5
    if ($i == 5) {
        continue;
    }
    echo $i . "<br>"; // Asegurarse de que esta línea también esté correctamente escrita
}
?>