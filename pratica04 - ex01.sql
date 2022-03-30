use sprint2;

create table Professor (
idProfessor int primary key auto_increment,
nome varchar (50),
sobrenome varchar (30),
especialidade1 varchar (40),
especialidade2 varchar (40)
);

insert into Professor values
(null, 'Vivian', 'Souza', 'Lógica', 'Dados'),
(null, 'Leandro', 'Meira', 'Contas', 'Geometria'),
(null, 'Patrick', 'Moreira', 'Animais', null),
(null, 'João', 'Silva', null, 'Portugues'),
(null, 'Vanessa', 'Costa', 'Algoritmo', 'Dados'),
(null, 'Maria', 'Santos', 'Projeto', 'Lógica');

create table Disciplina (
idDisc int primary key auto_increment,
nomeDisc varchar (45),
fk_Professor int, -- adicionando o campo chave estrangeira
foreign key (fk_Professor) references Professor(idProfessor) -- referenciado a chave estrangeira
);

insert into Disciplina values
(null, 'Matemática', 3),
(null, 'Banco de Dados', 4),
(null, 'Biologia', 5),
(null, 'Geografia', 1),
(null, 'Fisica', 2);

select * from Disciplina;

-- Exibir os professores e suas respectivas disciplinas;
select nome, nomeDisc from Professor
	join Disciplina on Professor.idProfessor= Disciplina.fk_Professor;
    
-- Exibir os professores e suas respectivas disciplinas;
select * from Professor
	join Disciplina on Professor.idProfessor = Disciplina.fk_Professor;
    
select * from Professor join Disciplina 
on Professor.idProfessor = Disciplina.fk_Professor;
    
select * from Professor right
	join Disciplina on Professor.idProfessor = Disciplina.fk_Professor;

    
-- Exibir os professores e suas respectivas disciplinas com apelido;
select nome as 'Nome Professor', nomeDisc as 'Disciplina' from Professor as p
join Disciplina as d on p.idProfessor= d.fk_Professor;


-- Exibir apenas o nome da disciplina e o nome do respectivo professor;
select d.nomeDisc, p.nome from Professor as p
	join Disciplina as d on p.idProfessor = d.fk_Professor
    where p.nome = 'Leandro';
    
    
-- Exibir os dados dos professores, suas respectivas disciplinas de um determinado sobrenome;
select * from Professor as p
	join  Disciplina as d on d.idDisc = p.fk_Disciplina
    where p.sobrenome = 'Souza';
    
-- Exibir apenas a especialidade1 e o nome da disciplina, de um determinado (Vanessa)
			-- professor, ordenado de forma crescente pela especialidade1;
select p.especialidade1, d.nomeDisc, nome from Professor as p
	join Disciplina as d on p.idProfessor = d.fk_Professor
    where p.idProfessor = 1 or p.idProfessor = 3 order by especialidade1;
