
-- Mostrando os atributos chave, nome do anfitriao e locatário, numero de dias locado e pernoite para cada locação confirmada a partir de 01/04/2024
SELECT CodigoLoc, NomePropriedade, EnderecoPropriedade, NomeLocatario, NomeAnfitriao, (DataCheckOut - DataCheckIn) AS TotalDias, Pernoite
        FROM (Propriedade JOIN Locacao ON (NomeProp=NomePropriedade AND EnderecoProp=EnderecoPropriedade)) 
        WHERE Confirmada=true AND DataReserva >= '2024-04-01';  
