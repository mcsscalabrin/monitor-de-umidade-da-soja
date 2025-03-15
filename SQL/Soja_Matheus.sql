CREATE DATABASE soja_db;
USE soja_db;

CREATE TABLE cadastro(
idUser INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (100),
dtNasc DATE,
email VARCHAR(100),
cpf CHAR(11) 
);

INSERT INTO cadastro (nome, dtNasc, email, cpf) VALUES
('Luiza Rodrigues', '1996-05-02', 'luiza.rodrigues@gmail.com', '00123456789'),
('Ariel Carvalho', '1999-10-30', 'ariel.carvalho@gnail.com', '00123456689'),
('Joao Soares', '2000-02-27', 'joao.soares@gmail.com', '00123456788'),
('Luana Honda', '2003-08-06', 'luana.honda@gmail.com', '00123456099'),
('Laura Costa', '2000-07-22', 'laura.costa@gmail.com', '00123456087'),
('Bruno Armani', '2007-02-16', 'bruno.armani@gmail.com', '00123456095');

SELECT nome AS Nome, dtNasc AS 'Data de Nascimento' 
FROM cadastro;

CREATE TABLE sensor(
idSensor INT PRIMARY KEY AUTO_INCREMENT,
localizacao VARCHAR(30),
statusSensor FLOAT
CONSTRAINT chkStatus CHECK
(statusSensor BETWEEN 0.00 and 1.00)
);

INSERT INTO sensor (localizacao, statusSensor) VALUES
('Setor A1', 0.32),
('Setor A2', 0.22),
('Setor A3', 0.56),
('Setor A4', 0.41),
('Setor A6', 0.39),
('Setor A7', 0.58);

SELECT idSensor AS ID, localizacao AS Local, statusSensor AS 'Status' 
FROM sensor;

CREATE TABLE registro(
idRegistro INT PRIMARY KEY AUTO_INCREMENT,
umidade_atual FLOAT,
dtRegistro DATETIME
);

INSERT INTO registro (umidade_atual, dtRegistro) VALUES
(0.43, '2025-05-15 07:00:00'),
(0.40, '2025-05-15 09:20:00'),
(0.36, '2025-05-15 12:30:00'),
(0.41, '2025-05-15 12:50:00'),
(0.30, '2025-05-15 17:10:00'),
(0.31, '2025-05-15 19:40:00');

SELECT idRegistro AS ID, umidade_atual AS Umidade, dtRegistro AS 'Data e Hora do Registro'
FROM registro;

-- Matheus Chiosini Scalabrin, Bryan Anthony, Pedro Sakaue, João Pedro França, Vinícius Melo, David Escudeiro, Lukas Farias, Beno Goulart, Renan Daher Franceschelli
