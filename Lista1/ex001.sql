/*
Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
trabalhará com as informações dos funcionaries desta empresa.

Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.

Popule esta tabela com até 5 dados;
Faça um select que retorne os funcionaries com o salário maior do que 2000;
Faça um select que retorne os funcionaries com o salário menor do que 2000;
Ao término atualize um dado desta tabela através de uma query de atualização.
*/

CREATE DATABASE db_google;

USE db_google;

CREATE TABLE tb_funcionario(
	id bigint auto_increment,
        nome varchar(255),
        cpf varchar(11),
        cargo varchar(255),
    	dataFiliacao date,
    	salario double,
    
    primary key(id)
);

insert into tb_funcionario (nome,cpf, cargo, dataFiliacao, salario) 
values ("Paula Martins", "58477759812", "Dev Júnior", "2021-09-05", 1550);

insert into tb_funcionario (nome,cpf, cargo, dataFiliacao, salario) 
values ("Luiz Henrique", "58465784215", "Dev Pleno", "2018-08-02", 4500);

insert into tb_funcionario (nome,cpf, cargo, dataFiliacao, salario) 
values ("Mateus Henrique", "25848695715", "Estagiario", "2022-01-05", 900);

insert into tb_funcionario (nome,cpf, cargo, dataFiliacao, salario) 
values ("Jessica Silva", "12545878965", "Dev Sênior", "2014-06-02", 8500);

insert into tb_funcionario (nome,cpf, cargo, dataFiliacao, salario) 
values ("João Vitor", "25847896515", "Estagiario", "2022-01-05", 900);

select * from tb_funcionario;
select * from tb_funcionario where salario > 2000;
select * from tb_funcionario where salario < 2000;

update tb_funcionario set cargo = "Dev Júnior", salario = 1550 where id = 3;
