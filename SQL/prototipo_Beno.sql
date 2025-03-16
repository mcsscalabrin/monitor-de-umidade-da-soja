CREATE DATABASE sprint01;
USE sprint01;

CREATE TABLE cadastro (
    idCad INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(100) UNIQUE,
    usuario VARCHAR(50),
    data_nascimento DATE,
    senha VARCHAR(40),
    cpf CHAR(11) UNIQUE
);

INSERT INTO cadastro (email, usuario, data_nascimento, senha, cpf) VALUES
    ('raul.seixas@maluco.com', 'Raul Seixas', '1945-06-28', 'tocaRaul', '12345678901'),
    ('cazuza@barão.com', 'Cazuza', '1958-04-04', 'exagerado', '23456789012'),
    ('renato.russo@legiao.com', 'Renato Russo', '1960-03-27', 'tempoPerdido', '34567890123'),
    ('pitty@pitty.com', 'Pitty', '1977-10-07', 'equalize', '45678901234'),
    ('humberto.gessinger@engenheiros.com', 'Humberto Gessinger', '1963-12-24', 'somosQuemPodemosSer', '56789012345');

SELECT usuario AS Nome FROM cadastro;

-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE sensor (
    id INT PRIMARY KEY AUTO_INCREMENT,
    localizacao VARCHAR(40),
    dado FLOAT,
    CONSTRAINT chkDado CHECK (dado BETWEEN 0.00 AND 100.00)
);

INSERT INTO sensor (localizacao, dado) VALUES
    ('Pavilhão A1', 13.46),
    ('Setor A4', 12.98),
    ('Setor C5', 13.87),
    ('Bloco D2', 13.67),
    ('Reserva B1', 13.08);

SELECT id AS SENSOR FROM sensor WHERE localizacao LIKE '%Setor%';

-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------

CREATE TABLE registro (
    id INT PRIMARY KEY AUTO_INCREMENT,
    localizacao VARCHAR(40),
    dado FLOAT,
    data_hora DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO registro (localizacao, dado) VALUES
    ('Bloco D4', 30.27),
    ('Setor B1', 34.25),
    ('Area C1', 35.55),
    ('Pavilhão B2', 14.67),
    ('Talhão B2', 13.25);

SELECT id AS ID FROM registro WHERE localizacao LIKE '%Bloco%';

-- Matheus Chiosini Scalabrin, Bryan Anthony, Pedro Sakaue, João Pedro França, Vinícius Melo, David Escudeiro, Lukas Farias, Beno Goulart, Renan Daher Franceschelli
