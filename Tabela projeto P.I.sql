create database Projeto_PI;
use Projeto_PI;

-- TABELA 1 - DADOS DO CLIENTE
create table dadoscliente (
idCliente int primary key auto_increment,
nome varchar(50),
email varchar(50),
telefone varchar(50),
cidade varchar(50),
fkSensor int,
foreign key (fkSensor) references dadosSensor(idsensor)
);

insert into dadoscliente values
(null, "Centauro", "centauro@gmail.com", 1100023012, "São Paulo", 100),
(null,"Decathlon", "decathlon@gmail.com", 2100124142, "Rio de Janeiro", 101),
(null, "Nike", "nike@hotmail.com", 124412911, "Fortaleza", 102),
(null, "Bayard", "bayard@hotmail.com", 0231418423, "Curitiba", 101),
(null, "Adidas","adidas@gmail.com", 3492194145, "São Paulo", 100);

-- REGRA DE NEGÓCIO:
	-- 1 cliente só tem 1 sensor
	-- 1 sensor pode ter 1 ou vários clientes

-- TABELA 2 - DADOS DO SENSOR
create table dadosSensor (
idsensor int primary key auto_increment,
sinal char(1),
constraint chkSinal check
	(sinal = 1 or sinal = 0),
dthora datetime default current_timestamp
) auto_increment = 100;

insert into dadosSensor (sinal) values
(1);
insert into dadosSensor (sinal) values
(1);
insert into dadosSensor (sinal) values
(0);

select * from dadosSensor;
select * from dadoscliente
	join dadosSensor on dadoscliente.fkSensor = dadosSensor.idsensor;
 