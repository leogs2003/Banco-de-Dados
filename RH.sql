create database db_RH;
use db_RH;

create table tb_colaboradores(
id bigint auto_increment primary key,
cpf varchar(14),
nome varchar(155),
telefone char(11),
salario decimal(10,2)
);

select * from tb_colaboradores;

insert into tb_colaboradores(cpf,nome,telefone,salario)value("567.598.986-90","Leonardo silva","11967890098","3.000");
insert into tb_colaboradores(cpf,nome,telefone,salario)value("435.658.735-99","Leon gonçalves","11966657899","3.300");
insert into tb_colaboradores(cpf,nome,telefone,salario)value("431.543.789-48","Amanda fernandes","11967890098","1.800");
insert into tb_colaboradores(cpf,nome,telefone,salario)value("456.765.456-55","icaro batista","11991119966","2.000");
insert into tb_colaboradores(cpf,nome,telefone,salario)value("112.566.988-00","Tony","11955670808","1.900");

select * from tb_colaboradores where salario > 2.000;
select * from tb_colaboradores where salario < 2.000;

select * from tb_colaboradores;



