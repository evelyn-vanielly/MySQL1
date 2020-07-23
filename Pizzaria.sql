create database db_pizzaria_legal

use db_pizzaria_legal

create table tb_categoria
( ID bigint auto_increment,
  Tipo varchar (7),
  Tamanho varchar (7),
Primary key (ID)
)

select * from tb_categoria

create table tb_pizza
( ID2 bigint auto_increment,
  Sabor varchar (20),
  Preço decimal (4, 2),
  Especial boolean,
  pizza_id bigint not null,
Primary key (ID2),
Foreign key (pizza_id) references tb_categoria (ID)
)

select * from tb_pizza

insert into tb_categoria (Tipo, Tamanho) values ("Doce", "Grande")
insert into tb_categoria (Tipo, Tamanho) values ("Salgado", "Grande")
insert into tb_categoria (Tipo, Tamanho) values ("Salgado", "Broto")
insert into tb_categoria (Tipo, Tamanho) values ("Doce", "Broto")
insert into tb_categoria (Tipo, Tamanho) values ("Meio", "Grande")


select * from tb_categoria

insert into tb_pizza (Sabor, Preço, Especial, pizza_id) values ("Muçarela", 25.00, false, 2)
insert into tb_pizza (Sabor, Preço, Especial, pizza_id) values ("Calabresa", 25.00, false, 3)
insert into tb_pizza (Sabor, Preço, Especial, pizza_id) values ("Frango", 30.00, false, 2)
insert into tb_pizza (Sabor, Preço, Especial, pizza_id) values ("Vegetariana", 20.00, true, 2)
insert into tb_pizza (Sabor, Preço, Especial, pizza_id) values ("Brigadeiro", 45.00, false, 5)
insert into tb_pizza (Sabor, Preço, Especial, pizza_id) values ("Prestigio", 50.00, false, 4)
insert into tb_pizza (Sabor, Preço, Especial, pizza_id) values ("Sensação", 60.00, false, 1)
insert into tb_pizza (Sabor, Preço, Especial, pizza_id) values ("Strogonoff", 80.00, true, 3)

update tb_pizza set Sabor="BrigaMuça" where ID2 = 5

select * from tb_pizza

select * from tb_pizza where Preço > 45

select * from tb_pizza where Preço between 29 and 45

select * from tb_pizza where Sabor like "%C%"

select * from tb_pizza
inner join tb_categoria on pizza_id = ID

select * from tb_pizza
inner join tb_pizza on pizza_id = ID where Tamanho = "Grande"