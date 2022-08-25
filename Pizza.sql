CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id bigint auto_increment primary key,
	descricao varchar(255),
	tamanho varchar(255),
    borda_recheada boolean
);

CREATE TABLE tb_pizzas(
	id bigint auto_increment primary key,
	sabor varchar(255),
    preco decimal(6,2),
	massa varchar(255),
    quantidade int,
    categoria_id bigint,
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada","Brotinho",true);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada","Brotinho",false);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada","Medio",true);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada","Medio",false);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada","Grande",true);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Salgada","Grande",false);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Doce","Brotinho",true);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Doce","Grande",true);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Vegetariana","Brotinho",true);
INSERT INTO tb_categorias(descricao, tamanho, borda_recheada)VALUES("Vegana","Brotinho",false);

SELECT * FROM tb_pizzas;

INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)VALUES("Frango C/ Catupiry",30.00,"tradicional",5,1);
INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)VALUES("Mussarela",38.00,"tradicional",5,2);
INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)VALUES("Prestígio",40.00,"tradicional",2,8);
INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)VALUES("Lombo C/ Catupiry",45.00,"tradicional",3,6);
INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)VALUES("Brocolis C/ Catupiry",33.00,"tradicional",4,9);
INSERT INTO tb_pizzas(sabor, preco, massa, quantidade, categoria_id)VALUES("Calabresa",35.00,"tradicional",5,1);

SELECT * FROM tb_pizzas WHERE preco > 45.00 ORDER BY preco DESC;
SELECT * FROM tb_pizzas WHERE preco >= 50 AND preco <= 100;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;
SELECT sabor FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;
SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id;




