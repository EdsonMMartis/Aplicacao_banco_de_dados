
USE ABD_03361_EdsonLuiz;
SELECT * FROM FAMILIA order by nome;


USE ABD_03361_EdsonLuiz;

INSERT INTO FAMILIA (ID, NOME, PARENTESCO, IDADE, CIDADE) VALUES
(101, 'Juliana Lima', 'Prima', 89, 'João Pessoa'),
(102, 'Carlos Rocha', 'Avô', 45, 'Curitiba'),
(103, 'Renata Souza', 'Filha', 84, 'Fortaleza'),
(104, 'Camila Rocha', 'Avó', 61, 'João Pessoa'),
(105, 'Roberto Lima', 'Avô', 89, 'Campo Grande'),
(106, 'Fernanda Costa', 'Filha', 89, 'João Pessoa'),
(107, 'Juliana Rocha', 'Filha', 89, 'João Pessoa'),
(108, 'Carlos Lima', 'Avô', 89, 'João Pessoa'),
(109, 'Juliana Souza', 'Filha', 89, 'João Pessoa'),
(110, 'Carlos Lima', 'Avô', 89, 'João Pessoa'),
(111, 'Juliana Lima', 'Filha', 89, 'João Pessoa'),
(112, 'Carlos Lima', 'Avô', 89, 'João Pessoa'),
(113, 'Juliana Lima', 'Filha', 89, 'João Pessoa'),
(114, 'Carlos Lima', 'Avô', 89, 'João Pessoa'),
(115, 'Juliana Lima', 'Filha', 89, 'João Pessoa'),
(116, 'Carlos Lima', 'Avô', 89, 'João Pessoa'),
(117, 'Juliana Lima', 'Filha', 89, 'João Pessoa'),
(118, 'Carlos Lima', 'Avô', 89, 'João Pessoa'),
(119, 'Juliana Lima', 'Filha', 89, 'João Pessoa'),
(120, 'Carlos Lima', 'Avô', 89, 'João Pessoa'),
(121, 'Juliana Lima', 'Filha', 89, 'João Pessoa'),
(122, 'Carlos Lima', 'Avô', 89, 'João Pessoa'),
(123, 'Juliana Lima', 'Filha', 89, 'João Pessoa'),
(124, 'Carlos Lima', 'Avô', 89, 'João Pessoa'),
(125, 'Juliana Lima', 'Filha', 89, 'João Pessoa'),
(126, 'Carlos Lima', 'Avô', 89, 'João Pessoa'),
(127, 'Juliana Lima', 'Filha', 89, 'João Pessoa'),
(128, 'Carlos Lima', 'Avô', 89, 'João Pessoa'),
(129, 'Juliana Lima', 'Filha', 89, 'João Pessoa');


UPDATE FAMILIA SET ID = 7 WHERE ID = 101;
UPDATE FAMILIA SET ID = 8 WHERE ID = 102;
UPDATE FAMILIA SET ID = 9 WHERE ID = 103;
UPDATE FAMILIA SET ID = 10 WHERE ID = 104;
UPDATE FAMILIA SET ID = 11 WHERE ID = 105;
UPDATE FAMILIA SET ID = 12 WHERE ID = 106;
UPDATE FAMILIA SET ID = 13 WHERE ID = 107;
UPDATE FAMILIA SET ID = 14 WHERE ID = 108;
UPDATE FAMILIA SET ID = 15 WHERE ID = 109;
UPDATE FAMILIA SET ID = 16 WHERE ID = 110;
UPDATE FAMILIA SET ID = 17 WHERE ID = 111;
UPDATE FAMILIA SET ID = 18 WHERE ID = 112;
UPDATE FAMILIA SET ID = 19 WHERE ID = 113;
UPDATE FAMILIA SET ID = 20 WHERE ID = 114;
UPDATE FAMILIA SET ID = 21 WHERE ID = 115;



DELETE FROM FAMILIA WHERE ID = 24;
DELETE FROM FAMILIA WHERE ID = 25;
DELETE FROM FAMILIA WHERE ID = 26;
DELETE FROM FAMILIA WHERE ID = 27;
DELETE FROM FAMILIA WHERE ID = 28;
DELETE FROM FAMILIA WHERE ID = 29;
DELETE FROM FAMILIA WHERE ID = 30;
DELETE FROM FAMILIA WHERE ID = 31;
DELETE FROM FAMILIA WHERE ID = 32;
DELETE FROM FAMILIA WHERE ID = 33;
DELETE FROM FAMILIA WHERE ID = 34;
DELETE FROM FAMILIA WHERE ID = 35;
DELETE FROM FAMILIA WHERE ID = 108;
DELETE FROM FAMILIA WHERE ID = 110;
DELETE FROM FAMILIA WHERE ID = 111;
DELETE FROM FAMILIA WHERE ID = 112;
DELETE FROM FAMILIA WHERE ID = 113;
DELETE FROM FAMILIA WHERE ID = 114;
DELETE FROM FAMILIA WHERE ID = 115;


DELETE FROM FAMILIA WHERE ID = 20;
DELETE FROM FAMILIA WHERE ID = 14;
DELETE FROM FAMILIA WHERE ID = 18;
DELETE FROM FAMILIA WHERE ID = 16;
DELETE FROM FAMILIA WHERE ID = 21;
DELETE FROM FAMILIA WHERE ID = 19;
DELETE FROM FAMILIA WHERE ID = 17;

