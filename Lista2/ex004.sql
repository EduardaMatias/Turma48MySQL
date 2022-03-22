CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categoria(
	id bigint auto_increment, 
	tipo varchar(255),
    corte varchar(255),
    marca varchar(255),
    
	primary key(id)
);

CREATE TABLE tb_produto(
	id bigint auto_increment,
    nome varchar(255),
    preco_por_kg double, /*preço por kg*/
    peso double, /*em kg*/
    preco_total double,
    descricao varchar(1000),
	categoria_id bigint,
    
	primary key(id), 
    foreign key (categoria_id) references tb_categoria(id)
);

INSERT INTO tb_categoria (tipo, corte, marca)
VALUES ("Bovina", "Alcatra", "Nelore");

INSERT INTO tb_categoria (tipo, corte, marca)
VALUES ("Bovina", "Ancho", "Angus");

INSERT INTO tb_categoria (tipo, corte, marca)
VALUES ("Suínas", "Bisteca", "Sádia");

INSERT INTO tb_categoria (tipo, corte, marca)
VALUES ("Suínas", "Costelinha", "Nelore");

INSERT INTO tb_categoria (tipo, corte, marca)
VALUES ("Aves", "Coxa c/ sobrecoxa", "Copacol");

SELECT * FROM tb_categoria;

INSERT INTO tb_produto (nome, preco_por_kg, peso, preco_total, descricao, categoria_id)
VALUES("Coxa com sobrecoxa", 12.90, 1, 12.90, "A coxa c/ sobrecoxa de frango é um corte que permite grande variedade no preparo.", 5);

INSERT INTO tb_produto (nome, preco_por_kg, peso, preco_total, descricao, categoria_id)
VALUES("Alcatra em cubos", 71.90, 0.5, 35.95, "A Alcatra fica localizada na parte traseira do boi e dá origem a diversos subcortes.", 1);

INSERT INTO tb_produto (nome, preco_por_kg, peso, preco_total, descricao, categoria_id)
VALUES("Ancho angus", 126.90, 0.4, 50.76, "Corte do lombo mais para a parte central/dianteira, o Ancho é a base da costela do animal.", 2);

INSERT INTO tb_produto (nome, preco_por_kg, peso, preco_total, descricao, categoria_id)
VALUES("Bisteca suína congelada", 21.90, 0.5, 10.95,"A duração do cozimento depende principalmente da espessura da bisteca.", 3);

INSERT INTO tb_produto (nome, preco_por_kg, peso, preco_total, descricao, categoria_id)
VALUES("Costelinha suína congelada", 41.90, 1, 41.90, "É um corte grande, começa no peito e vai até a parte mais traseira do porco. ", 4);

INSERT INTO tb_produto (nome, preco_por_kg, peso, preco_total, descricao, categoria_id)
VALUES("Costelinha suína temperada", 46.90, 1.200, 56.28, "Corte tradicional de costelinha suina temperada.", 4);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco_por_kg > 50;

SELECT * FROM tb_produto WHERE preco_por_kg >= 3 AND preco_por_kg <=60;

SELECT * FROM tb_produto
INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.categoria_id;

SELECT * FROM tb_produto
INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id
WHERE categoria_id = 4;