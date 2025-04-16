<?php
    // Recuperar datos del formulario
    $numero = isset($_POST['numero']) ? intval($_POST['numero']) : 0;
    $maximo = isset($_POST['maximo']) ? intval($_POST['maximo']) : 0;
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Tabla de Multiplicar</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/estilo1.css" rel="stylesheet">
</head>

<body>
    <!-- Inicio video -->
    <video src="videos/video11.mp4" autoplay loop muted></video>
    <!-- Fin video -->

    <header>
        <div class="container">
            <h1 class="titulo text-success">TABLA DEL <?php echo $numero; ?></h1><br>
            <h2 class="tabla text-light">
                <?php
                    // Generar y mostrar la tabla de multiplicar
                    for ($multiplicador = 1; $multiplicador <= $maximo; $multiplicador++) {
                        echo "$multiplicador * $numero = " . ($multiplicador * $numero) . "<br>";
                    }
                ?>
            </h2>
        </div>
    </header>

    <!-- Archivos JavaScript -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>