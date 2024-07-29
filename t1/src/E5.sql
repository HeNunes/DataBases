
-- Mostrando toda a relação de propriedades
SELECT * 
	FROM Propriedade;

-- Mostrando o número de propriedades por tipo
SELECT Tipo, Count(*) AS QtdPorTipo 
	FROM Propriedade GROUP BY Tipo;

-- Mostrando o número de propriedades por cidade
SELECT Cidade, Count(*) AS QtdPorCidade 
	FROM (Propriedade JOIN Localizacao USING(CodigoLocal)) 
	GROUP BY Cidade;
