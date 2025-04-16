<?php
    // Capturar los números ingresados por el usuario
    $num1 = isset($_POST['num1']) ? $_POST['num1'] : '';
    $num2 = isset($_POST['num2']) ? $_POST['num2'] : '';
    $mayor = '';
    $menor = '';

    // Determinar el mayor y el menor solo si se han ingresado valores
    if (is_numeric($num1) && is_numeric($num2)) {
        if ($num1 > $num2) {
            $mayor = $num1;
            $menor = $num2;
        } else {
            $mayor = $num2;
            $menor = $num1;
        }
    }
?><!DOCTYPE html><html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Número Mayor y Menor</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
            padding: 50px;
        }
        .container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            display: inline-block;
        }
        h1 {
            color: #333;
        }
        p {
            font-size: 20px;
        }
        .highlight {
            color: #e74c3c;
            font-weight: bold;
        }
        input, button {
            padding: 10px;
            margin: 5px;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Comparación de Números</h1>
        <form method="POST">
            <input type="number" name="num1" placeholder="Ingrese el primer número" required>
            <input type="number" name="num2" placeholder="Ingrese el segundo número" required>
            <br>
            <button type="submit">Comparar</button>
        </form>
        <?php if ($mayor !== '' && $menor !== ''): ?>
            <p>El número mayor es: <span class="highlight"><?php echo $mayor; ?></span></p>
            <p>El número menor es: <span class="highlight"><?php echo $menor; ?></span></p>
        <?php endif; ?>
    </div>
</body>
</html>