create database faculdade;
use faculdade;

create table Sala ( -- criar primeiro a tabela sala pq ela não depende da tabela notebook
idSala int primary key auto_increment,
lado varchar (45),
andar varchar (45)
);

insert into Sala values
(null, 'A', '4'),
(null, 'B', '3'),
(null, 'C', '6');

create table Notebook (
idNotebook int primary key auto_increment,
faculdade varchar (45),
unidade varchar (45),
patrimonio varchar (45),
so1 varchar (45),
so2 varchar (45)
);

insert into Notebook values
(null, 'sptech','haddock','2202','windows','linux'),
(null, 'sptech','haddock','2100','mac OS','windows'),
(null, 'sptech','haddock','2205','ubuntu','mac OS'),
(null, 'sptech','haddock','2030','windows','mac OS'),
(null, 'sptech','haddock','2103','linux','windows');

alter table Notebook add column fk_Sala int;
alter table Notebook add foreign key (fk_Sala)
	references Sala.idSala;
    
select * from Notebook;

update  Notebook set fk_sala = 1 where idNotebook = 1;
update  Notebook set fk_sala = 2 where idNotebook = 2; 
update  Notebook set fk_sala = 2 where idNotebook = 3; 
update  Notebook set fk_sala = 1 where idNotebook = 4; 
update  Notebook set fk_sala = 3 where idNotebook = 5;

select * from Notebook;

select * from Notebook 
	join Sala on Sala.idSala = Notebook.fk_sala;
    
select andar, lado from Sala;

select concat(andar,lado) from Sala; -- concatenar (=juntar) os dois em parenteses

-- aliases = apelido 
select concat(andar,lado) as NomeSala from sala; -- ao inves de aparecer no select o "concat(andar,lado)"
													-- aparece o nome que eu dei a cima -> NomeSala

select * from Notebook as note -- apelido do notebook virou "note",
								-- o apelido só fica no comando
