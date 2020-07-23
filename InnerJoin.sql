create database db_RH2
use db_RH2

create table db_cargo
(ID bigint auto_increment,
Cargo varchar (20),
Setor varchar (20),
primary key (ID)
)

create table db_funcionário
(ID2 bigint auto_increment,
Nome varchar (20),
Sobrenome varchar (20),
Salário decimal (10,2),
n_id bigint not null,
Primary key (ID2),
foreign key (n_id) references db_cargo (ID)
)

insert into db_cargo (Cargo, Setor) values ("Operador", "Serviços") 
insert into db_cargo (Cargo Setor) values ("Eletricista", "Serviços") 
insert into db_cargo (Cargo, Setor) values ("Diarista", "Serviços") 
insert into db_cargo (Cargo, Setor) values ("Porteiro", "Segurança"
insert into db_cargo (Cargo, Setor) values ("Vigilante", "Segurança")  

insert into db_funcionário (Nome, Sobrenome, Salário, n_id) Values ("Roberto", "Lopes", 1500.00, 1)
insert into db_funcionário (Nome, Sobrenome, Salário, n_id) Values ("Amanda", "Moreira", 1500.00, 2)
insert into db_funcionário (Nome, Sobrenome, Salário, n_id) Values ("João", "Amoedo", 3500.00, 3)	
insert into db_funcionário (Nome, Sobrenome, Salário, n_id) Values ("Maria", "Madalena", 3500.00, 4)	
insert into db_funcionário (Nome, Sobrenome, Salário, n_id) Values ("Mário", "Kart", 2800.00, 5)	
insert into db_funcionário (Nome, Sobrenome, Salário, n_id) Values ("Luiza", "Mel", 2900.00, 4)	
insert into db_funcionário (Nome, Sobrenome, Salário, n_id) Values ("Caio", "Blat", 1500.00, 3)	
insert into db_funcionário (Nome, Sobrenome, Salário, n_id) Values ("Mayra", "Cardi", 8000.00, 2)	
insert into db_funcionário (Nome, Sobrenome, Salário, n_id) Values ("Garcia", "Gomes", 3200.00, 1)	
insert into db_funcionário (Nome, Sobrenome, Salário, n_id) Values ("Marcia", "Goldschimdt", 3200.00, 2)	
insert into db_funcionário (Nome, Sobrenome, Salário, n_id) Values ("Joana", "Darc", 5800.00, 3)	
insert into db_funcionário (Nome, Sobrenome, Salário, n_id) Values ("Joan", "Jett", 5800.00, 4)	
insert into db_funcionário (Nome, Sobrenome, Salário, n_id) Values ("Nathan", "Pale", 1200.00, 5)	
insert into db_funcionário (Nome, Sobrenome, Salário, n_id) Values ("Emanuele", "Costa", 2500.00, 4)	
insert into db_funcionário (Nome, Sobrenome, Salário, n_id) Values ("Michele", "Michele", 2800.00, 3)	

select * from db_funcionário where Salário >2000

select * from db_funcionário where Salário >1000 and Salário <2000 

select * from db_funcionário where Nome like "%C%"

select * from db_funcionário
inner join db_cargo on n_id = ID

select * from db_funcionário
inner join db_cargo on n_id = ID where Cargo = "Vigilante"