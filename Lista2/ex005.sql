CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
	id bigint auto_increment,
    tipo varchar (255),
    quantidade_estoque int,
    promocao boolean, /*verifica se o produto está em promoção*/
    
    primary key(id)
);

INSERT INTO tb_categoria(tipo, quantidade_estoque, promocao)
VALUES("Tintas", 45, false);

INSERT INTO tb_categoria(tipo, quantidade_estoque, promocao)
VALUES("Madeira", 20, false);

INSERT INTO tb_categoria(tipo, quantidade_estoque, promocao)
VALUES("Materiais elétricos", 150, true);

INSERT INTO tb_categoria(tipo, quantidade_estoque, promocao)
VALUES("Impermeabilizantes", 90, true);

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
	id bigint auto_increment,
    nome varchar(255),
	marca varchar(255),
    descricao varchar(255),
    preco varchar(255),
    codigo int,
	categoria_id bigint,
    
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
);

INSERT INTO tb_produto(nome, marca, descricao, preco, codigo, categoria_id)
VALUES("Tinta fosco completo", "Suvinil", "Rende mais, acabamento fosco e disfarça imperfeições", 54.30, 6524, 1);

INSERT INTO tb_produto(nome, marca, descricao, preco, codigo, categoria_id)
VALUES("Tinta brilho extra", "Suvinil", "Parede com um brilho incrível, fácil de limpar e simples de aplicar", 189.50, 5689, 1);

INSERT INTO tb_produto(nome, marca, descricao, preco, codigo, categoria_id)
VALUES("Tinta criativa", "Suvinil", "É abrir e pintar. Não precisa nem diluir. Praticidade e beleza", 145.68, 6195, 1);

INSERT INTO tb_produto(nome, marca, descricao, preco, codigo, categoria_id)
VALUES("Painel de madeira 1.7cm", "Settis", "Clássico, o painel de madeira é um item essencial em uma decoração naturalista", 164.90, 1214, 2);

INSERT INTO tb_produto(nome, marca, descricao, preco, codigo, categoria_id)
VALUES("Extensão elétrica 3 tomadas", "Lexman", "Ideal para facilitar as tarefas do dia a dia", 34.90, 5548, 3);

INSERT INTO tb_produto(nome, marca, descricao, preco, codigo, categoria_id)
VALUES("Estabilizador eletrônico", "Emplac", "Este protetor eletrônico garante proteção eficiente para equipamentos de informática e eletroeletrônicos", 125.00, 3654, 3);

INSERT INTO tb_produto(nome, marca, descricao, preco, codigo, categoria_id)
VALUES("Impermeabilizante para concreto", "Vedacit", "Indicado para revestir, vedar, eliminar vazamentos e umidades", 132, 5478, 4);

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco > 50;

SELECT * FROM tb_produto WHERE preco >= 3 AND preco <= 60;

SELECT * FROM tb_produto WHERE nome LIKE "%c%";

SELECT * FROM tb_produto
INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.categoria_id;

SELECT * FROM tb_produto
INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id
WHERE categoria_id = 1;
