/*Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.

Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.

Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500;
Faça um select que retorne os produtos com o valor menor do que 500;
Ao término atualize um dado desta tabela através de uma query de atualização.
*/

CREATE DATABASE db_amazon;

use db_amazon;

CREATE TABLE tb_estoque(
	id bigint auto_increment,
   	nome varchar(255),
    	tipo varchar(255),
    	marca varchar(255),
    	quantidade int,
    	preco double,
	
    primary key(id)
);

INSERT INTO tb_estoque(nome, tipo, marca, quantidade, preco)
VALUES ("Mouse sem fio", "Computadores e informática", "Multilaser", 45, 33.50);

INSERT INTO tb_estoque(nome, tipo, marca, quantidade, preco)
VALUES ("WebCam Full HD", "Computadores e informática", "Logitech", 25, 459.99);

INSERT INTO tb_estoque(nome, tipo, marca, quantidade, preco)
VALUES ("Parafusadeira furadeira", "Ferramentas elétricas e manuais", "Bosch", 25, 314.90);

INSERT INTO tb_estoque(nome, tipo, marca, quantidade, preco)
VALUES ("Barraca portátil Dinossauro", "Barracas infantis", "Kopeck", 115, 83.90);

INSERT INTO tb_estoque(nome, tipo, marca, quantidade, preco)
VALUES ("Dinossauro Jurassic World", "Bonecos e figuras de ação", "Mattel", 50, 71.99);

INSERT INTO tb_estoque(nome, tipo, marca, quantidade, preco)
VALUES ("Nintendo Switch", "Games e console", "Nintendo", 80, 1739.99);

INSERT INTO tb_estoque(nome, tipo, marca, quantidade, preco)
VALUES ("Body", "Biquinis e maiôs", "Empress Brasil", 280, 225.00);

INSERT INTO tb_estoque(nome, tipo, marca, quantidade, preco)
VALUES ("Ração sabor frango", "Pet shop", "Premier pet", 50, 137.17);

SELECT * FROM tb_estoque;
SELECT * FROM tb_estoque WHERE preco > 500;
SELECT * FROM tb_estoque WHERE preco < 500;

UPDATE tb_estoque SET preco = 1500 WHERE id = 6;
