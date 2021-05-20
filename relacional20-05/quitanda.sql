-- Criar Banco de Dados
create database db_quitanda;

-- Acessa o banco de Dados
use db_quitanda;

-- Criar Tabela (colunas = atributos)
create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preço decimal(5,2) not null,
primary key (id)
);

-- Insere dados na tabela
insert into tb_produtos (nome, preço) values ("tomate", 50.00);
insert into tb_produtos (nome, preço) values ("maçã", 5.00);

-- Vizualizar os dados ( * = tudo na tabela)
select * from tb_produtos;
-- produtos especificos
select nome, preço from tb_produtos;
-- tudo na tabela + "where" = condição especifica 
select * from tb_produtos where id=1;
select * from tb_produtos where preço>10;

-- Altera a estrutura da Tabela (adiciona coluna = add)
alter table tb_produtos add descricao varchar(255);
-- Apaga a coluna e seus dados = drop
alter table tb_produtos drop descricao;

-- Alterar dados na tabela (sempre usar o where)
update tb_produtos set preço=10 where id=1;

-- Deletar dados na taebela (apaga permamente)
delete from tb_produtos where id=2;

-- Novo produto com um novo id
insert into tb_produtos (nome, preço) values ("maçã", 5.00);

-- Alterar um campo da tabela
alter table tb_produtos modify preço decimal(5,2);