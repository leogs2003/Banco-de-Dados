create database db_generation;

use db_generation;

create table tb_aluno(
id bigint auto_increment primary key,
nome varchar(255),
data_nascimento date,
turma int,
nota decimal (4,2)
);

select * from tb_aluno;

insert into tb_aluno(nome,data_nascimento,turma,nota)value("Leonardo Gonçalves","2003-04-23","57","10");
insert into tb_aluno(nome,data_nascimento,turma,nota)value("Julio Cesar","2000-09-28","57","8");
insert into tb_aluno(nome,data_nascimento,turma,nota)value("Carlos Eduardo","1999-08-08","57","9");
insert into tb_aluno(nome,data_nascimento,turma,nota)value("Julia","2004-11-18","57","5");
insert into tb_aluno(nome,data_nascimento,turma,nota)value("hellen","1999-03-02","57","9");




select * from tb_aluno;

select * from tb_aluno where nota > 7;
select * from tb_aluno where nota < 7;

update tb_aluno set nota = 7 where id=4;

select* from tb_aluno;




