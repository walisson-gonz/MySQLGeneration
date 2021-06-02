create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(100) not null,
publicoAlvo varchar(100) not null,
primary key (id)
);

insert tb_categoria(categoria, publicoAlvo) values 
("Cosmético", "Pessoas em Geral"), ("Higiene", "Pessoas em Geral"), ("Alimento", "Pessaos em Geral"),
("Medicamento", "Uso Adulto"),("Medicamento", "Uso infantil"), ("Medicamento", "Necessita prescrição médica");

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar (100) not null,
preco decimal (6,2) not null,
laboratorio varchar(100),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert tb_produto(nome, preco, laboratorio, categoria_id) values 
("Cimegripe", 20, "Neoquimica", 4), ("Heden Shoden", 30, null , 2 ), ("Gardenal", 55, "Sanofi", 6), 
("Manteiga de Cacau", 10, null , 1),("Dipirona", 2.97, "Novalgina", 5), ("Amoxilina", 60, "Medley", 6),
("Melzinho", 5.50, null , 3);

select * from tb_produto;

select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "%G%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.id between 1 AND 2;