
-- Mostrando os usuários que são tanto locatários (fizeram reserva) quanto anfitriões (possuem propriedade)
SELECT DISTINCT NomeAnfitriao, SobrenomeAnfitriao, TelefoneAnfitriao 
    FROM (Propriedade JOIN Locacao ON(NomeAnfitriao=NomeLocatario AND SobrenomeAnfitriao=SobrenomeLocatario AND TelefoneAnfitriao=TelefoneLocatario));
