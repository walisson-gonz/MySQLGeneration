use db_relacional;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
modelo varchar(255) not null,
anoFabricacao int (5) not null,
anosDeGarantia int (3) not null,
primary key (id)
);

select * from tb_produtos;

insert into tb_produtos (nome, modelo, anoFabricacao, anosDeGarantia) values
("Mouse Siper Pro", "Extreme", 2019, 1),
("Patinete Eletrico", "HyperHot", 2022, 3),
("GoPrO", "4k10",2021, 2),
("Lampada Bluetooth","RGB",2018, 1),
("Fita RGB", "Sensor de Som", 2020, 1),
("Casaco Akatsuk", "Corta Vento", 2021, 1);

alter table tb_produtos add preco decimal not null;

update tb_produtos set preco=300 where id in (1,5);
update tb_produtos set preco=700 where id in (2);
update tb_produtos set preco=1400 where id in (3);
update tb_produtos set preco=200 where id in (4);
update tb_produtos set preco=199 where id in (6);

select * from tb_produtos where preco>500;
select * from tb_produtos where preco<500;

update tb_produtos set modelo="HotWelss" where id=2;

alter table tb_produtos modify preco decimal(6,2);
