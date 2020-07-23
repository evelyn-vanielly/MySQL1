create database db_construindo_a_nossa_vida

use db_construindo_a_nossa_vida

create table db_categoria 
( ID bigint auto_increment,
  Material varchar (20),
  Área varchar (20),
  primary key (ID)
  )
  
  use db_construindo_a_nossa_vida
  
  create table db_produto
  ( 
  ID2 bigint auto_increment,
  Nome varchar (20),
  Disponível boolean,
  Preço decimal (7,2),
  produto_id bigint not null,
  primary key (ID2),
  foreign key (produto_id) references db_categoria (ID)
  )
  
  insert into db_categoria (Material, Área) values ("Plástico", "Banheiro")
    insert into db_categoria (Material, Área) values ("Aluminio", "Cozinha")
      insert into db_categoria (Material, Área) values ("Borracha", "Auto")
        insert into db_categoria (Material, Área) values ("Barro", "Construção")
          insert into db_categoria (Material, Área) values ("Areia", "Construção")
          
          select * from db_categoria
          
          insert into db_produto (Nome, Disponível, Preço, produto_id) values ("Torneira", true, 59.90, 1)
            insert into db_produto (Nome, Disponível, Preço, produto_id) values ("Janela", true, 279.90, 2)
              insert into db_produto (Nome, Disponível, Preço, produto_id) values ("Pneu", false, 159.90, 3)
                insert into db_produto (Nome, Disponível, Preço, produto_id) values ("Tijolo", true, 59.90, 4)
                  insert into db_produto (Nome, Disponível, Preço, produto_id) values ("Saco", true, 89.90, 5)
                    insert into db_produto (Nome, Disponível, Preço, produto_id) values ("Chuveiro", false, 59.90, 1)
                      insert into db_produto (Nome, Disponível, Preço, produto_id) values ("Porta", true, 199.90, 2)
                        insert into db_produto (Nome, Disponível, Preço, produto_id) values ("Buzina", false, 39.90, 3)
                        
			select * from db_produto
            
            select * from db_produto where Preço >50
            
            select * from db_produto where Preço between 3 and 60 
            
            select * from db_produto where Nome like "%C%"
            
            select * from db_produto
            inner join db_categoria on produto_id=ID
            
            select * from db_produto
            inner join db_categoria on produto_id=ID where Área = "Auto"
  