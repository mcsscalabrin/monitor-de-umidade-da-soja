/* BD - Davi Escudero Caproni 
Grupo Soja
*/

create database projeto_umidade_pi;
use projeto_umidade_pi;

create table cadastro (
idCadastro int primary key auto_increment,
nomeCompleto varchar(100),
dtNascimento date,
senha varchar(15),
email varchar(100),
cpf char(11)
);
describe cadastro;

insert into cadastro values
(default, 'Davi Souza Cavalcante', '1940-01-22','davi21312', 'davisouza@gmail.com' , '80018507069'),
(default, 'Maria Fernanda Lima', '1985-07-15','271772@1', 'maria.lima@gmail.com', '81923456789'),
(default, 'Carlos Eduardo Mendes', '1992-03-10', 'cAdU1000', 'carlos.mendes@gmail.com', '82987654321'),
(default, 'Ana Beatriz Rocha', '2000-12-05', 'ritafilha15@111', 'ana.rocha@gmail.com', '83911223344'),
(default, 'Fernando Alves Ribeiro', '1978-09-30', '093078',  'fernando.ribeiro@gmail.com', '84955667788');

select * from cadastro;

truncate table cadastro;

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------
create table sensor (
idSensor int primary key auto_increment,
setor varchar(30),
sensorStatus varchar(20),
constraint chkstatus
check( sensorStatus in ('Ativo', 'Inativo'))
);

describe sensor;

insert into sensor values
(default, 'Setor A', 'Ativo'),
(default, 'Setor B', 'Inativo'),
(default, 'Setor C', 'Ativo'),
(default, 'Setor D', 'Inativo'),
(default, 'Setor E', 'Ativo'),
(default, 'Setor F', 'Inativo');

select * from sensor;

truncate table sensor;

-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------

create table registroSensor (
idSensor int primary key auto_increment,
registroUmidade float,
data_hora datetime
);

describe registroSensor;

insert into registroSensor values
(default, 45.6, '2025-03-13 08:30:00'),
(default, 50.2, '2025-03-13 09:00:00'),
(default, 48.9, '2025-03-13 09:30:00'),
(default, 52.1, '2025-03-13 10:00:00'),
(default, 46.7, '2025-03-13 10:30:00'),
(default, 49.3, '2025-03-13 11:00:00');

select* from registroSensor;

