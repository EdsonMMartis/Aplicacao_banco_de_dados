-- Exerícios
-- CRIAR A BASE DE DADOS _ABD_03361_A_NOME_BIBLIOTECA
 -- CRIAR UM CONTROLE DE BIBLIOTECA
-- TEREMOS OS DADOS DOS ALUNOS, SÉRIES DOS ALUNOS E DOS LIVROS, GENEROS E EMPRESTIMOS
-- 1 A TABELA GENEROS TEM OS CAMPOS ID E NOME_GENERO, POPULE EM SEGUIDA COM 5 GENEROS
-- 2 A TABELA LIVROS TEM OS CAMPOS ID, NOME_LIVRO, AUTOR, ID_GENERO, QTD_DISPONIVEL, PRECO, DATA_INSERCAO,
-- POPULE EM SEGUIDA EM COM 5 LIVROS QUE VOCÊ RECOMENDA SENDO ESSENCIAIS PARA QUALQUER UM
-- DICA: PARA DATA_INSERCAO USE O TIPO TIMESTAMP DEFAULT CURRENT_TIMESTAMP
 -- 3 CRIAR UMA TABELA DAS SÉRIES DOS ALUNOS COM O NOME DE SERIES COM OS CAMPOS ID, NOME_SERIE
-- POPULE EM SEGUIDA EXEMPLO: ('6º'), ('7º')
 -- 4 CRIAR A TABELA DE ALUNOS COM OS CAMPOS ID, NOME, ID_SERIE, NASCIMENTO
-- POPULE COM 10 ALUNOS
 -- 5 TABELA EMPRESTIMOS 
-- ID, ID_ALUNO, ID_LIVRO, DATA_EMPRESTO TIMESTAMP DEFAULT CURRENT_TIMESTAMP, DEVOLVIDO BOOLEAN DEFAULT FALSE
-- 6 INSERIR NA TABELA DE EMPRESTIMOS A COLUNA DATA_DEVOLUCAO_PREVISTA
 
-- 7 POPULAR A TABELA EMPRESTIMOS COM 5 ITENS
 
-- 8 MOSTRAR TODOS OS LIVROS DISPONÍVEIS COM QUANTIDADE MAIOR QUE 3
 
-- 9 MOSTRAR TODOS OS ALUNOS DA 6º SÉRIE
 
-- 10 REGISTRAR UM EMPRÉSTIMO (ALUNO PEDRO LIMA PEGOU "O HOBBIT" EM 2025-10-10 E PRETENDE DEVOLVER 2025-10-25
 
-- 11 DIMINUIR A QUANTIDADE DISPONÍVEL DO LIVRO "O HOBBIT" EM 1
-- DICA: PODE USAR SUBTRAÇÃO! QTD_DISPONIVEL = QTD_DISPONIVEL - 1
 
-- 12 MOSTRAR O TOTAL DE LIVROS DISPONÍVEIS EM UMA COLUNA CHAMADA TOTAL_LIVROS
 
-- 13 ALTERAR O NOME DA TABELA LIVROS PARA LIVROS_EM_ESTOQUE
 
-- 14 MOSTRAR O VALOR TOTAL INVESTIDO EM LIVROS EM UMA COLUNA CHAMADA VALOR_TOTAL_BIBLIOTECA
-- DICA: USE SUM(COLUNA_1 * COLUNA_2)
 
-- 15 MOSTRAR OS LIVROS DISPONIVEIS COM
-- QUANTIDADE MAIOR QUE 2, PREÇO MAIOR QUE 50 REAIS E GÊNERO SEJA FANTASIA OU LITERATURA
-- DICA: USE WHERE E IN()


-- Criar base de dados

 CREATE DATABASE IF NOT EXISTS ABD_03361_A_EDSON_BIBLIOTECA;
 
 USE ABD_03361_A_EDSON_BIBLIOTECA;

-- Tabela Gêneros
CREATE TABLE generos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_genero VARCHAR(100) NOT NULL
);

INSERT INTO generos (nome_genero) VALUES
('Ficção Científica'),
('Romance'),
('Autoajuda'),
('História'),
('Fantasia');

-- Tabela Livros
CREATE TABLE livros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_livro VARCHAR(150) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    id_genero INT,
    qtd_disponivel INT DEFAULT 0,
    preco DECIMAL(10,2),
    data_insercao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_genero) REFERENCES generos(id)
);

INSERT INTO livros (nome_livro, autor, id_genero, qtd_disponivel, preco) VALUES
('1984', 'George Orwell', 1, 5, 39.90),
('Dom Casmurro', 'Machado de Assis', 2, 3, 29.90),
('O Poder do Hábito', 'Charles Duhigg', 3, 4, 45.00),
('História do Brasil', 'Boris Fausto', 4, 2, 55.00),
('O Senhor dos Anéis', 'J.R.R. Tolkien', 5, 6, 69.90);

-- Tabela Séries
CREATE TABLE series (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_serie VARCHAR(20) NOT NULL
);

INSERT INTO series (nome_serie) VALUES
('6º'),
('7º'),
('8º'),
('9º'),
('1º EM');

-- Tabela Alunos
CREATE TABLE alunos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_serie INT,
    nascimento DATE,
    FOREIGN KEY (id_serie) REFERENCES series(id)
);

INSERT INTO alunos (nome, id_serie, nascimento) VALUES
('Ana Beatriz Silva', 1, '2012-05-10'),
('Carlos Eduardo Lima', 2, '2011-08-22'),
('Fernanda Souza', 3, '2010-03-15'),
('João Pedro Martins', 4, '2009-11-30'),
('Mariana Costa', 5, '2008-07-19'),
('Lucas Rocha', 1, '2012-02-25'),
('Juliana Alves', 2, '2011-06-14'),
('Rafael Torres', 3, '2010-09-05'),
('Isabela Mendes', 4, '2009-12-01'),
('Gustavo Oliveira', 5, '2008-04-09');

-- Tabela Empréstimos
CREATE TABLE emprestimos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    id_livro INT,
    data_empresto TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    devolvido BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id),
    FOREIGN KEY (id_livro) REFERENCES livros(id)
);

-- Visualizar gêneros
SELECT * FROM generos;

-- Visualizar livros
SELECT * FROM livros;

-- Visualizar séries
SELECT * FROM series;

-- Visualizar alunos
SELECT * FROM alunos;

-- Visualizar empréstimos
SELECT * FROM emprestimos;


SELECT * FROM livros
WHERE qtd_disponivel > 3;


ALTER TABLE emprestimos
ADD COLUMN data_devolucao_prevista DATE;


INSERT INTO emprestimos (id_aluno, id_livro, data_empresto, data_devolucao_prevista, devolvido)
VALUES
(1, 1, '2025-10-01', '2025-10-15', FALSE),
(2, 2, '2025-10-02', '2025-10-16', TRUE),
(3, 3, '2025-10-03', '2025-10-17', FALSE),
(4, 4, '2025-10-04', '2025-10-18', TRUE),
(5, 5, '2025-10-05', '2025-10-19', FALSE);


SELECT a.*
FROM alunos a
JOIN series s ON a.id_serie = s.id
WHERE s.nome_serie = '6º';


CREATE TABLE IF NOT EXISTS generos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_genero VARCHAR(100) NOT NULL
);


-- Primeiro, inserir o aluno Pedro Lima na tabela alunos (se ainda não existir)
INSERT INTO alunos (nome, id_serie, nascimento)
VALUES ('Pedro Lima', 1, '2012-04-20'); -- Supondo que ele seja da 6º série

-- Depois, registrar o empréstimo
INSERT INTO emprestimos (id_aluno, id_livro, data_empresto, data_devolucao_prevista, devolvido)
VALUES (
    (SELECT id FROM alunos WHERE nome = 'Pedro Lima'),
    (SELECT id FROM livros WHERE nome_livro = 'O Hobbit'),
    '2025-10-10',
    '2025-10-25',
    FALSE
);


UPDATE livros
SET qtd_disponivel = qtd_disponivel - 1
WHERE nome_livro = 'O Hobbit';


UPDATE livros SET qtd_disponivel = qtd_disponivel - 1 WHERE id = (
    SELECT id FROM livros WHERE nome_livro = 'O Hobbit' LIMIT 1
);


SET SQL_SAFE_UPDATES = 0;


SELECT SUM(qtd_disponivel) AS total_livros
FROM livros;

RENAME TABLE livros TO livros_em_estoque;


SELECT SUM(preco * qtd_disponivel) AS valor_total_biblioteca
FROM livros_em_estoque;



SELECT le.*
FROM livros_em_estoque le
JOIN generos g ON le.id_genero = g.id
WHERE le.qtd_disponivel > 2
  AND le.preco > 50
  AND g.nome_genero IN ('Fantasia', 'Literatura');



