create database db_generation_game_online
use db_generation_game_online
create table tb_classe
( ID bigint auto_increment,
  Tipo varchar (20),
  Tipo_sec varchar(20),
 Primary key (ID))

use db_generation_game_online

create table tb_personagem
( ID2 bigint auto_increment,
  Nome varchar (20),
  Poder bigint (5),
  Reino varchar (20),
  Classe_id bigint (5), 
  Primary key (ID2),
  Foreign key (Classe_id) references tb_classe (ID)
)

insert into tb_classe (Tipo, Tipo_sec) values ("Mago", "Suporte")
insert into tb_classe (Tipo, Tipo_sec) values ("Tank", "Suporte")
insert into tb_classe (Tipo, Tipo_sec) values ("Lutador", "Assassino")
insert into tb_classe (Tipo, Tipo_sec) values ("Atirador", "Assassino")
insert into tb_classe (Tipo, Tipo_sec) values ("Suporte", "Tank")

select * from tb_classe

insert into tb_personagem (Nome, Poder, Reino, Classe_id) values ("Anastacia", 250, "Estebania", 1)
insert into tb_personagem (Nome, Poder, Reino, Classe_id) values ("Alisson", 120, "Veranir", 2)
insert into tb_personagem (Nome, Poder, Reino, Classe_id) values ("Argan", 280, "Tourus", 3)
insert into tb_personagem (Nome, Poder, Reino, Classe_id) values ("Bergota", 360, "Granady", 4)
insert into tb_personagem (Nome, Poder, Reino, Classe_id) values ("Loyz", 100, "Estebania", 5)
insert into tb_personagem (Nome, Poder, Reino, Classe_id) values ("Peri", 362, "Greenvile", 3)
insert into tb_personagem (Nome, Poder, Reino, Classe_id) values ("Humine", 120, "Algoraz", 2)
insert into tb_personagem (Nome, Poder, Reino, Classe_id) values ("Shuregon", 95, "Firenze", 5)

select * from tb_classe
select * from tb_personagem

select * from tb_personagem where  Poder > 200

select * from tb_personagem where Poder >100 and Poder <200

select * from tb_personagem where Nome like "%C%"

select * from tb_personagem
inner join tb_classe on classe_id = ID 

select * from tb_personagem
inner join tb_classe on classe_id = ID where Tipo = "Atirador"





