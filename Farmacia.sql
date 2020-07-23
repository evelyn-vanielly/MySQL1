create database db_farmacia_do_bem 

use db_farmacia_do_bem 

create table tb_categoria
(ID bigint auto_increment,
Setor  varchar (20),
Controlado boolean ,
Gratuito boolean,
Primary key (ID) 
)

use db_farmacia_do_bem

create table tb_produto
(ID2 bigint auto_increment,
Nome varchar (20),
Preço decimal (5),
Validade datetime,
produto_id bigint not null,
Disponível boolean, 
Primary key (ID2),
Foreign key (produto_id) references tb_categoria(ID)
)
drop table tb_produto
select * from tb_produto
select * from tb_categoria

insert into tb_categoria (Setor, Controlado, Gratuito) values ("Beleza", false, false)
insert into tb_categoria (Setor, Controlado, Gratuito) values ("Saúde", true, true)
insert into tb_categoria (Setor, Controlado, Gratuito) values ("Alimento", false, false)
insert into tb_categoria (Setor, Controlado, Gratuito) values ("Higiene", false, false)
insert into tb_categoria (Setor, Controlado, Gratuito) values ("Saúde", false, false)

update tb_categoria set Setor = "Estética" where ID = 1

insert into tb_produto (Nome, Preço, Validade, Disponível, produto_id) values ("Shampoo", 12.90, "2020-05-12", false, 4) 
insert into tb_produto (Nome, Preço, Validade, Disponível, produto_id) values ("Omeoprazol", 5.90, "2020-12-31", true, 5) 
insert into tb_produto (Nome, Preço, Validade, Disponível, produto_id) values ("Prozac", 54.90, "2021-05-01", true, 2) 
insert into tb_produto (Nome, Preço, Validade, Disponível, produto_id) values ("M&M", 3.90, "2020-07-23", true, 3) 
insert into tb_produto (Nome, Preço, Validade, Disponível, produto_id) values ("Absorvente", 15.90, "2020-09-18", true, 4) 
insert into tb_produto (Nome, Preço, Validade, Disponível, produto_id) values ("Sabonete", 2.90, "2020-07-24", true, 4) 
insert into tb_produto (Nome, Preço, Validade, Disponível, produto_id) values ("Coloração", 5.90, "2020-05-24", true, 1) 
insert into tb_produto (Nome, Preço, Validade, Disponível, produto_id) values ("Merthiolate", 23.90, "2020-11-05", true, 5) 

select * from tb_categoria

select * from tb_produto

select * from tb_produto where Preço > 50

select * from tb_produto where Preço between 3.00 and 60.00

select * from tb_produto where nome like "%B%"

select * from tb_produto
inner join tb_categoria on produto_id = ID

select * from tb_produto
inner join tb_categoria on produto_id = ID where Setor = "Saúde"
