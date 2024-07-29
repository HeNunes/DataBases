
-- Mostrando os locatários mais jovens do que ALGUM anfitrião
SELECT DISTINCT Nome, Sobrenome, Telefone 
        FROM (Usuario JOIN Locacao ON(Nome=NomeLocatario AND Sobrenome=SobrenomeLocatario AND Telefone=TelefoneLocatario))  
        WHERE DataNasc > ANY(SELECT DataNasc FROM Usuario JOIN Propriedade ON(Nome=NomeAnfitriao AND Sobrenome=SobrenomeAnfitriao AND Telefone=TelefoneAnfitriao));
        
-- Mostrando os locatários mais jovens do que TODOS os anfitriões
SELECT DISTINCT Nome, Sobrenome, Telefone 
        FROM (Usuario JOIN Locacao ON(Nome=NomeLocatario AND Sobrenome=SobrenomeLocatario AND Telefone=TelefoneLocatario))  
        WHERE DataNasc > ALL(SELECT DataNasc FROM Usuario JOIN Propriedade ON(Nome=NomeAnfitriao AND Sobrenome=SobrenomeAnfitriao AND Telefone=TelefoneAnfitriao));
