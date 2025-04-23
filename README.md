<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <title>Cadastro de Resíduos</title>
  <link rel="stylesheet" href="estilos.css">
</head>
<body>

  <!-- Checkbox para abrir a sidebar -->
  <input type="checkbox" id="menu-toggle">
  <label for="menu-toggle" class="hamburger-label">☰</label>

  <!-- Sidebar -->
  <div class="sidebar">
    <p style="padding: 10px;">Cadastrar</p>
  </div>

  <!-- Conteúdo Principal -->
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

    <!-- Mensagens -->
    <div id="success">
      <div class="message success">
        <span>✓ Seu Cadastro Foi Concluído!</span>
        <a href="#" class="fechar">Fechar</a>
      </div>
    </div>

    <div id="error">
      <div class="message error">
        <span>✗ Ocorreu um Erro, Tente Novamente.</span>
        <a href="#" class="fechar">Fechar</a>
      </div>
    </div>
  </div>

</body>
</html>
