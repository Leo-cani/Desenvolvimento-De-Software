
-- CRIAÇÃO DAS TABELAS

CREATE TABLE TB_Cliente (
    ID_Cliente TEXT PRIMARY KEY,
    Endereco TEXT,
    Telefone TEXT,
    Nome_Responsavel TEXT,
    Ramo_Atividade TEXT,
    Razao_Social TEXT,
    CNPJ TEXT,
    Nome_Fantasia TEXT
);

CREATE TABLE TB_Produto (
    ID_Produto TEXT PRIMARY KEY,
    Nome_Produto TEXT,
    Tamanho_Produto TEXT,
    Cor INTEGER,
    Valor INTEGER
);

CREATE TABLE TB_Estoque_Produto (
    ID_Produto TEXT PRIMARY KEY,
    Qt_Estoque INTEGER,
    FOREIGN KEY (ID_Produto) REFERENCES TB_Produto(ID_Produto)
);

CREATE TABLE TB_Pedido (
    ID_Pedido TEXT PRIMARY KEY,
    Data_Pedido TEXT,
    Forma_Pagamento TEXT,
    Data_Entrega_Prevista TEXT,
    Data_Entrega_Efetiva TEXT,
    ID_Cliente TEXT,
    FOREIGN KEY (ID_Cliente) REFERENCES TB_Cliente(ID_Cliente)
);

CREATE TABLE REL_Itens (
    ID_Produto TEXT,
    ID_Pedido TEXT,
    PRIMARY KEY (ID_Produto, ID_Pedido),
    FOREIGN KEY (ID_Produto) REFERENCES TB_Produto(ID_Produto),
    FOREIGN KEY (ID_Pedido) REFERENCES TB_Pedido(ID_Pedido)
);

CREATE TABLE TB_Producao (
    ID_Lote INTEGER PRIMARY KEY,
    ID_Produto TEXT,
    Qt_Produzida INTEGER,
    Custo_Lote INTEGER,
    Data_Entrega TEXT,
    FOREIGN KEY (ID_Produto) REFERENCES TB_Produto(ID_Produto)
);

CREATE TABLE TB_MPrima (
    ID_MPrima TEXT PRIMARY KEY,
    Nome_MPrima TEXT,
    Descricao TEXT,
    Qt_Estoque INTEGER
);

CREATE TABLE TB_Fornecedor (
    ID_Fornecedor TEXT PRIMARY KEY,
    Endereco TEXT,
    Nome_Contato TEXT,
    CNPJ TEXT,
    Telefone TEXT,
    Razao_Social TEXT
);

CREATE TABLE REL_MPrima_Produto (
    ID_Produto TEXT,
    ID_MPrima TEXT,
    PRIMARY KEY (ID_Produto, ID_MPrima),
    FOREIGN KEY (ID_Produto) REFERENCES TB_Produto(ID_Produto),
    FOREIGN KEY (ID_MPrima) REFERENCES TB_MPrima(ID_MPrima)
);

CREATE TABLE REL_MPrima_Fornecedor (
    ID_Fornecedor TEXT,
    ID_MPrima TEXT,
    PRIMARY KEY (ID_Fornecedor, ID_MPrima),
    FOREIGN KEY (ID_Fornecedor) REFERENCES TB_Fornecedor(ID_Fornecedor),
    FOREIGN KEY (ID_MPrima) REFERENCES TB_MPrima(ID_MPrima)
);

-- INSERÇÕES

INSERT INTO TB_Cliente VALUES 
('C001', 'Rua A, 123', '27999990001', 'João Silva', 'Varejo', 'Comércio Silva LTDA', '12345678000101', 'Silva Store'),
('C002', 'Rua B, 456', '27999990002', 'Maria Lima', 'Serviços', 'Serviços Lima ME', '22345678000102', 'Lima Serviços'),
('C003', 'Rua C, 789', '27999990003', 'Carlos Souza', 'Indústria', 'Souza Indústria SA', '32345678000103', 'Souza Indústria'),
('C004', 'Rua D, 012', '27999990004', 'Ana Paula', 'Comércio', 'Ana Paula EPP', '42345678000104', 'Comércio Ana'),
('C005', 'Rua E, 345', '27999990005', 'Pedro Alves', 'Varejo', 'Pedro Varejo ME', '52345678000105', 'Varejão Pedro');

INSERT INTO TB_Produto VALUES 
('P001', 'Cadeira', 'Médio', 1, 150),
('P002', 'Mesa', 'Grande', 2, 300),
('P003', 'Armário', 'Grande', 3, 500),
('P004', 'Estante', 'Grande', 4, 450),
('P005', 'Prateleira', 'Pequeno', 5, 120);

INSERT INTO TB_Estoque_Produto VALUES 
('P001', 50),
('P002', 30),
('P003', 20),
('P004', 25),
('P005', 60);

INSERT INTO TB_Pedido VALUES 
('PED001', '2025-05-01', 'Cartão', '2025-05-10', '2025-05-09', 'C001'),
('PED002', '2025-05-02', 'Boleto', '2025-05-11', NULL, 'C002'),
('PED003', '2025-05-03', 'Pix', '2025-05-12', NULL, 'C003'),
('PED004', '2025-05-04', 'Dinheiro', '2025-05-13', '2025-05-13', 'C004'),
('PED005', '2025-05-05', 'Cartão', '2025-05-14', '2025-05-15', 'C005');

INSERT INTO REL_Itens VALUES 
('P001', 'PED001'),
('P002', 'PED002'),
('P003', 'PED003'),
('P004', 'PED004'),
('P005', 'PED005');

INSERT INTO TB_Producao VALUES 
(1, 'P001', 100, 1000, '2025-04-01'),
(2, 'P002', 80, 1500, '2025-04-02'),
(3, 'P003', 60, 2000, '2025-04-03'),
(4, 'P004', 50, 1700, '2025-04-04'),
(5, 'P005', 120, 900, '2025-04-05');

INSERT INTO TB_MPrima VALUES 
('MP001', 'Madeira', 'Madeira de pinus', 500),
('MP002', 'Parafuso', 'Parafuso de aço', 1000),
('MP003', 'Cola', 'Cola de madeira', 300),
('MP004', 'Tinta', 'Tinta branca', 200),
('MP005', 'Puxador', 'Puxador metálico', 150);

INSERT INTO TB_Fornecedor VALUES 
('F001', 'Rua F, 111', 'Luis Braga', '63345678000101', '27999990006', 'Fornecedor A'),
('F002', 'Rua G, 222', 'Fernanda Souza', '73345678000102', '27999990007', 'Fornecedor B'),
('F003', 'Rua H, 333', 'João Costa', '83345678000103', '27999990008', 'Fornecedor C'),
('F004', 'Rua I, 444', 'Amanda Melo', '93345678000104', '27999990009', 'Fornecedor D'),
('F005', 'Rua J, 555', 'Tiago Rocha', '103345678000105', '27999990010', 'Fornecedor E');

INSERT INTO REL_MPrima_Produto VALUES 
('P001', 'MP001'),
('P002', 'MP002'),
('P003', 'MP003'),
('P004', 'MP004'),
('P005', 'MP005');

INSERT INTO REL_MPrima_Fornecedor VALUES 
('F001', 'MP001'),
('F002', 'MP002'),
('F003', 'MP003'),
('F004', 'MP004'),
('F005', 'MP005');

-- ATUALIZAÇÕES

UPDATE TB_Cliente SET Telefone = '27988889999' WHERE ID_Cliente = 'C001';
UPDATE TB_Estoque_Produto SET Qt_Estoque = 45 WHERE ID_Produto = 'P001';
UPDATE TB_Pedido SET Forma_Pagamento = 'Pix' WHERE ID_Pedido = 'PED002';
UPDATE TB_Producao SET Qt_Produzida = 110 WHERE ID_Lote = 1;
UPDATE TB_MPrima SET Qt_Estoque = 600 WHERE ID_MPrima = 'MP001';
