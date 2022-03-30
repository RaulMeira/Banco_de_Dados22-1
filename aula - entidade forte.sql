create database funcionario;
use funcionario;

-- criar a tabela
create table funcionario (
idFunc int primary key auto_increment,
nomeFunc varchar(45),
salario decimal (10,2), check (salario > 0),
genero char(1), check (genero = 'f' or genero = 'm')
);

insert into funcionario values
(null, 'Franklin', 1.99, 'm'),
(null, 'João', 1.98, 'm'),
(null, 'Maria', 1.98, 'f');

-- criar a tabela dependente
create table dependente (
idDep int,
nomeDep varchar (45),
dtNasc date,
fkFunc int, 
primary key (idDep, fkFunc),
foreign key (fkFunc) references funcionario(idFunc)
);

insert into dependente values
(1, 'Laura', '2000-10-13', 1),
(2, 'Lauro', '1999-10-13', 1),
(1, 'Joana', '1995-10-13', 2),
(1, 'Mario', '1998-10-13', 3);

select idDep, fkFunc, nomeDep, dtNasc
	from dependente order by fkFunc;

select * from funcionario join dependente
	on idFunc = fkFunc;

insert into funcionario values
(null, 'Vivian', 0.99, 'f');

select * from funcionario join dependente
	on idFunc = fkFunc; -- mostra todos os funcionarios que tem dependente, sem a vivian

select * from funcionario left join dependente
	on idFunc = fkFunc where fkFunc is null; -- só vai aparecer o da vivian, pq não tem dependente
												-- ou seja
										        -- where fkFunc is null = onde não tem fkFunc
                                                -- mostra o funcionario que não tem dependente no caso
                                                
select * from funcionario left join dependente
	on idFunc = fkFunc; -- aparece TODOS os funcionarios, ate a vivian por causa do left
    
alter table funcionario add column fkSupervisor int,
	add foreign key (fkSupervisor) references funcionario (idFunc);
    
update funcionario set fkSupervisor = 1 where idFunc in (2,3); --  O supervisor 1 supervisiona os funcionários 2 e 3

select * from funcionario;

select * from funcionario -- chamou a tabela 2 vezes
	join funcionario as supervisor -- apelido para dividir a tabela em 2 (como funcionario e como supervisor)
	on	supervisor.idFunc = funcionario.fkSupervisor; -- 

