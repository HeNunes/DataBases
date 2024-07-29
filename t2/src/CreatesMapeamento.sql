-- Criando as tabelas correspondentes ao mapeamento desenvolvido pelo grupo
DROP TABLE IF EXISTS Localizacao CASCADE;
CREATE TABLE Localizacao (
    CodigoLocal  NUMERIC       PRIMARY KEY,
    Cidade       VARCHAR(255)  NOT NULL,
    Estado       VARCHAR(255)  NOT NULL,
    Pais         VARCHAR(255)  NOT NULL,
    Bairro       VARCHAR(255)     
);

DROP TABLE IF EXISTS PontosDeInteresse CASCADE;
CREATE TABLE PontosDeInteresse (
    PontoDeInteresse  VARCHAR(255)  PRIMARY KEY,
    CodigoLocal       NUMERIC       NOT NULL,

    FOREIGN KEY (CodigoLocal) REFERENCES Localizacao(CodigoLocal)    
);

DROP TABLE IF EXISTS Mensagem CASCADE;
CREATE TABLE Mensagem (
    Remetente     VARCHAR(255)  NOT NULL,
    Timestamp     TIMESTAMP     NOT NULL,
    Destinatario  VARCHAR(255)  NOT NULL,
    Texto         TEXT          NOT NULL,
    
    PRIMARY KEY (Remetente, Timestamp)
);

DROP TABLE IF EXISTS Usuario CASCADE;
CREATE TABLE Usuario (
    Nome         VARCHAR(255)  NOT NULL,
    Sobrenome    VARCHAR(255)  NOT NULL,
    Telefone     VARCHAR(20)   NOT NULL,
    DataNasc     DATE          NOT NULL,
    Endereco     VARCHAR(255)  NOT NULL,
    Sexo         VARCHAR(20)   NOT NULL,
    Email        VARCHAR(255)  NOT NULL,
    Senha        VARCHAR(255)  NOT NULL,
    Anfitriao    BOOL          NOT NULL,
    Locatario    BOOL          NOT NULL,
    NumConta     VARCHAR(255),
    NumRot       VARCHAR(255),
    TipoConta    VARCHAR(255),
    CodigoLocal  NUMERIC       NOT NULL,

    PRIMARY KEY (Nome, Sobrenome, Telefone),
    FOREIGN KEY (CodigoLocal) REFERENCES Localizacao(CodigoLocal)     
);

DROP TABLE IF EXISTS Propriedade CASCADE;
CREATE TABLE Propriedade (
    NomeProp            VARCHAR(255)  NOT NULL,
    EnderecoProp        VARCHAR(255)  NOT NULL,
    Tipo                VARCHAR(255)  NOT NULL,
    NumQuartos          NUMERIC       NOT NULL,
    NumBanheiros        NUMERIC       NOT NULL,
    Pernoite            NUMERIC       NOT NULL,
    MaxHospedes         NUMERIC       NOT NULL,
    MinNoites           NUMERIC       NOT NULL,
    MaxNoites           NUMERIC       NOT NULL,
    TaxaLimpeza         NUMERIC,
    HCheckIn            TIME,
    HCheckOut           TIME,
    CodigoLocal         NUMERIC       NOT NULL,
    NomeAnfitriao       VARCHAR(255)  NOT NULL,
    SobrenomeAnfitriao  VARCHAR(255)  NOT NULL,
    TelefoneAnfitriao   VARCHAR(255)  NOT NULL,

    PRIMARY KEY (NomeProp, EnderecoProp),
    FOREIGN KEY (CodigoLocal) REFERENCES Localizacao(CodigoLocal),
    FOREIGN KEY (NomeAnfitriao, SobrenomeAnfitriao, TelefoneAnfitriao) REFERENCES Usuario(Nome, Sobrenome, Telefone)
);

DROP TABLE IF EXISTS Regras CASCADE;
CREATE TABLE Regras (
    Regra        TEXT         NOT NULL,
    NomeProp     VARCHAR(255) NOT NULL,
    EnderecoProp VARCHAR(255) NOT NULL,

    PRIMARY KEY (Regra, NomeProp, EnderecoProp),
    FOREIGN KEY (NomeProp, EnderecoProp) REFERENCES Propriedade(NomeProp, EnderecoProp)
);

DROP TABLE IF EXISTS Comodidades CASCADE;
CREATE TABLE Comodidades (
    Comodidade   TEXT         NOT NULL,
    NomeProp     VARCHAR(255) NOT NULL,
    EnderecoProp VARCHAR(255) NOT NULL,

    PRIMARY KEY (Comodidade, NomeProp, EnderecoProp),
    FOREIGN KEY (NomeProp, EnderecoProp) REFERENCES Propriedade(NomeProp, EnderecoProp)
);

DROP TABLE IF EXISTS Disponibilidade CASCADE;
CREATE TABLE Disponibilidade (
    Data         DATE         NOT NULL,
    Disponivel    BOOL        NOT NULL,
    NomeProp     VARCHAR(255) NOT NULL,
    EnderecoProp VARCHAR(255) NOT NULL,

    PRIMARY KEY (Data, Disponivel, NomeProp, EnderecoProp),
    FOREIGN KEY (NomeProp, EnderecoProp) REFERENCES Propriedade(NomeProp, EnderecoProp)
);


DROP TABLE IF EXISTS Locacao CASCADE;
CREATE TABLE Locacao (
    NomeLocatario        VARCHAR(255)  NOT NULL,
    SobrenomeLocatario   VARCHAR(255)  NOT NULL,
    TelefoneLocatario    VARCHAR(255)  NOT NULL,
    NomePropriedade      VARCHAR(255)  NOT NULL,
    EnderecoPropriedade  VARCHAR(255)  NOT NULL,
    Data                 DATE          NOT NULL,
    NumHospedes          NUMERIC       NOT NULL,
    Preco                NUMERIC,
    Imposto              NUMERIC,
    PrecoTotal           NUMERIC,
    CodigoPromo          NUMERIC,
    DescontoPromo        NUMERIC,
    Confirmada           BOOLEAN       NOT NULL,
    DataCheckIn          DATE,
    DataCheckOut         DATE,

    PRIMARY KEY (NomeLocatario, SobrenomeLocatario, TelefoneLocatario, NomePropriedade, EnderecoPropriedade, Data),
    FOREIGN KEY (NomeLocatario, SobrenomeLocatario, TelefoneLocatario) REFERENCES Usuario(Nome, Sobrenome, Telefone),
    FOREIGN KEY (NomePropriedade, EnderecoPropriedade) REFERENCES Propriedade(NomeProp, EnderecoProp)     
);

DROP TABLE IF EXISTS Quarto CASCADE;
CREATE TABLE Quarto (
    Numero               NUMERIC       NOT NULL,
    QtdCamas             NUMERIC       NOT NULL,
    TipoCamas            VARCHAR(255)  NOT NULL,
    NomePropriedade      VARCHAR(255)  NOT NULL,
    EnderecoPropriedade  VARCHAR(255)  NOT NULL,
    
    PRIMARY KEY (Numero, NomePropriedade, EnderecoPropriedade),
    FOREIGN KEY (NomePropriedade, EnderecoPropriedade) REFERENCES Propriedade(NomeProp, EnderecoProp)
);

DROP TABLE IF EXISTS Avalia CASCADE;
CREATE TABLE Avalia (
    NomePropriedade      VARCHAR(255)  NOT NULL,
    EnderecoPropriedade  VARCHAR(255)  NOT NULL,
    NomeLocatario        VARCHAR(255)  NOT NULL,
    SobrenomeLocatario   VARCHAR(255)  NOT NULL,
    TelefoneLocatario    VARCHAR(20)   NOT NULL,
    RemetenteMensagem    VARCHAR(255)  NOT NULL,
    TimestampMensagem    TIMESTAMP     NOT NULL,
    NotaLocal            NUMERIC,
    NotaComunicacao      NUMERIC,
    NotaValor            NUMERIC,
    NotaLimpesza         NUMERIC,
    Fotos                VARCHAR(2048),

    PRIMARY KEY (NomePropriedade, EnderecoPropriedade, NomeLocatario, SobrenomeLocatario, TelefoneLocatario, RemetenteMensagem, TimestampMensagem),
    FOREIGN KEY (NomePropriedade, EnderecoPropriedade) REFERENCES Propriedade(NomeProp, EnderecoProp),
    FOREIGN KEY (NomeLocatario, SobrenomeLocatario, TelefoneLocatario) REFERENCES Usuario(Nome, Sobrenome, Telefone),
    FOREIGN KEY (RemetenteMensagem, TimestampMensagem) REFERENCES Mensagem(Remetente, Timestamp)
);

DROP TABLE IF EXISTS EnviaMensagem CASCADE;
CREATE TABLE EnviaMensagem (
    NomeLocatario       VARCHAR(255)  NOT NULL,
    SobrenomeLocatario  VARCHAR(255)  NOT NULL,
    TelefoneLocatario   VARCHAR(255)  NOT NULL,
    NomeAnfitriao       VARCHAR(255)  NOT NULL,
    SobrenomeAnfitriao  VARCHAR(255)  NOT NULL,
    TelefoneAnfitriao   VARCHAR(255)  NOT NULL,
    RemetenteMensagem   VARCHAR(255)  NOT NULL,
    TimestampMensagem   TIMESTAMP     NOT NULL,

    PRIMARY KEY (NomeLocatario, SobrenomeLocatario, TelefoneLocatario, NomeAnfitriao, SobrenomeAnfitriao, TelefoneAnfitriao, RemetenteMensagem, TimestampMensagem),
    FOREIGN KEY (NomeLocatario, SobrenomeLocatario, TelefoneLocatario) REFERENCES Usuario(Nome, Sobrenome, Telefone),
    FOREIGN KEY (NomeAnfitriao, SobrenomeAnfitriao, TelefoneAnfitriao) REFERENCES Usuario(Nome, Sobrenome, Telefone),
    FOREIGN KEY (RemetenteMensagem, TimestampMensagem) REFERENCES Mensagem(Remetente, Timestamp)
);