USE SQL_DB_estudos;

CREATE TABLE Vendas 
(
	id_venda INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
	id_produto INT NOT NULL,
	quantidade_vendida INT NOT NULL,
	valor_unit DECIMAL (14,2) NOT NULL,
	valor_total AS (quantidade_vendida * valor_unit ),
	data_venda datetime NOT NULL

CONSTRAINT fk_produto FOREIGN KEY (id_produto) REFERENCES Produto_acabado(id_produto)

);

SELECT * FROM Vendas;

INSERT INTO Vendas
    (id_produto,quantidade_vendida,valor_unit,data_venda)
VALUES
	(2,5,7.20,GETDATE()),
	(3,9,8.50,GETDATE());

CREATE TABLE Produto_acabado
(
	id_produto INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
	cod_produto INT NOT NULL,
	descricao_produto VARCHAR(200),
	quantidade_produzida INT NOT NULL,
	custo_unit DECIMAL (14,2) NOT NULL,
	custo_prod AS (quantidade_produzida * custo_unit),
	data_producao datetime NOT NULL

);

INSERT INTO Produto_acabado VALUES
	(101,'calça jeans',10,3.90,2022-07-09),
	(102,'camisa social',12,4.67,2022-09-07),
	(103,'camiseta',12,3.12,2022-03-02),
	(104,'calça social',10,3.50,2022-03-02),
	(105,'bermuda',20,2.10,2022-03-20),
	(106,'short',20,2.05,2022-04-05);


