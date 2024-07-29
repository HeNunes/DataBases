-- Realizando a carga das tabelas mapeadas a partir dos dados do Airbnb
-- Para que fosse possível realizar a carga, algumas alterações foram realizadas:
--      1. Foram retiradas algumas constraints, uma vez que os atributos chave das relações não existem na tabela
--      2. Foram adicionados "id's" como chaves primárias de algumas relações
--      3. Foram retiradas as colunas nulas das tabelas
-- Abaixo, os comandos de criação das tabelas alteradas e, em seguida, a carga das mesmas

DROP TABLE IF EXISTS Usuario CASCADE;
CREATE TABLE Usuario(
    id        NUMERIC       PRIMARY KEY, -- PK adicionada
    Nome      VARCHAR(255),
    Anfitriao BOOLEAN,
    Locatario BOOLEAN
);

DROP TABLE IF EXISTS Propriedade CASCADE;
CREATE TABLE Propriedade(
    id          NUMERIC       PRIMARY KEY, -- PK adiocionada
    Nome        VARCHAR(255),
    idAnfitriao NUMERIC,
    Tipo        VARCHAR(255),
    Preco       NUMERIC,
    MinNoites   NUMERIC,
    Bairro      VARCHAR(255),

    FOREIGN KEY (idAnfitriao) REFERENCES Usuario(id)
);

DROP TABLE IF EXISTS Disponibilidade CASCADE;
CREATE TABLE Disponibilidade(
    idPropriedade NUMERIC,
    Data          DATE,
    Disponivel    BOOLEAN,

    PRIMARY KEY (idPropriedade, Data),
    FOREIGN KEY (idPropriedade) REFERENCES Propriedade(id)
);

DROP TABLE IF EXISTS Menssagem CASCADE;
CREATE TABLE Menssagem(
    id            NUMERIC       PRIMARY KEY, -- PK adicionada
    NomeLocatario VARCHAR(255),
    Texto         TEXT
);

DROP TABLE IF EXISTS Avalia CASCADE;
CREATE TABLE Avalia(
    id            NUMERIC PRIMARY KEY, -- PK adicionada
    idPropriedade NUMERIC,
    idLocatario   NUMERIC,
    Data          DATE,

    FOREIGN KEY (idPropriedade) REFERENCES Propriedade(id),
    FOREIGN KEY (idLocatario) REFERENCES Usuario(id),
    FOREIGN KEY (id) REFERENCES Menssagem(id)
);


-- Carga das tabelas mapeadas:

BEGIN TRANSACTION;

INSERT INTO Usuario (id, Nome, Anfitriao, Locatario) -- Carregando os "reviewers" como locatários
SELECT DISTINCT ON (reviewer_id) reviewer_id, reviewer_name, FALSE, TRUE FROM Reviews;
INSERT INTO Usuario (id, Nome, Anfitriao, Locatario) -- Carregando os "hosts" como anfitriões
SELECT DISTINCT ON (host_id) host_id, host_name, TRUE, FALSE FROM Listings
ON CONFLICT (id) -- Caso o anfitrião seja também locatário, e ja exista na tabela, apenas a flag é atualizada.
DO UPDATE SET Anfitriao = TRUE;

INSERT INTO Propriedade (id, Nome, idAnfitriao, Tipo, Preco, MinNoites, Bairro) -- Carregando as propriedades
SELECT id, name, host_id, room_type, price, minimum_nights, neighbourhood FROM Listings;

INSERT INTO Disponibilidade (idPropriedade, Data, Disponivel) -- Carregando as disponibilidades
SELECT listing_id, date, available FROM Calendar;

INSERT INTO Menssagem (id, NomeLocatario, Texto) -- Carregando as mensagens
SELECT id, reviewer_name, comments FROM Reviews;

INSERT INTO Avalia (id, idPropriedade, idLocatario, Data) -- Carregando as avaliações
SELECT id, listing_id, reviewer_id, date FROM Reviews;

COMMIT;