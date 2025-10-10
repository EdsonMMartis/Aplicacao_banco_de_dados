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
