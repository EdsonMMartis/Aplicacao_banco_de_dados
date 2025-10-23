-- BANCO DE EXEMPLO PARA RELATÓRIO DE VENDAS
-- TABELAS: CLIENTES E PEDIDOS
 -- 1 CRIAR BASE DE DADOS CHAMADA RELATORIO_VENDAS_EMPRESA
CREATE DATABASE ABD_03361_A_EdsonLuiz_RELATÓRIO_DE_VENDAS_EMPRESA;
Use ABD_03361_A_EdsonLuiz_GESTAO_ADVOCACIA_2025;
 
-- 2 CRIAR TABELA CLIENTES
-- CAMPOS: id, nome, cidade
CREATE TABLE CLIENTES (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cidade VARCHAR(100)
);

 -- 3 CRIAR TABELA PEDIDOS
-- CAMPOS: id, id_cliente, produto, quantidade, valor_unitario
-- LIGAR A COLUNA id_cliente À TABELA CLIENTES
 CREATE TABLE PEDIDOS (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    produto VARCHAR(100),
    quantidade INT,
    valor_unitario DECIMAL(10,2),
    FOREIGN KEY (id_cliente) REFERENCES CLIENTES(id)
);

 -- 4 INSERIR DADOS NAS TABELAS
-- CLIENTES: 3 REGISTROS
-- PEDIDOS: 3 REGISTROS, RELACIONANDO COM CLIENTES
 
INSERT INTO CLIENTES (nome, cidade) VALUES
('João Silva', 'São Paulo'),
('Maria Oliveira', 'Guarulhos'),
('Carlos Souza', 'Campinas'),
('Ana Paula', 'Santos'),
('Pedro Lima', 'São Bernardo'),
('Fernanda Costa', 'Osasco'),
('Lucas Rocha', 'Diadema'),
('Juliana Mendes', 'Barueri'),
('Rafael Martins', 'Sorocaba'),
('Patrícia Gomes', 'Jundiaí'),
('Bruno Alves', 'São Caetano'),
('Camila Ferreira', 'Mauá'),
('Felipe Andrade', 'Suzano'),
('Larissa Pinto', 'Ribeirão Preto'),
('Gustavo Teixeira', 'Bauru'),
('Aline Carvalho', 'Taubaté'),
('Rodrigo Lima', 'São Vicente'),
('Beatriz Ramos', 'Carapicuíba'),
('Eduardo Nunes', 'Franca'),
('Vanessa Dias', 'Itapevi'),
('Thiago Moreira', 'Cotia'),
('Amanda Souza', 'Piracicaba'),
('Diego Almeida', 'Araraquara'),
('Letícia Martins', 'Marília'),
('Marcelo Costa', 'Presidente Prudente'),
('Tatiane Silva', 'Mogi das Cruzes'),
('André Santos', 'São José dos Campos'),
('Renata Oliveira', 'Itu'),
('Fábio Lima', 'Barretos'),
('Simone Rocha', 'Jacareí'),
('Leonardo Mendes', 'São Carlos'),
('Priscila Gomes', 'Franco da Rocha'),
('Wagner Teixeira', 'Itanhaém'),
('Carolina Alves', 'Botucatu'),
('Daniela Ferreira', 'Assis'),
('Ricardo Andrade', 'Avaré'),
('Juliana Pinto', 'Bragança Paulista'),
('Fernando Teixeira', 'Limeira'),
('Tatiana Carvalho', 'Ourinhos'),
('Marcos Lima', 'Itapetininga'),
('Isabela Ramos', 'São Roque'),
('Alex Nunes', 'Votorantim'),
('Natália Dias', 'Tatuí'),
('Henrique Moreira', 'Lençóis Paulista'),
('Bruna Souza', 'Americana'),
('César Almeida', 'Indaiatuba'),
('Débora Martins', 'Itapira'),
('Roberto Costa', 'Atibaia'),
('Elaine Silva', 'Pindamonhangaba'),
('Vinícius Santos', 'Ferraz de Vasconcelos');


INSERT INTO PEDIDOS (id_cliente, produto, quantidade, valor_unitario) VALUES
(1, 'Notebook', 1, 3500.00),
(2, 'Smartphone', 2, 1500.00),
(3, 'Mouse', 3, 50.00),
(4, 'Teclado', 1, 120.00),
(5, 'Monitor', 2, 800.00),
(6, 'Impressora', 1, 600.00),
(7, 'Tablet', 1, 1100.00),
(8, 'Fone de Ouvido', 2, 200.00),
(9, 'Webcam', 1, 250.00),
(10, 'HD Externo', 1, 400.00),
(11, 'Pen Drive', 5, 40.00),
(12, 'Cadeira Gamer', 1, 950.00),
(13, 'Microfone', 1, 300.00),
(14, 'Caixa de Som', 2, 150.00),
(15, 'Roteador', 1, 180.00),
(16, 'Switch de Rede', 1, 220.00),
(17, 'Adaptador Wi-Fi', 2, 90.00),
(18, 'Controle Xbox', 1, 350.00),
(19, 'SSD 1TB', 1, 700.00),
(20, 'Placa de Vídeo', 1, 2500.00),
(21, 'Processador Ryzen', 1, 1200.00),
(22, 'Memória RAM 16GB', 2, 400.00),
(23, 'Fonte 600W', 1, 350.00),
(24, 'Gabinete Gamer', 1, 500.00),
(25, 'Cooler RGB', 2, 150.00),
(26, 'Estabilizador', 1, 300.00),
(27, 'Notebook Gamer', 1, 5500.00),
(28, 'Smartwatch', 1, 800.00),
(29, 'Câmera Digital', 1, 1200.00),
(30, 'Tripé', 1, 100.00),
(31, 'Lente Canon', 1, 1800.00),
(32, 'Scanner', 1, 700.00),
(33, 'Projetor', 1, 2000.00),
(34, 'TV 50"', 1, 2500.00),
(35, 'Controle Remoto', 2, 60.00),
(36, 'HDMI Cable', 3, 30.00),
(37, 'Notebook Dell', 1, 4000.00),
(38, 'Smartphone Samsung', 1, 1800.00),
(39, 'Mousepad Gamer', 2, 45.00),
(40, 'Hub USB', 1, 120.00),
(41, 'Carregador Portátil', 2, 90.00),
(42, 'Case para Notebook', 1, 150.00),
(43, 'Filtro de Linha', 1, 80.00),
(44, 'Antivírus', 1, 120.00),
(45, 'Software Office', 1, 500.00),
(46, 'Licença Windows', 1, 600.00),
(47, 'Cabo de Rede', 5, 25.00),
(48, 'Suporte para Monitor', 1, 130.00),
(49, 'Mesa Digitalizadora', 1, 900.00),
(50, 'HD 2TB', 1, 500.00);

-- 5 INNER JOIN
-- MOSTRAR APENAS CLIENTES QUE TÊM PEDIDOS
-- EXIBIR: NOME DO CLIENTE E PRODUTO
 SELECT c.nome AS Nome_Cliente, p.produto AS Produto
FROM CLIENTES c
INNER JOIN PEDIDOS p ON c.id = p.id_cliente;
 
-- 6 LEFT JOIN
-- MOSTRAR TODOS OS CLIENTES, MESMO QUE NÃO TENHAM PEDIDOS
-- EXIBIR: NOME DO CLIENTE E PRODUTO
SELECT c.nome AS Nome_Cliente, p.produto AS Produto
FROM CLIENTES c
LEFT JOIN PEDIDOS p ON c.id = p.id_cliente;
 
-- 7 RIGHT JOIN
-- MOSTRAR TODOS OS PEDIDOS, MESMO QUE NÃO TENHAM CLIENTE ASSOCIADO
-- EXIBIR: NOME DO CLIENTE E PRODUTO
 SELECT c.nome AS Nome_Cliente, p.produto AS Produto
FROM CLIENTES c
RIGHT JOIN PEDIDOS p ON c.id = p.id_cliente;
 
-- 8 FULL JOIN
-- MOSTRAR TODOS OS CLIENTES E TODOS OS PEDIDOS, MESMO SEM CORRESPONDÊNCIA
-- DICA: NO MYSQL PODE SER FEITO COM UNION DE LEFT JOIN E RIGHT JOIN
 SELECT c.nome AS Nome_Cliente, p.produto AS Produto
FROM CLIENTES c
LEFT JOIN PEDIDOS p ON c.id = p.id_cliente
UNION
SELECT c.nome AS Nome_Cliente, p.produto AS Produto
FROM CLIENTES c
RIGHT JOIN PEDIDOS p ON c.id = p.id_cliente;

 -- 9 CROSS JOIN
-- COMBINAR TODOS OS CLIENTES COM TODOS OS PEDIDOS (PRODUTO CARTESIANO)
-- EXIBIR: NOME DO CLIENTE E PRODUTO
SELECT c.nome AS Nome_Cliente, p.produto AS Produto
FROM CLIENTES c
CROSS JOIN PEDIDOS p;
