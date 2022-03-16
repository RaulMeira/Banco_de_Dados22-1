create database Sprint2;
use Sprint2;

create table Atleta (
idAtleta int primary key auto_increment,
nome varchar (40),
modalidade varchar (40),
qtdMedalha int
);
select * from Atleta;

insert into Atleta values
(null, 'raul', 'futebol', 5),
(null, 'luan', 'baquete', 3),
(null, 'ale', 'futebol', 9),
(null, 'lendro', 'baquete', 5),
(null, 'diogo', 'handebol', 10),
(null, 'gui', 'futebol', 8),

• Inserir dados na tabela, procurando colocar mais de um atleta para cada
modalidade e pelo menos 5 atletas.
• Criar uma tabela chamada País para conter os dados: idPais (int e chave primária
da tabela), nome (varchar, tamanho 30), capital (varchar, tamanho 40);
• Inserir pelo menos 4 países na tabela país.
Fazer a modelagem lógica conforme a regra de negócio:
• 1 país tem 1 ou muitos atletas;
• 1 atleta é de 1 e somente 1 país;
Escreva e execute os comandos para:
• Criar a chave estrangeira na tabela correspondente conforme modelagem;
• Atualizar o país de todos os atletas;
• Exibir os atletas e seu respectivo país;
• Exibir apenas o nome do atleta e o nome do respectivo país;
• Exibir os dados dos atletas, seus respectivos países, de uma determinada capital;