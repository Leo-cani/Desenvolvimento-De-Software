# Desenvolvimento-De-Software
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>População do Brasil</title>
    <style>
        table {
            width: 60%;
            border-collapse: collapse;
            margin: 20px auto;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
        .regiao {
            font-weight: bold;
            background-color: #ddd;
        }
        .total {
            font-weight: bold;
            background-color: #ccc;
        }
    </style>
</head>
<body>

    <table>
        <tr>
            <th>Região</th>
            <th>UF</th>
            <th>Nome</th>
            <th>Habitantes (milhão)</th>
        </tr>
        <tr class="regiao"><td colspan="4">Centro-Oeste</td></tr>
        <tr><td></td><td>DF</td><td>Distrito Federal</td><td>2,9</td></tr>
        <tr><td></td><td>GO</td><td>Goiás</td><td>6,6</td></tr>
        <tr><td></td><td>MT</td><td>Mato Grosso</td><td>3,2</td></tr>
        <tr><td></td><td>MS</td><td>Mato Grosso do Sul</td><td>2,6</td></tr>

        <tr class="regiao"><td colspan="4">Nordeste</td></tr>
        <tr><td></td><td>AL</td><td>Alagoas</td><td>3,3</td></tr>
        <tr><td></td><td>BA</td><td>Bahia</td><td>15,2</td></tr>
        <tr><td></td><td>CE</td><td>Ceará</td><td>8,9</td></tr>
        <tr><td></td><td>MA</td><td>Maranhão</td><td>6,9</td></tr>
        <tr><td></td><td>PB</td><td>Paraíba</td><td>3,9</td></tr>
        <tr><td></td><td>PE</td><td>Pernambuco</td><td>9,3</td></tr>
        <tr><td></td><td>PI</td><td>Piauí</td><td>3,2</td></tr>
        <tr><td></td><td>RN</td><td>Rio Grande do Norte</td><td>3,4</td></tr>
        <tr><td></td><td>SE</td><td>Sergipe</td><td>2,2</td></tr>

        <tr class="regiao"><td colspan="4">Norte</td></tr>
        <tr><td></td><td>AC</td><td>Acre</td><td>0,8</td></tr>
        <tr><td></td><td>AP</td><td>Amapá</td><td>0,8</td></tr>
        <tr><td></td><td>AM</td><td>Amazonas</td><td>3,9</td></tr>
        <tr><td></td><td>PA</td><td>Pará</td><td>8,1</td></tr>
        <tr><td></td><td>RO</td><td>Rondônia</td><td>1,7</td></tr>
        <tr><td></td><td>RR</td><td>Roraima</td><td>0,5</td></tr>
        <tr><td></td><td>TO</td><td>Tocantins</td><td>1,5</td></tr>

        <tr class="regiao"><td colspan="4">Sudeste</td></tr>
        <tr><td></td><td>ES</td><td>Espírito Santo</td><td>3,9</td></tr>
        <tr><td></td><td>MG</td><td>Minas Gerais</td><td>20,8</td></tr>
        <tr><td></td><td>RJ</td><td>Rio de Janeiro</td><td>16,5</td></tr>
        <tr><td></td><td>SP</td><td>São Paulo</td><td>44,3</td></tr>

        <tr class="regiao"><td colspan="4">Sul</td></tr>
        <tr><td></td><td>PR</td><td>Paraná</td><td>11,2</td></tr>
        <tr><td></td><td>RS</td><td>Rio Grande do Sul</td><td>11,2</td></tr>
        <tr><td></td><td>SC</td><td>Santa Catarina</td><td>6,8</td></tr>

        <tr class="total"><td colspan="3">População do Brasil</td><td>203,6</td></tr>
    </table>

</body>
</html>