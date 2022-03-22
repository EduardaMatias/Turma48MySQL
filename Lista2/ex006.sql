CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(
	id bigint auto_increment,
	tipo varchar(255),
    material_complementar boolean, /*verifica se o tipo de curso oferece material complementar*/
    certificado boolean /*verifica se o tipo de curso oferece material certificado*/,

	primary key(id)
);

INSERT INTO tb_categoria(tipo, material_complementar, certificado)
VALUES("Design", true, false);

INSERT INTO tb_categoria(tipo, material_complementar, certificado)
VALUES("TI/Informática", true, true);

INSERT INTO tb_categoria(tipo, material_complementar, certificado)
VALUES("Idioma", true, true);

SELECT * FROM tb_categoria;

CREATE TABLE tb_curso(
	id bigint auto_increment,
	nome varchar(255),
    professor varchar(255),
    preco double,
    quantidade_horas int,
    avaliacao double,
	categoria_id bigint,
    
	primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
);

INSERT INTO tb_curso(nome, professor, preco, quantidade_horas, avaliacao, categoria_id)
VALUES("Figma", "Luiz Carlos", 184.90, 20, 4.8, 1);

INSERT INTO tb_curso(nome, professor, preco, quantidade_horas, avaliacao, categoria_id)
VALUES("Python", "Julia Videira", 249.90, 22, 4.6, 2);

INSERT INTO tb_curso(nome, professor, preco, quantidade_horas, avaliacao, categoria_id)
VALUES("HTML", "Josué Henrique", 129.90, 7, 4.6, 2);

INSERT INTO tb_curso(nome, professor, preco, quantidade_horas, avaliacao, categoria_id)
VALUES("Introdução ao Blender", "Paulo Marcos", 0, 4, 4.7, 1);

INSERT INTO tb_curso(nome, professor, preco, quantidade_horas, avaliacao, categoria_id)
VALUES("Inglês", "Luiza Alencar", 39.90, 17, 4.6, 3);

INSERT INTO tb_curso(nome, professor, preco, quantidade_horas, avaliacao, categoria_id)
VALUES("Francês completo", "Raquel Dantas", 209.90, 9, 4.4, 3);

INSERT INTO tb_curso(nome, professor, preco, quantidade_horas, avaliacao, categoria_id)
VALUES("Espanhol", "Kessia Martin", 39.90, 52, 4.4, 3);

INSERT INTO tb_curso(nome, professor, preco, quantidade_horas, avaliacao, categoria_id)
VALUES("Japonês", "Lucas Aguiar", 49.90, 40, 4.6, 3);

SELECT * FROM tb_curso;

SELECT * FROM tb_curso WHERE preco > 50;

SELECT * FROM tb_curso WHERE preco >= 3 AND preco <= 60;

SELECT * FROM tb_curso WHERE nome LIKE "%j%";

SELECT * FROM tb_curso
INNER JOIN tb_categoria ON tb_categoria.id = tb_curso.categoria_id;

SELECT * FROM tb_curso
INNER JOIN tb_categoria ON tb_curso.categoria_id = tb_categoria.id
WHERE categoria_id = 3;

