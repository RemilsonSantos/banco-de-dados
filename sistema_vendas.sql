CREATE DATABASE sistema_vendas
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

USE sistema_vendas;


CREATE TABLE clientes(
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(30) NOT NULL,
	email VARCHAR(50),
	telefone VARCHAR(11),
	PRIMARY KEY(id) 
)ENGINE = InnoDB DEFAULT CHARSET = utf8;

drop table produtos;
CREATE TABLE produtos(
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(30) NOT NULL,
	categoria VARCHAR(50),
	preco DECIMAL(10,2),
	PRIMARY KEY(id) 
)ENGINE = InnoDB DEFAULT CHARSET = utf8;


CREATE TABLE vendas(
	id INT NOT NULL AUTO_INCREMENT,
	id_clientes INT NOT NULL,
	id_produto INT NOT NULL,
	quantidade INT NOT NULL,
	valor_total DECIMAL(10,2) NOT NULL,
	data_venda DATE NOT NULL,
	PRIMARY KEY(id),
    
    CONSTRAINT fk_clientes_vendas FOREIGN KEY(id_clientes) REFERENCES clientes(id),
    CONSTRAINT fk_produtos_vendas FOREIGN KEY(id_produto) REFERENCES produtos(id)
)ENGINE = InnoDB DEFAULT CHARSET = utf8;
