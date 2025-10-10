use ABD_03361_EdsonLuiz;

CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    sobrenome VARCHAR(50),
    telefone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE Automovel (
    id_automovel INT PRIMARY KEY AUTO_INCREMENT,
    marca VARCHAR(50),
    modelo VARCHAR(50),
    tipo VARCHAR(50)
);

CREATE TABLE DataLocacao (
    id_datalocacao INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    id_automovel INT,
    datainiciolocacao DATE,
    datafinallocacao DATE,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (id_automovel) REFERENCES Automovel(id_automovel)
);
SELECT * FROM 
INSERT INTO Cliente (nome, sobrenome, telefone, email) VALUES
('João', 'Silva', '11999990001', 'joao.silva@qualquercoisa.com.br'),
('Maria', 'Oliveira', '11999990002', 'maria.oliveira@qualquercoisa.com.br'),
('Carlos', 'Santos', '11999990003', 'carlos.santos@qualquercoisa.com.br'),
('Ana', 'Souza', '11999990004', 'ana.souza@qualquercoisa.com.br'),
('Pedro', 'Costa', '11999990005', 'pedro.costa@qualquercoisa.com.br'),
('Juliana', 'Martins', '11999990006', 'juliana.martins@qualquercoisa.com.br'),
('Lucas', 'Almeida', '11999990007', 'lucas.almeida@qualquercoisa.com.br'),
('Fernanda', 'Ribeiro', '11999990008', 'fernanda.ribeiro@qualquercoisa.com.br'),
('Rafael', 'Lima', '11999990009', 'rafael.lima@qualquercoisa.com.br'),
('Patrícia', 'Barros', '11999990010', 'patricia.barros@qualquercoisa.com.br'),
('Bruno', 'Mendes', '11999990011', 'bruno.mendes@qualquercoisa.com.br'),
('Camila', 'Ferreira', '11999990012', 'camila.ferreira@qualquercoisa.com.br'),
('Thiago', 'Rocha', '11999990013', 'thiago.rocha@qualquercoisa.com.br'),
('Aline', 'Teixeira', '11999990014', 'aline.teixeira@qualquercoisa.com.br'),
('Eduardo', 'Pereira', '11999990015', 'eduardo.pereira@qualquercoisa.com.br');

INSERT INTO Automovel (marca, modelo, tipo) VALUES
('Toyota', 'Corolla', 'Sedan'),
('Honda', 'Civic', 'Sedan'),
('Ford', 'Focus', 'Hatch'),
('Chevrolet', 'Onix', 'Hatch'),
('Volkswagen', 'Golf', 'Hatch'),
('Hyundai', 'HB20', 'Hatch'),
('Renault', 'Duster', 'SUV'),
('Jeep', 'Renegade', 'SUV'),
('Fiat', 'Argo', 'Hatch'),
('Nissan', 'Kicks', 'SUV'),
('Peugeot', '208', 'Hatch'),
('BMW', '320i', 'Sedan'),
('Audi', 'A3', 'Sedan'),
('Mercedes', 'C180', 'Sedan'),
('Kia', 'Sportage', 'SUV');

INSERT INTO DataLocacao (id_cliente, id_automovel, datainiciolocacao, datafinallocacao) VALUES
(8, 7, '2023-06-07', '2023-06-08'),
(5, 8, '2023-11-21', '2023-11-25'),
(5, 1, '2023-03-09', '2023-03-19'),
(13, 6, '2023-02-25', '2023-02-26'),
(2, 10, '2023-06-14', '2023-06-15'),
(9, 4, '2023-02-11', '2023-02-14'),
(9, 3, '2023-12-16', '2023-12-22'),
(12, 2, '2023-05-11', '2023-05-15'),
(14, 5, '2023-11-18', '2023-11-27'),
(10, 7, '2023-11-23', '2023-12-01'),
(10, 15, '2023-02-04', '2023-02-08'),
(12, 3, '2023-05-06', '2023-05-09'),
(8, 6, '2023-04-14', '2023-04-24'),
(4, 14, '2023-09-22', '2023-10-01'),
(13, 15, '2023-11-23', '2023-11-25');


SELECT 
    dl.id_datalocacao,
    c.nome AS nome_cliente,
    c.sobrenome AS sobrenome_cliente,
    a.marca,
    a.modelo,
    a.tipo,
    dl.datainiciolocacao,
    dl.datafinallocacao
FROM DataLocacao dl
JOIN Cliente c ON dl.id_cliente = c.id_cliente
JOIN Automovel a ON dl.id_automovel = a.id_automovel;


