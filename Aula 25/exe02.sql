CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_pizzas (
id bigint auto_increment primary key,
nome varchar(50) not null,
datavalidade date,
bordaRecheada boolean,
preco decimal,
categoriasid bigint
);

INSERT INTO tb_pizzas (nome,datavalidade, bordaRecheada, preco)
VALUES ("Pizza Tropical", "2023-12-18", true, 30.00),
("Pizza Calabresa", "2024-01-15", true, 50.00),
("Pizza Margherita", "2024-01-16", false, 90.00),
("Pizza Frango com Catupiry", "2024-01-19", true, 30.00),
("Pizza Quatro Queijos", "2024-01-12", false, 60.00),
("Pizza Vegana Gourmet", "2024-01-18", true, 40.00),
("Pizza Chocolate", "2024-01-11", false, 70.00),
("Pizza Beijinho", "2024-01-11", false, 70.00)
;

UPDATE tb_pizzas SET categoriasid = 1 WHERE id = 1;
UPDATE tb_pizzas SET categoriasid = 2 WHERE id = 2;
UPDATE tb_pizzas SET categoriasid = 1 WHERE id = 3;
UPDATE tb_pizzas SET categoriasid = 2 WHERE id = 4;
UPDATE tb_pizzas SET categoriasid = 4 WHERE id = 5;
UPDATE tb_pizzas SET categoriasid = 1 WHERE id = 6;
UPDATE tb_pizzas SET categoriasid = 3 WHERE id = 7;
UPDATE tb_pizzas SET categoriasid = 3 WHERE id = 8;

CREATE TABLE tb_categorias (
id bigint auto_increment primary key,
tipo varchar(20) not null,
vegano boolean
);

INSERT INTO tb_categorias (tipo, vegano)
VALUES ("salgado",true),
("salgado",false),
("doce",true),
("doce",false),
("Especial", false)
;

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias
FOREIGN KEY (categoriasid) REFERENCES tb_categorias(id);

SELECT * FROM tb_pizzas;
SELECT * FROM tb_categorias;

SELECT * FROM tb_pizzas WHERE preco > 45;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoriasid = tb_categorias.id;

SELECT * FROM tb_pizzas 
INNER JOIN tb_categorias 
ON tb_pizzas.categoriasid = tb_categorias.id
where tb_categorias.tipo = "doce";


