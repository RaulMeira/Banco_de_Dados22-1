-- Fazer a modelagem lógica (DER) de um sistema para um pet shop cadastrar os pets e seus donos (clientes).
-- Regra de negócio:
	-- Cada pet pertence somente a um cliente.
    -- Cada cliente pode ter mais de um pet cadastrado.
use sprint2;

create table cliente (
idCliente int auto_increment,
nome varchar (45),
sobrenome varchar (45),
telefone_fixo varchar (45),
telefone_celular varchar (45),
CEP char (9),
Número int
);

create table pet (
idPet int auto_increment,
tipo varchar (45),
nomePet varchar(45),
raça varchar (50),
dtNasc date,
fkCliente int, foreign key(fkCliente) references cliente(idCliente)
) auto_increment = 100;

insert into pet values
(null, 'cachorro', 'Pitbull','Rex', 

insert into cliente values 
(null, 'Vivian', 'Meira', 1159355236, null, '04822-180', 202), 
(null, 'Raul', 'Meira', 1180906262, 11987623134, '08233-140', 400), 
(null, 'Otavio', 'Augusto', null, 11984745466, '04166-198', 202), 
(null, 'Luizão', 'Souza', 1159355236, null, '04855-151', 152);

- Inserir dados nas tabelas, de forma que exista mais de um tipo de animal diferente,
e que exista algum cliente com mais de um pet cadastrado. Procure inserir pelo
menos 2 clientes diferentes que tenham o mesmo sobrenome.
- Exibir todos os dados de cada tabela criada, separadamente.
- Fazer os acertos da chave estrangeira, caso não tenha feito no momento da
criação.
- Altere o tamanho da coluna nome do cliente.
- Exibir os dados de todos os pets que são de um determinado tipo (por exemplo:
cachorro).
- Exibir apenas os nomes e as datas de nascimento dos pets.
- Exibir os dados dos pets ordenados em ordem crescente pelo nome.
- Exibir os dados dos clientes ordenados em ordem decrescente pelo bairro.
- Exibir os dados dos pets cujo nome comece com uma determinada letra.
- Exibir os dados dos clientes que têm o mesmo sobrenome.
- Alterar o telefone de um determinado cliente.
- Exibir os dados dos clientes para verificar se alterou.
- Exibir os dados dos pets e dos seus respectivos donos.
- Exibir os dados dos pets e dos seus respectivos donos, mas somente de um
determinado cliente.
- Excluir algum pet.
- Exibir os dados dos pets para verificar se excluiu.
- Excluir as tabelas./