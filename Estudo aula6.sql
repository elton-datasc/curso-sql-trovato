CREATE TABLE VENDAS (
	id INT IDENTITY(1,1) PRIMARY KEY,
	cod_prod VARCHAR(10),
	produto VARCHAR(100),
	valor_venda DECIMAL(5,2),
	desconto DECIMAL (5,2),
	valor_final as(valor_venda - desconto),
);

/*SELECT v.* FROM VENDAS v
WHERE v.cod_prod >= 01;*/

INSERT INTO VENDAS VALUES
	('001','Camisa Polo',90.00,2.00),
	('002','Calça jeans Masc',110.00,5.00),
	('003','Calça jeans Fem',135.00,7.00),
	('004','Camisa Regata',45.00,9.00),
	('005','Camiseta básica',35.00,5.00),
	('006','Camiseta silk',55.00,5.00),
	('007','Camiseta color bk',45.00,2.00),
	('008','Bermuda Sarja',90.00,4.00),
	('009','Bermuda Surf Neoprene',125.00,9.00),
	('010','Bermuda Tactel',35.00,2.00)

SELECT * FROM VENDAS;

select v.* FROM 
	VENDAS v
WHERE
	v.valor_final >= 100;

/*DROP TABLE VENDAS;*/
