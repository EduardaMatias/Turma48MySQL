/*
Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
informações dos estudantes deste registro dessa escola.

Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos estudantes para se trabalhar com o serviço dessa escola.

Popule esta tabela com até 8 dados;
Faça um select que retorne o/as estudantes com a nota maior do que 7;
Faça um select que retorne o/as estudantes com a nota menor do que 7;
Ao término atualize um dado desta tabela através de uma query de atualização.
*/

CREATE DATABASE db_eastHigh;

USE db_eastHigh;

CREATE TABLE tb_alunos(
	id bigint auto_increment,
	nome varchar(255),
    	matricula varchar(255),
	cpf varchar(11),
   	email varchar(255),
	nota double,

	primary key(id)
);

INSERT INTO tb_alunos(nome, matricula, cpf, email, nota) 
VALUES ("Troy Bolton", "25154565351", "52515874698", "troy.bolton@aluno.com", 7.5);

INSERT INTO tb_alunos(nome, matricula, cpf, email, nota) 
VALUES ("Gabriella Montez", "5848715423", "52545635814", "gabriella.montez@aluno.com", 9.5);

INSERT INTO tb_alunos(nome, matricula, cpf, email, nota) 
VALUES ("Sharpey Evans", "25847986351", "25436598745", "sharpey.evans@aluno.com", 10);

INSERT INTO tb_alunos(nome, matricula, cpf, email, nota) 
VALUES ("Ryan Evans", "25847857651", "25836365745", "ryan.evans@aluno.com", 10);

INSERT INTO tb_alunos(nome, matricula, cpf, email, nota) 
VALUES ("Chad Danforth", "27897989521", "25485598844", "chad.danforth@aluno.com", 6.4);

INSERT INTO tb_alunos(nome, matricula, cpf, email, nota) 
VALUES ("Zeke Baylor", "23897871231", "21683492814", "zeke.baylor@aluno.com", 6.0);

INSERT INTO tb_alunos(nome, matricula, cpf, email, nota) 
VALUES ("Kelsi Nielsen", "83858471311", "34683487414", "kelsi.nielsen@aluno.com", 9.5);

INSERT INTO tb_alunos(nome, matricula, cpf, email, nota) 
VALUES ("Taylor McKessie", "54818471241", "21782457114", "taylor.mckessie@aluno.com", 10);

SELECT * FROM tb_alunos;
SELECT * FROM tb_alunos WHERE nota > 7;
SELECT * FROM tb_alunos WHERE nota < 7;

UPDATE tb_alunos SET nota = "6.5" WHERE  id = 1;

