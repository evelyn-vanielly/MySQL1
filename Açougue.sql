create database db_cidade_das_carnes

use db_cidade_das_carnes

create table db_categoria
(
 ID bigint auto_increment,
 Tipo varchar (20),
 Orgânico boolean, 
Primary key (ID)
)

use db_cidade_das_carnes

create table db_produto
(
 ID2 bigint auto_increment,
 Parte varchar (20),
 Preço decimal (6,2),
 Disponível boolean,
 carne_id bigint not null, 
 Primary key (ID2),
 foreign key (carne_id) references db_categoria (ID)
 )
 
insert into db_categoria (Tipo, Orgânico) values ("Bovino", true)
insert into db_categoria (Tipo, Orgânico) values ("Ave", false)
insert into db_categoria (Tipo, Orgânico) values ("Suino", false) 
insert into db_categoria (Tipo, Orgânico) values ("Vegan", true)
insert into db_categoria (Tipo, Orgânico) values ("Exótica", true)

select * from db_categoria

insert into db_produto (Parte, Preço, Disponível, carne_id) values ("Fígado", 15.00, true, 1)
insert into db_produto (Parte, Preço, Disponível, carne_id) values ("Coxa", 9.50, true, 2)
insert into db_produto (Parte, Preço, Disponível, carne_id) values ("Linguiça", 16.80, true, 3)
insert into db_produto (Parte, Preço, Disponível, carne_id) values ("Hambuguer", 35.70, true, 4)
insert into db_produto (Parte, Preço, Disponível, carne_id) values ("Coração", 89.70, false, 5)
insert into db_produto (Parte, Preço, Disponível, carne_id) values ("Lingua", 8.80, false, 1)
insert into db_produto (Parte, Preço, Disponível, carne_id) values ("Asa", 15.40, true, 2)
insert into db_produto (Parte, Preço, Disponível, carne_id) values ("Pé", 5.20, false, 3)

select * from db_produto

select * from db_produto where Preço > 50
select * from db_produto where Preço between 3 and 60
select * from db_produto where Parte like "%C%"

select * from db_produto
inner join db_categoria on carne_id = ID

select * from db_produto
inner join db_categoria on carne_id = ID where Tipo = "Vegan"