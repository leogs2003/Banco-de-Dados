CREATE DATABASE db_ecommerce;
USE db_ecommerce;
CREATE TABLE tb_produto(
id int auto_increment primary key,
quantidade int,
valor decimal (10,2),
codigo_de_barras int,
nome varchar(150)
);

INSERT INTO tb_produto(quantidade, valor, nome)
VALUES(500,1600.00, "fone");
INSERT INTO tb_produto(quantidade, valor, nome)
VALUES(500,1000.00, "teclado");
INSERT INTO tb_produto(quantidade, valor, nome)
VALUES(500,600.00, "mouse");
INSERT INTO tb_produto(quantidade, valor, nome)
VALUES(500,150.00, "gabinete");
INSERT INTO tb_produto(quantidade, valor, nome)
VALUES(500,300.00, "memoria");
INSERT INTO tb_produto(quantidade, valor, nome)
VALUES(500,200.00, "hd");
INSERT INTO tb_produto(quantidade, valor, nome)
VALUES(500,2000.00, "ssd");
INSERT INTO tb_produto(quantidade, valor, nome)
VALUES(500,700.00, "monitor");


SELECT * FROM tb_produto WHERE valor > 500.00;
SELECT * FROM tb_produto WHERE valor < 500.00;
UPDATE tb_produto SET salario = 1700 where id = 2 ;