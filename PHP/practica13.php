<?php

// Array de tipo escalar
$estudiantes = array("Carlos", "Jose", "Vanesa", "Katy");
echo count($estudiantes);
echo "<br>";

// Array de tipo asociativo
$tutor = [
    "nombre" => "Carlos",
    "apellido" => "Saavedra",
    "edad" => "37"
];
echo count($tutor);
echo "<br>";

// Array de múltiples dimensiones
$tutor_2 = [
    "nombre" => "Carlos",
    "apellido" => "Saavedra",
    "cursos" => ["PHP", "Python", "CSS"],
    "edad" => "37"
];
echo count($tutor_2);

?>