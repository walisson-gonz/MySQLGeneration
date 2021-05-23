use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
nome varchar(255) not null,
tipoArma varchar(255),
tipoRoupa varchar(255),
pdrAtaque int,
pdrDefesa int,
elemento varchar(255),
primary key (id)
);

select * from tb_classe;

insert tb_classe (nome, tipoArma, tipoRoupa, pdrAtaque, pdrDefesa, elemento) values 
("Guerreiro","Espadão","Placas",1890, 1830, "Fogo"), ("Mago","Cajado","Tecido",1634, 1320, "Raio"),
("Caçador","Arco","malha", 1423, 1243, "Terra"), ("Druida","Armas de punho","Couro", 1773, 1230, "Natureza"),
("Bruxo","Varinha","Tecido", 1866, 1473, "Fogo"), ("Cavaleiro da Morte", "Machado", "Placas", 5000, 4999, "Obscuro");


create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
nivel int,
clan varchar(255),
raca varchar(255),
forcaEspirito int,
classe_id bigint,
primary key(id),
foreign key (classe_id) references tb_classe (id)
);

select * from tb_personagem;

insert tb_personagem (nome, nivel, clan, raca, forcaEspirito, classe_id) values 
("Glorius", 50, "Orda","Goblin", 6, 1), ("Mamusca", 35, "Aliança", "Anão", 7, 3),
("Gonzalison", 99, "Outro Mundo", "Worgen", 10, 6), ("Nirvana", 66, "Aliança", "Elfo Norutno", 8, 5),
("Pity", 48, "Orda", "Orc", 9, 4), ("Dean", 86, "Orda", "Troll", 7, 2),
("Frozzy", 73, "Aliança", "Humano", 4, 6);

-- as = apelido da tabela
select  tb_personagem.id, tb_personagem.nome, nivel, clan, raca, forcaEspirito, tb_classe.nome, tipoArma, tipoRoupa, pdrAtaque as "Poder de ataque" , pdrDefesa, elemento
from tb_personagem inner join tb_classe on tb_classe.id=tb_personagem.classe_id;

select  tb_personagem.id, tb_personagem.nome, nivel, clan, raca, forcaEspirito, tb_classe.nome, tipoArma, tipoRoupa, pdrAtaque as "Poder de ataque" , pdrDefesa, elemento
from tb_personagem inner join tb_classe on tb_classe.id=tb_personagem.classe_id where pdrAtaque>2000;

select tb_personagem.nome, nivel, clan, raca, forcaEspirito, tb_classe.nome, tipoArma, tipoRoupa, pdrAtaque, pdrDefesa, elemento
from tb_personagem inner join tb_classe on tb_classe.id=tb_personagem.classe_id where pdrDefesa between 1000 and 2000;

select tb_personagem.nome, nivel, clan, raca, forcaEspirito, tb_classe.nome, tipoArma, tipoRoupa, pdrAtaque, pdrDefesa, elemento
from tb_personagem inner join tb_classe on tb_classe.id=tb_personagem.classe_id where tb_personagem.nome like "G%";

select tb_personagem.nome, nivel, clan, raca, forcaEspirito, tb_classe.nome, tipoArma, tipoRoupa, pdrAtaque, pdrDefesa, elemento
from tb_personagem inner join tb_classe on tb_classe.id=tb_personagem.classe_id where tb_classe.id = 6;