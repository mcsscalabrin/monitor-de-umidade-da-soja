create database Sprint;
use Sprint;
create table login(
IdUsuario int primary key,
nome varchar (45),
cpf char (11),
dataNasc date 
);

use Sprint;
create table Sensor(
IdSensor int primary key,
statusSensor FLOAT
    CONSTRAINT chkstatus CHECK
    (statusSensor BETWEEN 0.00 and 1.00),
Localização varchar (35),
Dados float
);


use Sprint;
create table Dados(
idDados int primary key,
Capturas date,
Informações varchar (35)
);
    