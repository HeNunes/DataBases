-- 6) Para a relação que implementa o conceito de propriedades do sistema:

-- Mostre a estrutura da relação, mostrando os atributos de 10 tuplas aleatoriamente
SELECT * from Propriedade ORDER BY RANDOM() LIMIT 10;

-- Mostre quantas propriedades existem de cada classe
SELECT Tipo, Count(*) FROM Propriedade GROUP BY Tipo;

-- Mostre quantas localizações existem na base (obs.: Nos arquivos, a localização é dada apenas pelo bairro)
SELECT Count(DISTINCT Bairro) AS Num_Bairros FROM Propriedade; 