<?php
    // Recuperar datos del formulario
    $numero = isset($_POST['numero']) && is_numeric($_POST['numero']) ? intval($_POST['numero']) : 0;
    $maximo = isset($_POST['maximo']) && is_numeric($_POST['maximo']) ? intval($_POST['maximo']) : 0;
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Resultado de la Multiplicación</title>
    <link href="css/estilo1.css" rel="stylesheet">
</head>

<body>
    <!-- Ruta del video corregida -->
    <video src="videos/video10.mp4" autoplay loop muted></video>
    
    <header>
        <div class="container">
            <h2 class="title text-center text-success">Resultado de la Tabla de Multiplicar</h2>
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <?php
                    // Verificar que ambos números sean válidos
                    if ($numero > 0 && $maximo > 0) {
                        echo "<h3>Tabla de Multiplicar del $numero hasta $maximo</h3>";
                        echo "<ul>";
                        // Generar la tabla de multiplicar
                        for ($i = 1; $i <= $maximo; $i++) {
                            $resultado = $numero * $i;
                            echo "<li>$numero x $i = $resultado</li>";
                        }
                        echo "</ul>";
                    } else {
                        echo "<p>Por favor, ingrese números válidos para la tabla de multiplicar.</p>";
                    }
                    ?>
                    <a href="index.html" class="btn btn-outline-success btn-block">Volver</a>
                </div>
            </div>
        </div>
    </header>
</body>
</html>