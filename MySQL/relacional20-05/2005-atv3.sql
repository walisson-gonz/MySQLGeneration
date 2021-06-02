use db_relacional;

create table tb_escola(
id bigint auto_increment,
nome varchar(255) not null,
nota decimal not null,
disciplinaDestaque varchar(255) not null,
notaDeComportamento int(3) not null,
primary key (id)
);

insert into  tb_escola (nome, nota, disciplinaDestaque, notaDeComportamento) values
("Loran", 8.0, "Português",8),
("Gabriela", 3.0, "ed.Fisica", 4),
("Ravena", 9.0, "Química", 7),
("Jorel", 5.0, "Matematica", 6),
("Jurema", 10.0, "Física", 10);

select * from tb_escola;

select * from tb_escola where nota>7;
select * from tb_escola where nota<7;
alter table tb_escola modify nota decimal (6,1);
