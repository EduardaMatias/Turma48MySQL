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

insert into tb_estoque(nome, tipo, marca, quantidade, preco)
values ("Mouse sem fio", "Computadores e informática", "Multilaser", 45, 33.50);

insert into tb_estoque(nome, tipo, marca, quantidade, preco)
values ("WebCam Full HD", "Computadores e informática", "Logitech", 25, 459.99);

insert into tb_estoque(nome, tipo, marca, quantidade, preco)
values ("Parafusadeira furadeira", "Ferramentas elétricas e manuais", "Bosch", 25, 314.90);

insert into tb_estoque(nome, tipo, marca, quantidade, preco)
values ("Barraca portátil Dinossauro", "Barracas infantis", "Kopeck", 115, 83.90);

insert into tb_estoque(nome, tipo, marca, quantidade, preco)
values ("Dinossauro Jurassic World", "Bonecos e figuras de ação", "Mattel", 50, 71.99);

insert into tb_estoque(nome, tipo, marca, quantidade, preco)
values ("Nintendo Switch", "Games e console", "Nintendo", 80, 1739.99);

insert into tb_estoque(nome, tipo, marca, quantidade, preco)
values ("Body", "Biquinis e maiôs", "Empress Brasil", 280, 225.00);

insert into tb_estoque(nome, tipo, marca, quantidade, preco)
values ("Ração sabor frango", "Pet shop", "Premier pet", 50, 137.17);

select * from tb_estoque;
select * from tb_estoque where preco > 500;
select * from tb_estoque where preco < 500;

update tb_estoque set preco = 1500 where id = 6;