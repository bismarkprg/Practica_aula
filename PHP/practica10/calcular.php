<?php
    // Recuperar datos del formulario
    $producto = isset($_POST['producto']) ? htmlspecialchars($_POST['producto']) : '';
    $precio = isset($_POST['precio']) ? floatval($_POST['precio']) : 0;
    $cantidad = isset($_POST['cantidad']) ? intval($_POST['cantidad']) : 0;

    // Calcular el total
    $total = $precio * $cantidad;
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Datos del Pedido</title>
    <link href="css/estilo1.css" rel="stylesheet"> <!-- Solo tu CSS -->
</head>

<body>
    <!-- Inicio video -->
    <video src="videos/video10.mp4" autoplay loop muted></video>
    <!-- Fin video -->
    <header>
        <div class="container">
            <form action="multiplicar.php" method="post">
                <h2 class="titulo text-center text-success">Tabla de Multiplicar</h2>
                <hr>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <label for="">Número a Multiplicar: </label>
                        <input type="text" name="numero" placeholder="Ingrese el número a multiplicar" required><br><br>
                        
                        <label for="">Número Máximo a Multiplicar: </label>
                        <input type="text" name="maximo" placeholder="Ingrese el número máximo de la tabla" required>
                        <br><br><br>
                        
                        <input type="submit" value="EJECUTAR" id="boton">
                    </div>
                </div>
            </form>
        </div>
    </header>
</body>
    
    

    <!-- Archivos JavaScript -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/script.js"></script>
</body>
</html>