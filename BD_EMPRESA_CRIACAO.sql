CREATE DATABASE Empresa_3B;
USE Empresa_3B;

--Tabela clientes
CREATE TABLE Clientes(
	ID_Cliente INT IDENTITY PRIMARY KEY,
	Nome VARCHAR(100) NOT NULL,
	Email VARCHAR(100) UNIQUE NOT NULL,
	Telefone VARCHAR(20)
);

--Tabela pedidos
CREATE TABLE Pedidos(
	ID_Pedido INT IDENTITY PRIMARY KEY,
	Data_do_Pedido DATE NOT NULL,
	Valor_Total DECIMAL(10,2) NOT NULL,
	ID_Cliente INT,
	FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

--TABELA PRODUTOS
CREATE TABLE Produtos(
	ID_Produtos INT IDENTITY PRIMARY KEY,
	Nome_do_Produto VARCHAR(100) NOT NULL,
	Preco DECIMAL(10,2) NOT NULL
);

--TABELA Itens_Pedido
CREATE TABLE Itens_Pedido(
	Quantidade INT NOT NULL,
	ID_Item INT IDENTITY PRIMARY KEY,
	ID_Pedido INT,
	ID_Produto INT,
	FOREIGN KEY (ID_Pedido) REFERENCES Pedidos(ID_Pedido)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (ID_Produto) REFERENCES Produtos(ID_Produtos)
	--ON DELETE RESTRICT (função apenas do Mysql, no sql server já é padrão)
	ON UPDATE CASCADE
);
