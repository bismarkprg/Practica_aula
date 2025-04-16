<?php
$producto = $_POST['producto'];
$precio = $_POST['precio'];
$cantidad = $_POST['cantidad'];

$total = $precio * $cantidad;
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Detalle de la Compra</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/estilo1.css" rel="stylesheet">
    <style>
        
    </style>
</head>

<body>
    <video src="Videos/video.mp4" autoplay loop muted></video>
    <header>
        <div class="container">
            <h2 class="titulo text-center text-success">TOTAL A PAGAR</h2>
            <hr>
            <div class="row">
                <div class="columna col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
                    <p>Producto: <?php echo $producto; ?></p>
                    <p>Precio: <?php echo $precio; ?></p>
                    <p>Cantidad: <?php echo $cantidad; ?></p>
                    <p>Total a pagar Bs.: <?php echo $total; ?></p>
                    <a href="index.html" class="btn-volver">Volver</a>
                </div>
            </div>
        </div>
    </header>

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>