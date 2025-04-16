<?php
function saludo($nombre){
    echo "Hola, ¿cómo estás $nombre?<br>";
}

saludo("Juan");
echo "<br>";
?>

<?php
function saludo2($nombre){
    echo "Hola, ¿cómo estás $nombre?<br>";
}

saludo2("Juan");
saludo2("Pedro");
echo "<br>";
?>

<?php
function saludo3($nombre){
    return "Hola, ¿cómo estás $nombre?<br>";
}

echo saludo3("Juan");
echo saludo3("Pedro");
?>