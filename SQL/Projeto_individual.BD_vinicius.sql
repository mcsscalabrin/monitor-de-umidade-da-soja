create database projetoBD_individual;

use projetoBD_individual;

create table cadastro(
    idCadastro INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR (100),
    dtNasc DATE,
    email VARCHAR(100),
    cnpj CHAR(14), 
    telefone varchar(16)
);

insert into cadastro values
    (default,'João Silva', '1985-03-15', 'joao.silva@agrosoja.com', '00123456000199',11985763456),
    (default,'Maria Oliveira', '1990-07-22', 'maria.oliveira@agrosoja.com', '00123456000199','11946732435'),
    (default,'Carlos Souza', '1978-11-05', 'carlos.souza@agrosoja.com', '00123456000199','11923225463'),
    (default,'Ana Pereira', '1995-02-18', 'ana.pereira@agrosoja.com', '00123456000199','11911234565'),
    (default,'Pedro Costa', '1982-09-30', 'pedro.costa@agrosoja.com', '00123456000199','11934742535'),
    (default,'Fernanda Lima', '1993-12-12', 'fernanda.lima@agrosoja.com', '00123456000199','11982723563');

select Nome as 'Nome' , dtNasc as "Data de Nascimento" from cadastro;

create table sensor(
    idSensor int primary key auto_increment,
    localizacao varchar(30),
    umidade float
    constraint chkUmidade check
    (umidade between 0.00 and 1.00),
    capturas float,
    statusSensor varchar(10)
    constraint chkstatus check
    (statusSensor in ('ativo','inativo'))
    );

-- INSERT FICTÍCIO PARA A TABELA "SENSOR"
insert into sensor values
    (default,'Talhão A1', 0.95, 150.5,'ativo'),
    (default,'Setor B3', 0.85, 230.0,'ativo'),
    (default,'Norte Fazenda', 0.90, 180.75,'ativo'),
    (default,'Sul Fazenda', 0.78, 420.25,'ativo'),
    (default,'Talhão C2', 0.99, 95.0,'ativo'),
    (default,'Reserva D4', 0.82, 310.5,'ativo');

select idSensor as 'ID',localizacao as 'Local',umidade as 'Umidade do sensor' ,  statusSensor as 'Status do sensor' from sensor;

create table registro(
    idRegistro int primary key auto_increment,
    umidade_atual float,
    dtRegistro datetime,
    localizacao varchar(30)
);

-- INSERT FICTÍCIO PARA A TABELA "REGISTRO"
insert into registro values
    (default,0.15, '2023-11-10 08:00:00','Area 6'),
    (default,0.45, '2023-11-10 12:30:00','Area 7'),
    (default,0.28, '2023-11-10 15:45:00','Area 8'),
    (default,0.32, '2023-11-11 09:15:00','Area 9'),
    (default,0.25, '2023-11-11 14:00:00','Area 10'),
    (default,0.38, '2023-11-12 10:20:00','Area 11');

select idRegistro as 'ID', umidade_atual as 'Umidade', dtRegistro as 'Data e Hora', localizacao as 'Localização' from registro;
