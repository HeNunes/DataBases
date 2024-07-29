
-- Mostrando a média das pernoites das reservas de cada mês
SELECT DATE_PART('month', DATE_TRUNC('month', DataReserva)) AS Mes, TRUNC(AVG(Pernoite), 2) AS MediaDiarias 
    FROM (Propriedade JOIN Locacao ON(NomeProp=NomePropriedade AND EnderecoProp=EnderecoPropriedade)) 
    GROUP BY DATE_PART('month', DATE_TRUNC('month', DataReserva)) ORDER BY DATE_PART('month', DATE_TRUNC('month', DataReserva));
    
-- Mostrando a média das pernoites das reservas confirmadas de cada mês
SELECT DATE_PART('month', DATE_TRUNC('month', DataReserva)) AS Mes, TRUNC(AVG(Pernoite), 2) AS MediaDiarias 
    FROM (Propriedade JOIN Locacao ON(NomeProp=NomePropriedade AND EnderecoProp=EnderecoPropriedade)) 
    WHERE Confirmada=true
    GROUP BY DATE_PART('month', DATE_TRUNC('month', DataReserva)) ORDER BY DATE_PART('month', DATE_TRUNC('month', DataReserva));
