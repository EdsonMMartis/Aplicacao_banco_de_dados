use ABD_03361_EdsonLuiz;

CREATE TABLE COMIDAS_FAVORITAS (
    ID INT PRIMARY KEY,
    NOME_PESSOA VARCHAR(100),
    COMIDA VARCHAR(100),
    TIPO VARCHAR(50),
    NOTA INT,
    CIDADE VARCHAR(100)
);


INSERT INTO COMIDAS_FAVORITAS (ID, NOME_PESSOA, COMIDA, TIPO, NOTA, CIDADE) VALUES
(1, 'Ana', 'Brigadeiro', 'Doce', 9, 'São Paulo'),
(2, 'Carlos', 'Feijoada', 'Salgado', 8, 'Rio de Janeiro'),
(3, 'Beatriz', 'Sorvete', 'Doce', 10, 'São Paulo'),
(4, 'Daniel', 'Pizza', 'Salgado', 7, 'Belo Horizonte'),
(5, 'Fernanda', 'Pudim', 'Doce', 9, 'Rio de Janeiro'),
(6, 'Katia', 'Lazanha', 'Salgado', 10, 'Guarulhos'),
(7, 'Isabelle', 'Strogonoff', 'Salgado', 10, 'Guarulhos'),
(8, 'Edson', 'Churrasco', 'Salgado', 10, 'Guarulhos'),
(9, 'Edson', 'Torresmo', 'Salgado', 10, 'Guarulhos'),
(10, 'Edson', 'Cerveja', 'Bebida', 10, 'Guarulhos');



INSERT INTO COMIDAS_FAVORITAS (ID, NOME_PESSOA, COMIDA, TIPO, NOTA, CIDADE) VALUES
(6, 'Katia', 'Lazanha', 'Salgado', 10, 'Guarulhos'),
(7, 'Isabelle', 'Strogonoff', 'Salgado', 10, 'Guarulhos'),
(8, 'Edson', 'Churrasco', 'Salgado', 10, 'Guarulhos'),
(9, 'Edson', 'Torresmo', 'Salgado', 10, 'Guarulhos'),
(10, 'Edson', 'Cerveja', 'Bebida', 10, 'Guarulhos');


SELECT * FROM COMIDAS_FAVORITAS;


SELECT * FROM COMIDAS_FAVORITAS
WHERE NOTA > 8;




SELECT * FROM COMIDAS_FAVORITAS
WHERE CIDADE IN ('São Paulo', 'Rio de Janeiro');




UPDATE COMIDAS_FAVORITAS
SET NOTA = 10
WHERE ID = 2; -- exemplo: se Feijoada tem ID 2



