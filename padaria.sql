-- Criação da tabela FORNECEDOR

use ABD_03361_EdsonLuiz;

CREATE TABLE Fornecedor (
    id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(20)
);

SELECT * FROM Vendas;

-- Criação da tabela PRODUTO
CREATE TABLE Produto (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(8,2),
    id_fornecedor INT,
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor(id_fornecedor)
);

-- Criação da tabela VENDAS
CREATE TABLE Vendas (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_produto INT,
    quantidade INT,
    data_venda DATE,
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);

-- Inserção de dados de exemplo

-- Fornecedores
INSERT INTO Fornecedor (nome, telefone) VALUES 
('Fornecedor A', '1199999-0001'),
('Fornecedor B', '1198888-0002');

-- Produtos
INSERT INTO Produto (nome, preco, id_fornecedor) VALUES 
('Arroz', 5.50, 1),
('Feijão', 4.20, 1),
('Macarrão', 3.80, 2),
('Bolo de Fubá', 28.50, 2);

-- Vendas
INSERT INTO Vendas (id_produto, quantidade, data_venda) VALUES 
(1, 10, '2025-10-01'),
(2, 5, '2025-10-02'),
(3, 8, '2025-10-03'),
(4, 2, '2025-10-04');

-- Consultas

-- 1. Quais produtos foram vendidos, em que data e em qual quantidade
SELECT P.nome AS Produto, V.quantidade, V.data_venda
FROM Vendas V
JOIN Produto P ON V.id_produto = P.id_produto;

-- 2. Total de vendas por produto
SELECT P.nome AS Produto, SUM(V.quantidade) AS Total_Vendido
FROM Vendas V
JOIN Produto P ON V.id_produto = P.id_produto
GROUP BY P.nome;

-- 3. Produtos e seus fornecedores
SELECT P.nome AS Produto, F.nome AS Fornecedor, F.telefone
FROM Produto P
JOIN Fornecedor F ON P.id_fornecedor = F.id_fornecedor;