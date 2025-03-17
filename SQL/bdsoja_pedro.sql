CREATE DATABASE soja;
USE soja;

CREATE TABLE cadastro(
idCadastro INT PRIMARY KEY auto_increment,
email VARCHAR(100),
usuario VARCHAR(30),
dtNasc DATE,
senha VARCHAR(40),
cpf CHAR(11)
);

INSERT INTO cadastro (email, usuario, dtNasc, senha, cpf) VALUES
	('isabellapereira@hotmail.com', 'Isabella Pereira', '1994-03-18', 'isa1803', '00112233445'),
	('thomasyuzo@gmail.com', 'Thomas Yuzo', '1996-11-14', 'homem-aranha', '01234567891'),
    ('lucasbrites@agrosoja.com', 'Lucas Brites', '1992-01-09', 'Brites920109', '12345678910'),
    ('fernandatorres@gmail.com', 'Fernanda Torres', '1965-09-15', 'Torres1509', '11111111111'),
    ('timotheechalamet@gmail.com', 'Timothee Chalamet', '1995-12-27', 'liltimmy', '00000000000');
    
SELECT usuario AS Nome FROM cadastro
	where email LIKE '%gmail.com';
    
    
CREATE TABLE sensor(
idSensor INT PRIMARY KEY auto_increment,
localizacao VARCHAR(40),
dadoSensor FLOAT
CONSTRAINT chkDado CHECK (dadoSensor BETWEEN 0.00 and 100.00)
);

INSERT INTO sensor (localizacao, dadoSensor) VALUES
	('Pavilhão A1', 13.46),
    ('Setor A4', 12.98),
    ('Setor C5', 13.87),
    ('Talhão D2', 13.67),
    ('Reserva B1', 13.08);
    
SELECT idSensor AS SENSOR FROM sensor 
	WHERE localizacao LIKE 'Setor%';
    
CREATE TABLE registro(
idRegistro INT PRIMARY KEY auto_increment,
localizacao VARCHAR(40),
registroDado FLOAT,
dtRegistro DATETIME
);

INSERT INTO registro (localizacao, registroDado, dtRegistro) VALUES
	('Talhão D4', 30.27, default),
    ('Setor ', 34.25, default),
    ('Pavilhão C1', 35.55, default),
    ('Pavilhão B2', 14.67, default),
    ('Talhão B2', 13.25, default);
    
SELECT idRegistro AS ID FROM registro
	WHERE localizacao LIKE 'Talhão%';
    

    
    



