<?php
$productos = [
    "A0001" => "MOUSE",
    "A0002" => "TECLADO",
    "A0003" => "MONITOR",
    "A0004" => "IMPRESORA",
];
echo "<ul>";
foreach ($productos as $codigo => $nombre) {
    echo "<li>$codigo - $nombre</li>";
}
echo "</ul>";
?>