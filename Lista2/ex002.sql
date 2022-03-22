CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
	id bigint auto_increment,
        nome varchar(255),
    	tipo varchar(255),
	ingredientes varchar(255),
    
	primary key(id)
);

CREATE TABLE tb_pizza(
	id bigint auto_increment,
    	tamanho varchar(255),
    	quantidade varchar(255),
    	preco double,
    	endereco varchar(255), 
    	cliente varchar(255),
    	categoria_id bigint,
    
	primary key(id),
    	foreign key (categoria_id) references tb_categoria(id)
);

SELECT * FROM tb_pizza;

SELECT * FROM tb_categoria;

INSERT INTO tb_categoria(nome, tipo, ingredientes)
VALUES ("Calabresa", "Salgada", "Molho de tomate, calabresa, mussarela, cebola e orégano.");

INSERT INTO tb_categoria(nome, tipo, ingredientes)
VALUES ("Brigadeiro", "Doce", "Ganache de chocolate com granulado.");

INSERT INTO tb_categoria(nome, tipo, ingredientes)
VALUES ("Portuguesa", "Salgada", "Molho de tomate, mussarela, presunto, ovo, pamilto, cebola e orégano.");

INSERT INTO tb_categoria(nome, tipo, ingredientes)
VALUES ("Napolitana", "Salgada", "Mussarela, tomate e manjericão.");

INSERT INTO tb_categoria(nome, tipo, ingredientes)
VALUES ("Paulistinha", "Salgada", "Molho de tomate, mussarela, presunto, palmito, champignon e bacon.");

INSERT INTO tb_pizza(tamanho, quantidade, preco, endereco, cliente, categoria_id)
VALUES("Grande", 1, 50.99, "Rua Terra do Nunca - 461", "Joana Ramos", 3);

INSERT INTO tb_pizza(tamanho, quantidade, preco, endereco, cliente, categoria_id)
VALUES("Média", 1, 40.99, "Rua Pato Donald - 101", "Carlos Augusto", 1);

INSERT INTO tb_pizza(tamanho, quantidade, preco, endereco, cliente, categoria_id)
VALUES("Grande", 2, 101.99, "Travessa Nave-Mãe - 857", "João Paulo", 5);

INSERT INTO tb_pizza(tamanho, quantidade, preco, endereco, cliente, categoria_id)
VALUES("Pequena", 1, 29.99, "Rua Borboletas Psicodélicas - 507", "Carla Santos", 2);

INSERT INTO tb_pizza(tamanho, quantidade, preco, endereco, cliente, categoria_id)
VALUES("Pequena", 2, 45.99, "Rua da Música Aquática - 205", "Maria Pereira", 4);

SELECT * FROM tb_pizza WHERE preco > 45;

SELECT * FROM tb_pizza WHERE preco >= 29 AND preco <= 60;

SELECT * FROM tb_categoria WHERE nome LIKE "%c%";

SELECT * FROM tb_categoria
INNER JOIN tb_pizza ON tb_categoria.id = tb_pizza.categoria_id;

SELECT * FROM tb_pizza
INNER JOIN tb_categoria ON tb_pizza.id = tb_categoria.id
WHERE categoria_id = 2;
