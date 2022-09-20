SELECT * FROM Vendas;
SELECT * FROM Produto_acabado;

SELECT v.id_produto,V.valor_unit,V.valor_total,MONTH(V.data_venda) ano
FROM VENDAS V
WHERE V.valor_total > 20
ORDER BY ano ASC;

SELECT v.id_produto,V.valor_unit,V.valor_total,MONTH(V.data_venda) ano
FROM VENDAS V
WHERE V.valor_total > 20
ORDER BY ano ASC;

INSERT INTO Vendas VALUES
(2,15,7.50,'2022/31/05'),
(2,10,4.80,'2022/25/06'),
(2,14,9.00,'2022/08/09'),
(12,20,5.60,'2022/31/10')