-- CRIAR BANCO DE DADOS CHAMADO REVISAO
create database Revisao;
-- SELECIONAR O BANCO DE DADOS
use Revisao;
-- CRIAR TABELA midia
create table midia (
idMidia int primary key auto_increment,
nome varchar(100),
tamanho double NOT NULL, 								-- NOT NULL = o campo tamanho não pode ser null (=estar vazio)
dtMidia datetime default current_timestamp, 			-- DEFAULT = se não colocar nada na data (se deixar vazio), ele vai colocar o que eu definir logo após dele; 
														-- current_timestamp = coloca a data e hora do meu computador (sistema)
                                                        
preco decimal (5,2) default 1.99, 						-- total de 5 numeros, 2 numeros depois da virgula		
															-- 1.99 vai ser o preço, caso o campo não tenha valor
tipo varchar (50),
constraint chkTipo check   -- constra int = restrição, falando que o campo tipo só pode ser audio, video ou imagem
							-- chkTipo é o nome da restrição
                            -- chec vai conferir se a restrição esta certa
(tipo = 'audio' or tipo = 'video' or tipo = 'imagem')

) auto_increment=100; -- esse autoincrement começa com o 100

-- INSERIR DADOS NA TABELA MIDIA
-- O COMANDO ABAIXO VAI DAR ERRO
insert into midia (nome, tamanho, tipo) values
('foto antiga', 100.99, 'filme');
-- Check constraint 'chTipo' is violated = pq eu coloquei em cima no constraint chTipo check que a coluna Tipo
-- só poderia aceitar audio, video ou imagem, e eu inseri filme, por isso deu errado

-- EXCLUIR A CONSTRAINT check 
alter table midia DROP CHECK chkTipo;
-- agora pode inserir o insert acima (que tem o 'filme'), pq eu exclui a constraint chktipo da minha tabela

-- ADICIONAR CHECK NOVAMENTE
alter table midia add check (tipo = 'audio' or tipo = 'video'); -- no campo tipo só pode 'audio' ou 'video'
-- check constraint 'midia_chk_1' is violated -> erro que aparece

-- DESCREVER A ESTRUTURA DA TABELA
desc midia;

-- INSERIR DADOS AGORA QUE FUNCIONA
insert into midia (nome, tamanho, tipo) values
('video antigo', 100.99, 'video'),
('audio novo', 99, 'audio');

select * from midia;

-- questao 3 da prova
-- adicionar um campo chamado localização tamanho (120)
-- e atualizar o campo localização nos dados já inseridos

alter table midia add localizaçao varchar(120);
desc midia;


update midia set localizaçao = 'consolaçao' where idMidia in (100, 101);
select * from midia;
select nome, preco from midia;

select * from midia where nome = 'video antigo';
select * from midia where preco = 1.99;

select * from midia order by nome;
select * from midia order by nome desc;

select * from midia where nome like 'a%';
select * from midia where nome like '%o';
select * from midia where nome like '_u%';
select * from midia where nome like '%v_';
-- EXIBIR OS NOMES QUE TEM A LETRA D
select * from midia where nome like '%d%';

-- UPDATE NOMEDATABELA SET NOMEDOCAMPOATUALIZADO = DADOATUALIZADO 
			-- WHERE CHAVEPRIMÁRIA = NUMEROINTEIRO;
            
delete from midia where idMidia = 100;
select * from midia;

-- questão 5
-- modificar o campo localização para o tamanho 80
alter table midia modify column localizaçao varchar (80);
desc midia;

alter table midia rename column nome to nomeMidia;
desc midia;





