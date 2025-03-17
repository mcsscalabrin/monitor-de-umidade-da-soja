create database dados_umidade;
use dados_umidade;

create table cadastro(
idCadastro int primary key auto_increment,
nome varchar(45),
email varchar(60),
cpf char(14),
senha varchar(60)
);

-- Exemplos ficticios de dados de clientes para realizaro cadastro 
insert into cadastro (nome,email,cpf,senha) values 
('Jose Alves','josealves12@gmail.com','12356781920','Josezinho#1984'),
('Maria Eduarda','maria_eduarda1@gmail.com','45987326519','Familiaetudo10'),
('Aline dos Santos','alinesantos90@gmail.com','76598431651','AlineSantos@11');

select*from cadastro;
select nome as Nome, email as 'E-mail' from cadastro;


-- criação da tabela do sensores 
create table sensor(
idSensor int primary key auto_increment,
localizacaoSensor varchar(45),
statusSensor varchar(10)
constraint chk_statusSensor check (statusSensor in ('inativo','ativo')),
capturasSensor float);

insert into sensor (localizacaoSensor,capturasSensor, statusSensor) values 
('setor 11C','0.95','ativo'),
('setor 7A','0.14','ativo'),
('area 201','0.10','ativo');

select*from sensor;
select concat ('Sensor na área ', localizacaoSensor, ' está ',statusSensor) as Sensores from sensor;



-- criação da tabela dos registros 
create table registro(
idRegistro int primary key auto_increment,
dtRegistro datetime,
localizacaoRegistro varchar(45),
PeriodoSoja varchar(45),
umidadeAtual float,
statusLocalizacao varchar(10)
constraint chk_statusLocalizacao check (statusLocalizacao in ('seco','ideal','humido')));

insert into registro (dtRegistro,localizacaoRegistro,PeriodoSoja,umidadeAtual,statusLocalizacao)values
('2025-01-11 08:35:10','setor 11C','Preparação do solo','0.95','humido'),
('2025-02-05 10:40:04','setor 7A','colheita','0.14','ideal'),
('2025-03-09 06:09:12','area 201','plantio','0.10','seco');


select idRegistro as 'ID',dtRegistro as 'Data', localizacaoRegistro as 'Localização', PeriodoSoja as 'Periodo da soja',
umidadeAtual as 'Umidade',statusLocalizacao as 'Status' from registro;

select dtRegistro as 'Data do registro', localizacaoRegistro as 'Localização',statusLocalizacao as 
'Status da localização' from registro; 

SELECT concat('Em ', dtRegistro,' o solo estava ', statusLocalizacao) 
as 'Datas do status do solo' FROM registro;







