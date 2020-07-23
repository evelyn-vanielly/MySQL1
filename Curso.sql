create database db_CursoDaMinhaVida

use db_CursoDaMinhaVida

create table db_categoria
(
ID bigint auto_increment,
Curso varchar (20),
Alunos bigint (3),
Primary key (ID)
)

use db_CursoDaMinhaVida

create table db_curso
(ID2 bigint auto_increment,
Nome varchar (100),
Idade bigint (2),
Turma bigint not null,
Mensalidade decimal (5),
Primary key (ID2),
Foreign key (Turma) references db_categoria (ID)
)

insert into db_categoria (Curso, Alunos) values ("Programação Java", 50)
insert into db_categoria (Curso, Alunos) values ("Banco de dados", 50)
insert into db_categoria (Curso, Alunos) values ("POO", 25)
insert into db_categoria (Curso, Alunos) values ("Lógica", 100)
insert into db_categoria (Curso, Alunos) values ("Docker", 15)

select * from db_categoria
select * from db_curso

alter table db_curso
modify column Mensalidade BOOLEAN;

insert into db_curso (Nome, Idade, Turma, Mensalidade) values ("Selena Gomez", 32, 1, true)
insert into db_curso (Nome, Idade, Turma, Mensalidade) values ("Miley Cyrus", 25, 2, false)
insert into db_curso (Nome, Idade, Turma, Mensalidade) values ("Sandy", 32, 3, true)
insert into db_curso (Nome, Idade, Turma, Mensalidade) values ("Lady Gaga", 32, 4, false)
insert into db_curso (Nome, Idade, Turma, Mensalidade) values ("Madonna", 65, 5, false)
insert into db_curso (Nome, Idade, Turma, Mensalidade) values ("Ariana Grande", 22, 1, true)
insert into db_curso (Nome, Idade, Turma, Mensalidade) values ("Gwen Stefani", 51, 2, false)
insert into db_curso (Nome, Idade, Turma, Mensalidade) values ("P!nk", 32, 3, true)

select * from db_curso

select * from db_curso where Idade >50

select * from db_curso where Idade between 10 and 50

select * from db_curso where Nome like "%J%"

select * from db_curso
inner join db_categoria on Turma = ID

select * from db_curso
inner join db_categoria on Turma = ID where Alunos = 50

