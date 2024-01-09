CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
id bigint auto_increment primary key,
categoria varchar(20) not null,
habilidade varchar(20)
);

INSERT INTO tb_classes (categoria,habilidade)
VALUES ("Elétrico", "Estática"),
("Fogo/Voador", "Poder Solar"),
("Planta/Veneno", "Grânulo Venenoso"),
("Agua", "Torrente"),
("Normal/Fada", "Doce Encanto"),
("Normal", "Imunidade"),
("Fantasma/Veneno", "Levitação"),
("Psiquico", "Pressão");


CREATE TABLE tb_personagens (
id bigint auto_increment primary key,
nome varchar(30) not null,
ataque bigint,
defesa bigint,
golpe varchar(60),
classeid bigint
);

INSERT INTO tb_personagens (nome, ataque, defesa, golpe)
VALUES ("Pikachu","1000","325","Investida Elétrica"),
("Charizard","2800","718","Garra de Dragão"),
("Bulbasaur","2456","4112","Raio Solar"),
("Squirtle","9856","4224","Cascata"),
("Jigglypuff","1233","1115","Bola Desejo"),
("Snorlax","7253","1601","Hiper Raio"),
("Gengar","2386","922","Confusão"),
("Mewtwo","6253","1063","Esfera de Energia");


ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classe
FOREIGN KEY (classeid) REFERENCES tb_classes(id);

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classeid = tb_classes.id;

UPDATE tb_personagens SET classeid = 1 WHERE id = 1;
UPDATE tb_personagens SET classeid = 2 WHERE id = 2;
UPDATE tb_personagens SET classeid = 3 WHERE id = 3;
UPDATE tb_personagens SET classeid = 4 WHERE id = 4;
UPDATE tb_personagens SET classeid = 5 WHERE id = 5;
UPDATE tb_personagens SET classeid = 6 WHERE id = 6;
UPDATE tb_personagens SET classeid = 7 WHERE id = 7;
UPDATE tb_personagens SET classeid = 8 WHERE id = 8;

SELECT * FROM tb_personagens 
INNER JOIN tb_classes ON tb_personagens.classeid = tb_classes.id
WHERE tb_classes.categoria Like '%Normal%';