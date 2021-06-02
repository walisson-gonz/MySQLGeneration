create database db_relacional;

use db_relacional;

create table tb_funcionaries(
id bigint auto_increment,
nome varchar(255) not null,
cargo varchar(255) not null,
regiao varchar(255) not null,
salario decimal(5,2) not null,
primary key (id)
);

select * from tb_funcionaries;

insert into tb_funcionaries (nome, cargo, regiao, salario) values 
("Agnaldo", "mestre da fornalha", "Norte", 1870),
("Wanda","Sentinela","Sudoeste",3000),
("Gonzalison","Mago Implacável","Oeste",5000);

select * from tb_funcionaries where salario>2000;
select * from tb_funcionaries where salario<2000;

update tb_funcionaries set regiao="Noroeste" where id=2;

delete from tb_funcionaries where id in(3,4,5,6);

alter table tb_funcionaries modify salario decimal(6,2);