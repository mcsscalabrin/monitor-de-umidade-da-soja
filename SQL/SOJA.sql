CREATE DATABASE projeto_umidade;
USE projeto_umidade;
CREATE TABLE cadastro(
    idCadastro INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (100),
    dtNasc DATE,
    email VARCHAR(100),
    cpf CHAR(11) 
);

-- INSERT FICTÍCIO PARA A TABELA "CADASTRO"
INSERT INTO cadastro (nome, dtNasc, email, cpf) VALUES
    ('João Silva', '1985-03-15', 'joao.silva@agrosoja.com', '00123456000'),
    ('Maria Oliveira', '1990-07-22', 'maria.oliveira@agrosoja.com', '00123456000'),
    ('Carlos Souza', '1978-11-05', 'carlos.souza@agrosoja.com', '00123456000'),
    ('Ana Pereira', '1995-02-18', 'ana.pereira@agrosoja.com', '00123456000'),
    ('Pedro Costa', '1982-09-30', 'pedro.costa@agrosoja.com', '00123456000'),
    ('Fernanda Lima', '1993-12-12', 'fernanda.lima@agrosoja.com', '00123456000');

SELECT nome AS Nome, dtNasc AS 'Data Nascimento' 
FROM cadastro;

CREATE TABLE sensor(
    idSensor INT PRIMARY KEY AUTO_INCREMENT,
    localizacao VARCHAR (30),
    statusSensor FLOAT
    CONSTRAINT chkstatus CHECK
    (statusSensor BETWEEN 0.00 and 1.00),
    capturas FLOAT
);

-- INSERT FICTÍCIO PARA A TABELA "SENSOR"
INSERT INTO sensor (localizacao, statusSensor, capturas) VALUES
    ('Talhão A1', 0.85, 150.5),
    ('Setor B3', 0.85, 230.0),
    ('Norte Fazenda', 0.82, 180.75),
    ('Sul Fazenda', 0.78, 420.25),
    ('Talhão C2', 0.75, 95.0),
    ('Reserva D4', 0.82, 310.5);

SELECT idSensor AS ID, localizacao AS Local, statusSensor AS 'Status' 
FROM sensor;

CREATE TABLE registro(
    idRegistro INT PRIMARY KEY AUTO_INCREMENT,
    umidade_atual FLOAT,
    dtRegistro DATETIME
);

-- INSERT FICTÍCIO PARA A TABELA "REGISTRO"
INSERT INTO registro (umidade_atual, dtRegistro) VALUES
    (0.15, '2023-11-10 08:00:00'),
    (0.45, '2023-11-10 12:30:00'),
    (0.28, '2023-11-10 15:45:00'),
    (0.32, '2023-11-11 09:15:00'),
    (0.25, '2023-11-11 14:00:00'),
    (0.38, '2023-11-12 10:20:00');

SELECT idRegistro AS ID, umidade_atual AS Umidade, dtRegistro AS 'Data e Hora'
FROM registro;