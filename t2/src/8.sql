-- 8) Mostre os anfitriões que têm pelo menos 3 imóveis, 
-- trazendo seu nome, sua cidade e a quantidade de imóveis dos quais ele é dono

-- Crie um índice que agilize a execução dessa consulta
CREATE INDEX idx_user_id ON Usuario(id);
CREATE INDEX idx_propanf_id ON Propriedade(idAnfitriao);

-- Realizando a consulta 8 auxiliada pelos index criados acima:
SELECT U.id, U.Nome, Count(P.id) as Qtd_Prop
    FROM (Usuario U JOIN Propriedade P ON (U.id = P.idAnfitriao)) GROUP BY U.id HAVING Count(DISTINCT P.id) >= 3 LIMIT 10;
