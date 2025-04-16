<?php
    // Recuperar datos del formulario
    $producto = isset($_POST['producto']) ? htmlspecialchars($_POST['producto']) : '';
    $precio = isset($_POST['precio']) && is_numeric($_POST['precio']) ? floatval($_POST['precio']) : 0;
    $cantidad = isset($_POST['cantidad']) && is_numeric($_POST['cantidad']) ? intval($_POST['cantidad']) : 0;
    $pago = isset($_POST['pago']) ? htmlspecialchars($_POST['pago']) : '';

    // Calcular el total
    $total = $precio * $cantidad;
    $descuento = 0;

    // Aplicar descuento si el pago es al contado
    if (strtolower($pago) === 'contado') {
        $descuento = $total * 0.05; // 5% de descuento
        $totalConDescuento = $total - $descuento;
    } else {
        $totalConDescuento = $total; // Sin descuento si es a crédito
    }
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
    <!-- Ruta del video corregida -->
    <video src="videos/video1.mp4" autoplay loop muted></video>
    
    <header>
        <div class="container">
            <h2 class="title text-center text-success">TOTAL A PAGAR</h2>
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <p>Producto: <?php echo $producto; ?></p>
                    <p>Precio: $<?php echo number_format($precio, 2); ?></p>
                    <p>Cantidad: <?php echo $cantidad; ?></p>
                    <p>Total sin descuento: $<?php echo number_format($total, 2); ?></p>
                    <?php if ($descuento > 0): ?>
                        <p>Descuento (5%): $<?php echo number_format($descuento, 2); ?></p>
                    <?php endif; ?>
                    <p>Total a Pagar: $<?php echo number_format($totalConDescuento, 2); ?></p>
                    <p>Forma de Pago: <?php echo ucfirst($pago); ?></p>
                    <a href="index.html" class="btn btn-outline-success btn-block">Volver</a>
                </div>
            </div>
        </div>
    </header>
</body>
</html>