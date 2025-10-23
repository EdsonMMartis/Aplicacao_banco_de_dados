


CREATE TABLE Comidas_de_Vascaino (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    tipo VARCHAR(50)
);

DROP TABLE Comidas_de_Vascaino



CREATE TABLE COMIDAS_FAVORITAS_VASCAINOS (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Tipo VARCHAR(50),
    Cidade Varchar(100)
);

ALTER TABLE COMIDAS_FAVORITAS_VASCAINOS ADD nota INT;

SELECT * FROM COMIDAS_FAVORITAS_VASCAINOS;

SELECT COUNT(*) FROM COMIDAS_FAVORITAS_VASCAINOS;

SHOW CREATE TABLE COMIDAS_FAVORITAS_VASCAINOS;




INSERT INTO COMIDAS_FAVORITAS_VASCAINOS (nome, tipo, cidade, nota)
VALUES 
    ('Bolinho de Bacalhau', 'Salgado', 'Rio de Janeiro', 10),
    ('Cerveja', 'Bebida', 'Rio de Janeiro', 7),
    ('Churrasquinho', 'Salgado', 'Macaé', 9),
    ('Bacalhoada', 'Salgado', 'São Paulo', 9),
    ('Pizza', 'Salgado', 'Guarulhos', 10),
    ('Joelho de Porco', 'Salgado', 'Rio de Janeiro', 9),
    ('Pudim', 'Doce', 'Rio de Janeiro', 9),
    ('Melancia', 'Fruta', 'Jacareí', 9),
    ('Caipirinha', 'Bebida', 'São Paulo', 9),
    ('Açaí', 'Doce', 'Belém', 10),
    ('Pastel de Feira', 'Salgado', 'São Paulo', 9),
    ('Moqueca', 'Peixe', 'Vitória', 10),
    ('Tapioca', 'Lanche', 'Recife', 8),
    ('Cuscuz', 'Cereal', 'Natal', 9),
    ('Pão de Queijo', 'Salgado', 'Belo Horizonte', 10),
    ('Feijão Tropeiro', 'Salgado', 'Belo Horizonte', 9),
    ('Coxinha', 'Salgado', 'São Paulo', 10),
    ('Brigadeiro', 'Doce', 'São Paulo', 10),
    ('Quindim', 'Doce', 'Porto Alegre', 8),
    ('Arroz de carreteiro', 'Salgado', 'Porto Alegre', 9),
    ('Tacacá', 'Sopa', 'Belém', 8),
    ('Empadão Goiano', 'Salgado', 'Goiânia', 9),
    ('Chimarrão', 'Bebida', 'Porto Alegre', 7),
    ('Vatapá', 'Salgado', 'Salvador', 9),
    ('Carne de Sol com Aipim', 'Salgado', 'Fortaleza', 10),
    ('Sorvete de Cupuaçu', 'Doce', 'Manaus', 9),
    ('Maniçoba', 'Salgado', 'Belém', 8),
    ('Bolo de Rolo', 'Doce', 'Recife', 10),
    ('Caldo Verde', 'Sopa', 'Rio de Janeiro', 8),
    ('Dobradinha', 'Salgado', 'São Paulo', 6),
    ('Rabada', 'Salgado', 'Rio de Janeiro', 5),
    ('Canjica', 'Doce', 'Campinas', 7),
    ('Mingau de Milho', 'Doce', 'Natal', 4),
    ('Baião de Dois', 'Salgado', 'Fortaleza', 10),
    ('Farofa de Banana', 'Acompanhamento', 'Belém', 3),
    ('Pamonha', 'Doce', 'Goiânia', 6),
    ('Café com Leite', 'Bebida', 'São Paulo', 8),
    ('Tutu de Feijão', 'Salgado', 'Belo Horizonte', 7),
    ('Buchada de Bode', 'Salgado', 'Recife', 2),
    ('Gelatina Colorida', 'Doce', 'Curitiba', 5),
    ('Água de Coco', 'Bebida', 'Salvador', 9),
    ('Creme de Abóbora', 'Sopa', 'São Paulo', 4),
    ('Biscoito de Polvilho', 'Lanche', 'Rio de Janeiro', 6),
    ('Mandioca Frita', 'Acompanhamento', 'Campo Grande', 8),
    ('Caldinho de Feijão', 'Sopa', 'Recife', 7),
    ('Suco de Acerola', 'Bebida', 'Maceió', 3),
    ('Rapadura', 'Doce', 'Fortaleza', 1),
    ('Tamarindo', 'Fruta', 'Belém', 2);

TRUNCATE TABLE COMIDAS_FAVORITAS_VASCAINOS;
	
GRANT SELECT, INSERT ON COMIDAS_BRASILEIRAS TO 'aluno'@'%';
REVOKE SELECT ON COMIDAS_FAVORITAS FROM 'professor'@'%';

