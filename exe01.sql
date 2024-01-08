CREATE DATABASE db_colaboradores;

USE db_colaboradores;

CREATE TABLE tb_funcionariosinfo (
id bigint auto_increment primary key,
nome VARCHAR(255) NOT NULL,
funcao VARCHAR(255),
setor VARCHAR(255),
dataadmissao DATE,
salario DECIMAL(10,2) NOT NULL
);

SELECT * FROM tb_funcionariosinfo;

INSERT INTO tb_funcionariosinfo (nome, funcao, setor, dataadmissao, salario)
VALUES ("Maria Silva", "Analista de Marketing", "Marketing", "2020-03-15", 5200.00);

INSERT INTO tb_funcionariosinfo (nome, funcao, setor, dataadmissao, salario)
VALUES("João Oliveira", "Desenvolvedor Front-end", "TI", "2019-07-10", 6500.00);

INSERT INTO tb_funcionariosinfo (nome, funcao, setor, dataadmissao, salario)
VALUES("Ana Souza", "Assistente Administrativo", "Administração", "2021-01-20", 1500.00);

INSERT INTO tb_funcionariosinfo (nome, funcao, setor, dataadmissao, salario)
VALUES("Pedro Santos", "Contador", "Financeiro", "2021-01-28", 3800.00);

INSERT INTO tb_funcionariosinfo (nome, funcao, setor, dataadmissao, salario)
VALUES("Fernanda Lima", "Assistente Administrativo", "Administração", "2018-01-20", 1900.00);

SELECT * FROM tb_funcionariosinfo;


SELECT nome FROM tb_funcionariosinfo where  salario > 2000;

SELECT nome,salario FROM tb_funcionariosinfo where  salario < 2000;


//criando outra tabela para fazer FK 

CREATE TABLE tb_localizacao (
id bigint auto_increment primary key,
local VARCHAR(60)
);

SELECT * FROM tb_localizacao;

INSERT INTO tb_localizacao (local)
VALUES ("SP"),
("MG"),
("BA");

//criando "foreign key"
ALTER TABLE tb_funcionariosinfo ADD localid VARCHAR(60);
alter table tb_funcionariosinfo DROP Column setorid;

ALTER TABLE tb_funcionariosinfo CHANGE localid localid bigint; 

SELECT * FROM tb_funcionariosinfo;

ALTER TABLE tb_funcionariosinfo ADD CONSTRAINT fk_funcionariosinfo_local
foreign key (localid) references tb_localizacao(id);

UPDATE tb_funcionariosinfo SET localid = 3 where id=1; 
UPDATE tb_funcionariosinfo SET localid = 2 where id=2; 
UPDATE tb_funcionariosinfo SET localid = 1 where id=3; 
UPDATE tb_funcionariosinfo SET localid = 3 where id=4; 
UPDATE tb_funcionariosinfo SET localid = 2 where id=5; 





