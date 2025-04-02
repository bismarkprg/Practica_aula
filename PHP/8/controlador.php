<?php
    $paises = $_POST["paises"];
    $frutas = $_POST["frutas"];

    foreach($paises as $nombre){
        echo $nombre ."<br>";
    }
    foreach($frutas as $nomFrutas){
        echo $nomFrutas ."<br>";
    }
?>
