create database RH

use RH

create table Funcionários (
ID bigint (5) auto_increment,
Nome varchar (20) not null,
Salário float (5),
Setor varchar (20) not null,
Turno varchar (5) not null, 
Primary key (ID)
)

insert into Funcionários (Nome, Salário, Setor, Turno) Values ("Roberto", 1500, "Limpeza", "Manhã)
insert into Funcionários (Nome, Salário, Setor, Turno) Values ("Amanda", 5000, "RH", "Manhã")
insert into Funcionários (Nome, Salário, Setor, Turno) Values ("João", 3500, "TI", "Noite")	
insert into Funcionários (Nome, Salário, Setor, Turno) Values ("Maria", 3500, "TI", "Noite")	
insert into Funcionários (Nome, Salário, Setor, Turno) Values ("Mário", 2800, "Serviços", "Noite")	
insert into Funcionários (Nome, Salário, Setor, Turno) Values ("Luiza", 2900, "Serviços", "Manhã")	
insert into Funcionários (Nome, Salário, Setor, Turno) Values ("Caio", 1500, "Limpeza", "Noite")	
insert into Funcionários (Nome, Salário, Setor, Turno) Values ("Mayra", 8000, "RH", "Noite")	
insert into Funcionários (Nome, Salário, Setor, Turno) Values ("Garcia", 3200, "Segurança", "Noite")	
insert into Funcionários (Nome, Salário, Setor, Turno) Values ("Marcia", 3200, "Segurança", "Noite")	
insert into Funcionários (Nome, Salário, Setor, Turno) Values ("Joana", 5800, "Marketing", "Tarde")	
insert into Funcionários (Nome, Salário, Setor, Turno) Values ("Joan", 5800, "Marketing", "Manhã")	
insert into Funcionários (Nome, Salário, Setor, Turno) Values ("Nathan", 1200, "Serviços", "Manhã")	
insert into Funcionários (Nome, Salário, Setor, Turno) Values ("Emanuele", 4500, "Serviços", "Manhã")	
insert into Funcionários (Nome, Salário, Setor, Turno) Values ("Michele", 15000, "Comercial", "Tarde")	
	
select * from Funcionários where Salário >2000
select * from Funcionários where Salário <2000
update Funcionários set Salário = 1300 where ID = 13

