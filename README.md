* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
}

header {
    background: #f0f0f0;
    padding: 10px;
    display: flex;
    align-items: center;
}

.hamburger {
    font-size: 24px;
    background: none;
    border: none;
    cursor: pointer;
}

.search-bar {
    flex-grow: 1;
    margin-left: 10px;
    padding: 8px;
    border-radius: 5px;
    border: 1px solid #ccc;
}

.container {
    display: flex;
}

#sidebar {
    width: 200px;
    background: #4CAF50;
    min-height: 100vh;
    transition: width 0.3s;
}

#sidebar ul {
    list-style: none;
    padding: 20px 0;
}

#sidebar ul li a {
    color: white;
    text-decoration: none;
    display: block;
    padding: 10px 20px;
}

#sidebar.active {
    width: 0;
    overflow: hidden;
}

main {
    flex-grow: 1;
    padding: 20px;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: flex-start;
    min-height: 100vh;
}

table {
    width: 80%;
    max-width: 800px;
    border-collapse: collapse;
    margin-bottom: 20px;
}

table th, table td {
    border: 1px solid #ccc;
    padding: 10px;
    text-align: center;
}

.cadastrar-btn {
    width: 200px;
    padding: 10px;
    background: #4CAF50;
    color: white;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
    margin-bottom: 20px;
}

.cadastrar-btn:hover {
    background: #45a049;
}

.mensagem {
    width: 80%;
    max-width: 800px;
    display: none;
    justify-content: space-between;
    align-items: center;
    padding: 10px;
    border-radius: 5px;
    margin-top: 10px;
}

.sucesso {
    background-color: #d4edda;
    color: #155724;
    border: 1px solid #c3e6cb;
}

.erro {
    background-color: #f8d7da;
    color: #721c24;
    border: 1px solid #f5c6cb;
}

.mensagem a {
    text-decoration: none;
    color: inherit;
    font-weight: bold;
}