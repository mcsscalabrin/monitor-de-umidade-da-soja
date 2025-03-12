CREATE DATABASE projeto_umidade;
USE projeto_umidade;
CREATE TABLE cadastro(
idCadastro INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (100),
dtNasc DATE,
email VARCHAR(100),
cnpj CHAR(14) 
);

CREATE TABLE sensor(
idSensor INT PRIMARY KEY AUTO_INCREMENT,
localizacao VARCHAR (30),
statusSensor FLOAT CONSTRAINT chkstatus CHECK
(statusSensor BETWEEN 0.00 and 1.00),
capturas FLOAT
);

CREATE TABLE registro(
idRegistro INT PRIMARY KEY AUTO_INCREMENT,
umidade_atual FLOAT,
dtRegistro DATETIME);

SELECT * FROM registro WHERE umidade_atual < 0.30;
SELECT * FROM registro WHERE umidade_atual > 0.30;
