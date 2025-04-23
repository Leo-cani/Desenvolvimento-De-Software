#desenvolvimento da Web
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Solicitar Retirada de Material</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <h1>SOLICITAR RETIRADA DE MATERIAL</h1>
    </header>

    <main>
        <section>
            <h2>Materiais disponíveis</h2>
            <table>
                <thead>
                    <tr>
                        <th>Material</th>
                        <th>Quantidade (kg)</th>
                    </tr>
                </thead>
                <tbody>
                    <tr><td>Plástico</td><td>102</td></tr>
                    <tr><td>Metal</td><td>240</td></tr>
                    <tr><td>Papel</td><td>48</td></tr>
                    <tr><td>Tecido</td><td>23</td></tr>
                </tbody>
            </table>
        </section>

        <form>
            <label for="material">Selecionar material desejado</label>
            <select id="material" name="material">
                <option value="plastico">Plástico</option>
                <option value="metal">Metal</option>
                <option value="papel">Papel</option>
                <option value="tecido">Tecido</option>
            </select>

            <label for="quantidade">Quantidade (kg)</label>
            <input type="number" id="quantidade" name="quantidade" value="12" min="1">

            <label for="data">Data para retiro</label>
            <input type="date" id="data" name="data" value="2025-07-01">

            <button type="submit">Solicitar Retirada</button>
        </form>
    </main>
</body>
</html>