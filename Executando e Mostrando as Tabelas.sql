--Listar as tabelas no banco de dados
SELECT name
FROM sys.tables;

--Inserir Clientes
INSERT INTO Clientes (Nome, Email, Telefone) VALUES
('Carla Santos', 'carlasantos@email.com', '1199999-1233'),
('Cassia Silva', 'ana@email.com', '1199999-1111'),
('Judite Costa', 'judcosta@emai.com', '1199999-2222'),
('Carla Souza', 'carla@email.com', '1199999-3333');

--Conferir Clientes
SELECT * FROM Clientes;

--Inserir Produtos
INSERT INTO Produtos (Nome_do_Produto, Preco) VALUES
('Notebook', 3500.00),
('Mouse sem fio', 80.00),
('Teclado mecânico', 250.00),
('Monitor 24 polegadas', 900.00),
('Headset Gamer', 300.00);

--Conferir Produtos
SELECT * FROM Produtos;

--Inserir Pedidos
--Certificando-se de que os clientes existem
INSERT INTO Pedidos (Data_do_Pedido, Valor_Total, ID_Cliente) VALUES
('2025-08-15', 3850.00, 1), --Cassie Silva
('2025-08-16', 1450.00, 2), --Judite Costa
('2025-08-17', 1600.00, 3); --Carla Souza

SELECT * FROM Pedidos;

--Só inserir para pedidos existentes
INSERT INTO Itens_Pedido (ID_Pedido, ID_Produto, Quantidade) VALUES
--Pedido 1
(1,1,1), --Notebook
(1,2,1), --Mouse
(1,3,1), --Teclado

--Pedido 2
(2,4,1), --Monitor
(2,5,1), --Headset

--Pedido 3
(3,1,1), --Notebook
(3,5,1); --Headset

--Conferir itens de pedidos
SELECT * FROM Itens_Pedido;

SELECT*
FROM Clientes
WHERE Nome LIKE 'Carla%';

--Atualizar o telefone de um cliente
UPDATE Clientes
SET Telefone = '1199999-3344'
WHERE Nome = 'Carla Souza';

INSERT INTO Pedidos(Data_do_Pedido, Valor_Total, ID_Cliente) VALUES
('2025-08-18', 3800.00, 1), --Cassia Silva
('2025-08-19', 450.00, 2), --Judite Costa
('2025-08-20', 950.00, 3), --Carla Souza
('2025-08-21', 500.00, 2); --Judite Costa

SELECT * FROM Pedidos 

--Inserir itens dos novos pedidos
INSERT INTO itens_pedido (ID_Pedido, ID_Produto, Quantidade) VALUES
(4, 1, 1), --NOTEBOOOK
(4, 3, 1), --Teclado
(5, 5, 1), --Headset Gamer
(6, 2, 2), --Mouse sem fio
(6, 4, 1), --Monitor
(7, 3, 1), --Teclado
(7, 5, 1); --Headset Gamer

--Valor médio dos pedidos
SELECT AVG (Valor_Total) AS Media_Pedidos
FROM Pedidos;
