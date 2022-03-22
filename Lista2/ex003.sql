CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
	id bigint auto_increment,
	setor varchar(255),
    	receita boolean, /*verifica se é necessário receita para a compra do produto*/
	marca varchar(255),
    
	primary key(id)
);

CREATE TABLE tb_produto(
	id bigint auto_increment,
    	nome varchar(255),
    	preco double,
    	quantidadeEstoque int, 
    	codigo varchar(255),
   	advertencias varchar(255),
    
    	categoria_id bigint,
    	primary key(id),
    	foreign key (categoria_id) references tb_categoria(id)
);

INSERT INTO tb_categoria (setor, receita, marca)
VALUES ("Cosméticos", false, "L'Oréal");

INSERT INTO tb_categoria (setor, receita, marca)
VALUES ("Cosméticos", false, "Cicatricure");

INSERT INTO tb_categoria (setor, receita, marca)
VALUES ("Medicamento", true, "Farmaco Prati");

INSERT INTO tb_categoria (setor, receita, marca)
VALUES ("Medicamento", false, "Dorflex");

INSERT INTO tb_categoria (setor, receita, marca)
VALUES ("Medicamento", false, "Almeida Prado");

INSERT INTO tb_produto(nome, preco, quantidadeEstoque, codigo, advertencias, categoria_id)
VALUES ("Protetor Solar La Roche-Posay", 63.90, 10, "37555", "Se houver irritação, suspenda o uso imediatamente e procure orientação médica.", 1);

INSERT INTO tb_produto(nome, preco, quantidadeEstoque, codigo, advertencias, categoria_id)
VALUES ("Cicatricure Gel Cicatrizes e Estrias", 39.90, 35, "16144", "Em caso de irritação da pele, suspenda o uso do produto e procure orientação médica.", 2);

INSERT INTO tb_produto(nome, preco, quantidadeEstoque, codigo, advertencias, categoria_id)
VALUES ("Ibuprofeno", 10.49, 15, "21352", "Caso apareçam sintomas de alergia deve-se procurar atendimento médico imediatamente.", 3);

INSERT INTO tb_produto(nome, preco, quantidadeEstoque, codigo, advertencias, categoria_id)
VALUES ("Dorflex", 19.90, 26, "40111", "Não use esse medicamento durante a gravidez e em crianças menores que três meses de idade.", 4);

INSERT INTO tb_produto(nome, preco, quantidadeEstoque, codigo, advertencias, categoria_id)
VALUES ("Amoxicilina Tri-Hidratada", 20.09, 55, "12262", "Caso apareçam sintomas de alergia deve-se procurar atendimento médico imediatamente.", 3);

INSERT INTO tb_produto(nome, preco, quantidadeEstoque, codigo, advertencias, categoria_id)
VALUES ("Besomed", 43.19, 45, "58978", "Este medicamento não deve ser usado em grávidas ou mulheres que estejam a amamentar. ", 5);

SELECT * FROM tb_categoria;

SELECT * FROM tb_produto;

SELECT * FROM tb_produto WHERE preco > 50;

SELECT * FROM tb_produto WHERE preco >= 3 AND preco <= 60;

SELECT * FROM tb_produto WHERE nome LIKE "%b%";

SELECT * FROM tb_produto
INNER JOIN tb_categoria WHERE tb_categoria.id = tb_produto.id;

SELECT * FROM tb_produto
INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id
WHERE categoria_id = 3;
