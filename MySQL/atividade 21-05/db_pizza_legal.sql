create database db_pizza_legal;

use db_pizza_legal;

create table tb_categoria(
id bigint auto_increment,
tamanho varchar(9) not null,
borda boolean,
primary key (id)
);

insert tb_categoria (tamanho, borda) values 
("Pequena",0), ("Media", 1), ("Grande", 1), ("Família", 0),
("Pequena",1), ("Media", 0), ("Grande", 0), ("Família", 1);
select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
nome varchar(100) not null,
preco decimal(5,2) not null,
calorias int,
mista boolean,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert tb_pizza (nome, preco, calorias, mista, categoria_id) values
("Margarida",40,244,1,2), ("Portuguesa", 35, 230, 0, 5), ("Napolitana", 55, 242, 0, 3),
("Brigadeiro", 60, 250, 1, 4), ("Califórnia", 65, 222,0,8), ("baianinha", 40, 240, 0, 6),
("Muçarela", 30, 238, 0, 1);
select * from tb_pizza;

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where nome like "%c%";

select * from tb_pizza inner join tb_categoria on tb_categoria.id=tb_pizza.categoria_id;