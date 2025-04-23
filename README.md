<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="Index.CSS">
</head>
<body>
    <input type="checkbox" id="menu-toggle">
    <label for="menu-toggle" class="hamburger-label">☰</label>

    <div class="sidebar">
        <p style="padding: 10px;">Cadastrar</p>
    </div>

    <div class="main">
        <form action="#success">
          <table>
            <tr>
              <th>Nome da Ação</th>
              <th>Tipo de Resíduo</th>
              <th>Quantidade Estimada</th>
              <th>Localização</th>
            </tr>
            <tr>
              <td><input type="text" required></td>
              <td><input type="text" required></td>
              <td><input type="text" required></td>
              <td><input type="text" required></td>
            </tr>
          </table>
          <button type="submit" class="btn">Cadastrar</button>
        </form>

        <div id="success">
            <div class="message success">
                <span>✓ Seu Cadastro Foi Concluído!</span>
                <a href="#" class="Fechar">Fechar</a>
            </div>
        </div>

    <div id="error">
        <div class="message error">
            <span>✓ Seu Cadastro Foi Concluído!</span>
            <a href="#" class="Fechar">Fechar</a>
        </div>
    </div>
    </div>
    
    
</body>
</html>







body {
    margin: 0;
    font-family: Arial, sans-serif;
}
#menu-toggle {
    display: none;
}
.sidebar {
    position: fixed;
    left: 0;
    top: 0;
    width: 200px;
    height: 100%;
    background-color: green;
    padding-top: 60px;
    transform: translateX(-100%);
    transition: transform 0.3s;
    color: white;
}

#menu-toggle:checked + .didebar {
    transform: translateX(0);
}

.hamburger-label {
    font-size: 30px;
    padding: 10px;
    cursor: pointer;
    display: inline-block;
}

.main {
    margin-left: 20px;
    padding: 20px;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

th, td {
    border: 1px sold #ccc;
    padding: 10px;
}

.btn {
    display: block;
    margin-top: 10px;
    padding: 10px 20px;
}

.message {
    margin-top: 20px;
    padding: 15px;
    border-radius: 5px;
}

.success {
    background-color: #ccc;
    color: green;
}

.error {
    background-color: #ccc;
    color: #721c24;
}

.fechar {
    float: right;
    text-decoration: underline;
    cursor: pointer;
}

#success:target .success,
#error:target .error {
    display: block;
}

.success, .error {
    display: none;
}
