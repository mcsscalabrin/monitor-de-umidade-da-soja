CREATE DATABASE agrosmart;
USE agrosmart;

-- Criandos tabelas
CREATE TABLE empresa (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
nomeFantasia VARCHAR(45) NOT NULL,
cnpj CHAR(14) NOT NULL,
email VARCHAR(100) NOT NULL
);

CREATE TABLE usuario (
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
email VARCHAR(100),
cpf	CHAR(11),
dtCadastro DATE
);

CREATE TABLE sensor (
idSensor INT PRIMARY KEY AUTO_INCREMENT,
tipo VARCHAR(45),
zona CHAR(10),
statusSensor CHAR(15),
	CONSTRAINT chksensor
		CHECK (statusSensor IN ('Ativo', 'Inativo', 'Manutenção'))
);

CREATE TABLE monitoramento(
instalacao DATE,
ultimaManutencao DATE,
faseAtual VARCHAR(20),
ultimaColeta DATE,
statusCultura DOUBLE,
desinstalacao DATE
);

-- Inserindo dados na tabela empresa
INSERT INTO empresa (nome, nomeFantasia, cnpj, email) VALUES
('AgroTech Ltda', 'AgroTech', '12345678000101', 'contato@agrotech.com'),
('GreenAgro SA', 'GreenAgro', '22345678000102', 'info@greenagro.com'),
('AgroVida LTDA', 'AgroVida', '32345678000103', 'suporte@agrovida.com'),
('PlantTech ME', 'PlantTech', '42345678000104', 'contato@planttech.com'),
('FarmSmart', 'FarmSmart Solutions', '52345678000105', 'hello@farmsmart.com');

-- Inserindo dados na tabela usuario
INSERT INTO usuario (nome, email, cpf, dtCadastro) VALUES
('João Silva', 'joao@email.com', '12345678901', '2024-03-01'),
('Maria Souza', 'maria@email.com', '22345678902', '2024-03-05'),
('Carlos Lima', 'carlos@email.com', '32345678903', '2024-03-10'),
('Ana Oliveira', 'ana@email.com', '42345678904', '2024-03-15'),
('Paulo Santos', 'paulo@email.com', '52345678905', '2024-03-20');

-- Inserindo dados na tabela sensor
INSERT INTO sensor (tipo, zona, statusSensor) VALUES
('Temperatura', 'Zona A', 'Ativo'),
('Umidade', 'Zona B', 'Inativo'),
('pH do Solo', 'Zona C', 'Manutenção'),
('Luminosidade', 'Zona D', 'Ativo'),
('Pressão', 'Zona E', 'Ativo');

-- Inserindo dados na tabela monitoramento
INSERT INTO monitoramento (instalacao, ultimaManutencao, faseAtual, ultimaColeta, statusCultura, desinstalacao) VALUES
('2024-01-10', '2024-02-15', 'Germinação', '2024-03-01', 85.5, NULL),
('2024-02-01', '2024-03-10', 'Crescimento', '2024-03-05', 90.2, NULL),
('2024-02-15', '2024-03-12', 'Maturação', '2024-03-08', 78.9, NULL),
('2024-03-01', '2024-03-14', 'Colheita', '2024-03-12', 95.0, NULL),
('2024-03-05', '2024-03-15', 'Descanso', '2024-03-14', 60.3, NULL);


-- Select's
SELECT * FROM monitoramento WHERE faseAtual LIKE 'Colheita';

SELECT * FROM usuario WHERE nome LIKE 'Carlos%';

SELECT * FROM sensor WHERE statusSensor ='Inativo' AND zona ='Zona B';

SELECT * FROM empresa WHERE nomeFantasia LIKE 'FarmSmart Solutions';