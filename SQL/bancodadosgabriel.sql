CREATE DATABASE agro_smart;
USE agro_smart;
CREATE TABLE cadastro(
    idCadastro INT PRIMARY KEY AUTO_INCREMENT,
    nomeCompleto VARCHAR (100),
    dtNasc DATE,
    email VARCHAR(100),
    cnpj CHAR(14),
    senha VARCHAR (10)
    );

    INSERT INTO cadastro (nomeCompleto, dtNasc, email, cnpj, senha) VALUES
    ('Gabriely Nogueira', '2009-10-16', 'gaby.nogueira@gmail.com', '44598015733807', 'aswd123'),
    ('Pablo Faustino', '1992-08-17', 'pablo.faustino@gmail.com', '09456732412185', 'ubdeda837'),
    ('Fhelype Augusto', '1977-04-04', 'fhelype.augusto@gmail.com', '42679403122576', 'djiji93w'),
    ('Gustavo Martins', '1984-12-01', 'gustavo.martins@gmail.com', '11959005724254', 'nwsub273'),
    ('Rayssa Rocha', '1999-01-13', 'rayssa.rocha@gmail.com', '23841892052187', 'jnswdu22'),
    ('Nathalie Cardoso', '2000-01-20', 'nathcads@gmail.com', '05355160780422', 'hwuw2221');

SELECT * FROM cadastro;

CREATE TABLE sensor (
idSensor INT PRIMARY KEY AUTO_INCREMENT,
setor VARCHAR(30),
sensorStatus VARCHAR(20),
CONSTRAINT chkstatus CHECK
( sensorStatus in ('Ativo', 'Inativo'))
);

    INSERT INTO sensor VALUES
    (DEFAULT, 'Setor B', 'Ativo'),
    (DEFAULT, 'Setor H', 'Inativo'),
    (DEFAULT, 'Setor S', 'Ativo'),
    (DEFAULT, 'Setor N', 'Inativo'),
    (DEFAULT, 'Setor Z', 'Ativo'),
    (DEFAULT, 'Setor X', 'Inativo');

SELECT * FROM sensor;

CREATE TABLE dados(
    idDados INT PRIMARY KEY AUTO_INCREMENT,
    dtDados DATETIME,
    umidade_atual FLOAT
);

INSERT INTO dados (dtDados, umidade_atual) VALUES
    ('2024-11-28 11:09:49','0.29'),
    ('2024-12-16 19:56:43','0.12'),
    ('2025-01-19 16:30:23','0.33'),
    ('2025-11-08 20:21:19','0.54'),
    ('2025-02-12 22:58:01','0.78'),
    ('2025-03-13 06:31:34','0.99');

SELECT * FROM dados;