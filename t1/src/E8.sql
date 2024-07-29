
-- Mostrando o nome, cidade e número de propriedades dos anfitriões cujas propriedades possuem 3 ou mais locações
SELECT NomeAnfitriao, Cidade, Count(DISTINCT (NomeProp, EnderecoProp)) as QtdProp
    FROM ((Localizacao JOIN Usuario USING(CodigoLocal)) 
        JOIN (Propriedade LEFT OUTER 
            JOIN Locacao ON(NomeProp=NomePropriedade AND EnderecoProp=EnderecoPropriedade))
                ON(Nome=NomeAnfitriao AND Sobrenome=SobrenomeAnfitriao AND Telefone=TelefoneAnfitriao)) 
            GROUP BY NomeAnfitriao, SobrenomeAnfitriao, TelefoneAnfitriao, Cidade HAVING Count(CodigoLoc) >= 3;
