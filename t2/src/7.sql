-- 7) Crie uma visão chamada "PropriedadesDisponiveis" que mostra as propriedades disponíveis para locação em 2024

-- Crie o comando da visão
DROP VIEW IF EXISTS PropriedadesDisponiveis;

CREATE VIEW PropriedadesDisponiveis AS
SELECT DISTINCT
    P.id,
    P.Nome,
    P.idAnfitriao,
    P.Tipo,
    P.Preco,
    P.MinNoites,
    P.Bairro
FROM (Propriedade P JOIN Disponibilidade D ON (P.id = D.idPropriedade))
WHERE D.Disponivel = TRUE AND EXTRACT(YEAR FROM D.Data) = 2024;

-- Execute uma consulta usando essa visão que mostre preço por noite médio de todas as 
-- propriedades disponíveis para a locação em cada um dos meses de 2024
WITH PropriedadesMes AS (
    SELECT P.id, P.Preco, EXTRACT(MONTH FROM DS.Data) AS Mes
    FROM PropriedadesDisponiveis P 
        JOIN (SELECT * FROM Disponibilidade D 
                WHERE D.Disponivel = TRUE AND 
                    EXTRACT(YEAR FROM D.Data) = 2024) AS DS
        ON P.id = DS.idPropriedade
    GROUP BY P.id, P.Preco, EXTRACT(MONTH FROM DS.Data)
)
SELECT Mes, AVG(Preco) AS PrecoMedio
FROM PropriedadesMes
GROUP BY Mes ORDER BY Mes;