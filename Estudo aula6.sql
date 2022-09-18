CREATE TABLE VENDAS (
	id INT IDENTITY(1,1) PRIMARY KEY,
	cod_prod VARCHAR(10) NOT NULL,
	cliente VARCHAR(50) NOT NULL,
	produto VARCHAR(100) NOT NULL,
	valor_venda DECIMAL(5,2) NOT NULL,
	desconto DECIMAL (5,2),
	valor_final as(valor_venda - desconto),
);

/*SELECT v.* FROM VENDAS v
WHERE v.cod_prod >= 01;*/

INSERT INTO VENDAS VALUES
	('001','Lojão das roupas','Camisa Polo',90.00,2.00),
	('002','C & A','Calça jeans Masc',110.00,5.00),
	('003','Riachuelo','Calça jeans Fem',135.00,7.00),
	('004','Narciso','Camisa Regata',45.00,9.00),
	('005','Marisa','Camiseta básica',35.00,5.00),
	('006','Marisa','Camiseta silk',55.00,5.00),
	('007','San Remo','Camiseta color bk',45.00,2.00),
	('008','Paloma','Bermuda Sarja',90.00,4.00),
	('009','Lojão das roupas','Bermuda Surf Neoprene',125.00,9.00),
	('010','Lojão das roupas','Bermuda Tactel',35.00,2.00)

SELECT * FROM VENDAS;


SELECT
	v.cliente,
	SUM(v.valor_final) AS venda_por_cliente
FROM 
	VENDAS v
GROUP BY 
	v.cliente 
ORDER BY
	venda_por_cliente DESC
	


/*DROP TABLE VENDAS;*/
