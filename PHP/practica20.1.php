<?php

function suma($x, $y) {
    return $x + $y;
}

function saludo($nombre) {
    return "Hola como estas $nombre <br>";
}

$a = 1;
$b = 2;

echo suma($a, $b);
echo "<br>";
echo "otra forma de declarar<br>";
echo "La suma de $a + $b es " . suma($a, $b);
echo "<br><br>";

echo saludo("Maria");
echo saludo("Jose");
?>