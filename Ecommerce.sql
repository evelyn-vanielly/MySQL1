create database ecommerce
use ecommerce
create table Produtos (
ID bigint (5) auto_increment,
Nome varchar (20) not null,
Quantidade float (5),
Marca varchar (20) not null,
Disponível boolean, 
Primary key (ID)
)

insert into Produtos (Nome, Quantidade, Marca, Disponível) Values ("Boné", 50, "Nike", true)
insert into Produtos (Nome, Quantidade, Marca, Disponível) Values ("Camiseta", 35, "Nike", true)
insert into Produtos (Nome, Quantidade, Marca, Disponível) Values ("Calça", 10, "Nike", true)
insert into Produtos (Nome, Quantidade, Marca, Disponível) Values ("Calça", 10, "Nike", true)
insert into Produtos (Nome, Quantidade, Marca, Disponível) Values ("Chaveiro", 100, "Adidas", true)
insert into Produtos (Nome, Quantidade, Marca, Disponível) Values ("Caneca", 5, "Adidas", true)
insert into Produtos (Nome, Quantidade, Marca, Disponível) Values ("Adesivo", 500, "Adidas", false)
insert into Produtos (Nome, Quantidade, Marca, Disponível) Values ("Boné", 50, "Fatal Surf", false)
insert into Produtos (Nome, Quantidade, Marca, Disponível) Values ("Camiseta", 10, "Fatal Surf", true)
insert into Produtos (Nome, Quantidade, Marca, Disponível) Values ("Saia", 150, "Planet Girls", true)
insert into Produtos (Nome, Quantidade, Marca, Disponível) Values ("Jaqueta", 10, "Planet Girls", true)
insert into Produtos (Nome, Quantidade, Marca, Disponível) Values ("Vestido", 5, "Planet Girls", false)
insert into Produtos (Nome, Quantidade, Marca, Disponível) Values ("Boné", 2, "Planet Girls", true)
insert into Produtos (Nome, Quantidade, Marca, Disponível) Values ("Bomber", 20, "Planet Girls", true)
insert into Produtos (Nome, Quantidade, Marca, Disponível) Values ("Bomber", 20, "Planet Girls", true)

select * from Produtos

select * from Produtos where Quantidade >= 500
select * from Produtos where Quantidade <= 500

update Produtos set Disponível = true where ID = 12 