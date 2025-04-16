<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formularios</title>
</head>
<body>
    <form action="controlador.php" method="POST">
        <!-- Selecciona varias opciones -->
        <label for="paises">Selecciona países:</label>
        <select name="paises[]" id="paises" multiple>
            <option value="peru">Perú</option>
            <option value="bolivia">Bolivia</option>
            <option value="argentina">Argentina</option>
        </select>
        <br><br>

        <!-- Selección de frutas -->
        <label>
            <input type="checkbox" value="manzana" name="frutas[]"> Manzana
        </label>
        <label>
            <input type="checkbox" value="naranja" name="frutas[]"> Naranja
        </label>
        <label>
            <input type="checkbox" value="pera" name="frutas[]"> Pera
        </label>
        <br><br>

        <button type="submit">Enviar</button>
    </form>
</body>
</html>