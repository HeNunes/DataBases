%%sql

INSERT INTO Regras VALUES ('Não é permitida a entrada de animais.');
INSERT INTO Regras VALUES ('Não é permitido fumar na propriedade.');
INSERT INTO Regras VALUES ('O locatário é responsável pela limpeza do local.');
INSERT INTO Regras VALUES ('É proibido som alto na propriedade, independente do horário.');
INSERT INTO Regras VALUES ('Crianças desacompanhadas não devem andar sozinhas fora do apartamento.');
INSERT INTO Regras VALUES ('Quando estiver com bagagens ou qualquer tipo de carga, deve ser utilizado o elevador de serviço.');
INSERT INTO Regras VALUES ('Não é permitida a entrada de pessoas não mencionadas na reserva.');
INSERT INTO Regras VALUES ('A propriedade deve estar inalterada ao fim da reserva.');
INSERT INTO Regras VALUES ('Só são permitidos animais de médio porte ou menores.');
INSERT INTO Regras VALUES ('O aluguel não pode ser utilizado para fins lucrativos.');

INSERT INTO Comodidades VALUES ('Ar Condicionado');
INSERT INTO Comodidades VALUES ('Wi-Fi');
INSERT INTO Comodidades VALUES ('Máquina de lavar');
INSERT INTO Comodidades VALUES ('Playground');
INSERT INTO Comodidades VALUES ('Serviço de limpeza');
INSERT INTO Comodidades VALUES ('Piscina');
INSERT INTO Comodidades VALUES ('Vaga de estacionamento');
INSERT INTO Comodidades VALUES ('TV a cabo');
INSERT INTO Comodidades VALUES ('Academia');
INSERT INTO Comodidades VALUES ('Área de lazer');

INSERT INTO Localizacao VALUES (1,  'São Paulo',       'São Paulo',    'Brasil', 'Barra Funda');
INSERT INTO Localizacao VALUES (2,  'São Paulo',       'São Paulo',    'Brasil', 'Bixiga');
INSERT INTO Localizacao VALUES (3,  'São Paulo',       'São Paulo',    'Brasil', 'Lapa');
INSERT INTO Localizacao VALUES (4,  'São Carlos',      'São Paulo',    'Brasil', 'Jardim Lutfalla');
INSERT INTO Localizacao VALUES (5,  'São Carlos',      'São Paulo',    'Brasil', 'Parque Arnold Schmidt');
INSERT INTO Localizacao VALUES (6,  'Taboão da Serra', 'São Paulo',    'Brasil', 'Jardim Clementino');
INSERT INTO Localizacao VALUES (7,  'Araguari',        'Minas Gerais', 'Brasil',  null);
INSERT INTO Localizacao VALUES (8,  'Uberaba',         'Minas Gerais', 'Brasil',  null);
INSERT INTO Localizacao VALUES (9,  'Uberlandia',      'Minas Gerais', 'Brasil',  null);
INSERT INTO Localizacao VALUES (10, 'Salvador',        'Bahia',        'Brasil', 'Bonfim');

INSERT INTO Mensagem VALUES ('Pedro',     '2024-05-19 09:00:00', 'Marcelo',   'Posso levar meu labrador?');
INSERT INTO Mensagem VALUES ('Marcelo',   '2024-05-19 09:00:05', 'Pedro',     'Pode, aceitamos animais.');
INSERT INTO Mensagem VALUES ('Alice',     '2024-02-24 08:54:06', 'Luiz',      'Encontrei legumes mofados na geladeira!');
INSERT INTO Mensagem VALUES ('Cristiano', '2024-03-21 07:43:21', 'Marcelo',   'Boa tarde, sabe me dizer se o bairro é agitado?');
INSERT INTO Mensagem VALUES ('Marcelo',   '2024-03-22 12:00:32', 'Cristiano', 'Não é não, é um bairro residencial super tranquilo.');
INSERT INTO Mensagem VALUES ('Maria',     '2024-05-19 09:30:35', 'Adriano',   'Adorei a casa, muito espaçosa e confotável! Bom para levar crianças.');
INSERT INTO Mensagem VALUES ('Alice',     '2024-04-13 15:47:31', 'Marcelo',   'Ambiente super aconchegante, muitas comodidades e vizinhança tranquila.');
INSERT INTO Mensagem VALUES ('Janie',     '2024-05-19 19:29:39', 'Lucimar',   'Residência super fofa e organizada, perfeito para quem vai a trabalho.');
INSERT INTO Mensagem VALUES ('Lucimar',   '2024-01-12 11:22:33', 'Janie',     'Olá Janie, obrigada pela avaliação, fico feliz que você gostado do imóvel!');
INSERT INTO Mensagem VALUES ('Josefine',  '2024-02-24 01:02:03', 'Claudio',   'Estadia simplesmente apocalíptica. Casa bagunçada e vizinhança barulhenta.');
INSERT INTO Mensagem VALUES ('Pedro',     '2024-05-07 10:23:22' , 'Marcelo',  'Gostei muito da estadia, meu labrador se divertiu também!');
INSERT INTO Mensagem VALUES ('Marcelo',   '2024-04-04 12:05:36' , 'Jose',     'Espaço amplo, ambiente bonito e agradável, adorei a estadia.');
INSERT INTO Mensagem VALUES ('Alice',     '2024-05-07 22:50:12' , 'Luiz',     'Terrivel! Encontrei legumes podres na geladeira, o ambiente estava bagunçado e sujo!');
INSERT INTO Mensagem VALUES ('Ellen',     '2024-06-08 03:21:54' , 'Adriano',  'GOstei.');
INSERT INTO Mensagem VALUES ('Maria',     '2024-04-04 15:30:44' , 'Lucimar',  'Legal, mas o anfitriao demorou a responder, perdi a novela pois nao sabia onde estava o controle da tv.');
INSERT INTO Mensagem VALUES ('Janie',     '2024-02-05 00:02:40' , 'Claudio',  'Propaganda enganosa, casa caótica e vizinhança nem se fala! Não volto nem que me paguem!');
INSERT INTO Mensagem VALUES ('Josefine',  '2024-08-14 21:47:42' , 'Sergio',   'Adorei minha estadia, vista muito linda que te permite olhar as estrlas, ano que vem estou de volta.');
INSERT INTO Mensagem VALUES ('Cristiano', '2024-07-17 11:22:23' , 'Sabrina',  'Legal a vibe.');
INSERT INTO Mensagem VALUES ('Joao',      '2024-04-13 10:22:23' , 'Luiza',    'Nada além do esperado.');
INSERT INTO Mensagem VALUES ('Olga',      '2024-04-21 17:11:55' , 'Joan',     'Me diverti bastante.');

INSERT INTO Usuario VALUES ('Marcelo',   'Doze',      '(12)91212-1212', '1988-05-12', 'Rua Cezar Ricomi 41',                  'Masculino',   'marcelo12@gmail.com',      'EuM@rcelo12',    4);
INSERT INTO Usuario VALUES ('Pedro',     'Monteiro',  '(12)91234-5678', '2003-12-09', 'Avenida Trabalhador São Carlense 85',  'Masculino',   'pedroM@gmail.com',         'pedrosenha123',  5);
INSERT INTO Usuario VALUES ('Alice',     'Lejeune',   '(12)96699-9966', '1992-04-21', 'Rua Anhanguera 174',                   'Feminino',    'ALJen@gmail.com',          'ZGRVM6',         1);
INSERT INTO Usuario VALUES ('Ellen',     'Orsolini',  '(12)94321-4321', '1999-11-30', 'Rua Altieri 55',                       'Feminino',    'EllO@gmail.com',           'PTDBOL10',       1);
INSERT INTO Usuario VALUES ('Maria',     'Tella',     '(12)91313-1313', '1999-07-05', 'Est. Kizaemon Takeuti 44',             'Feminino',    'MTella@gmail.com',         'SALVK17',        6);
INSERT INTO Usuario VALUES ('Janie',     'Jones',     '(12)97654-1234', '2002-02-02', 'Rua Antonio Raposo 41',                'Feminino',    'ILWJJones@gmail.com',      'TCUKFirstAlbum', 3);
INSERT INTO Usuario VALUES ('Josefine',  'Clauss',    '(12)91712-1212', '1969-08-18', 'Rua do Bixiga 14',                     'Feminino',    'JSClauss@gmail.com',       'LEOLM12',        2);
INSERT INTO Usuario VALUES ('Cristiano', 'Almeiro',   '(12)99212-1212', '1968-08-22', 'Rua do Bixiga 632',                    'Masculino',   'CrisAL@gmail.com',         'CA680822',       2);
INSERT INTO Usuario VALUES ('Joao',      'Marcelino', '(12)93312-1212', '1950-01-11', 'Rua Afif Rade 631',                    'Masculino',   'BasicJoao@gmail.com',      'SoOBasicoJ',     7);
INSERT INTO Usuario VALUES ('Olga',      'Noskova',   '(12)97712-1212', '2001-02-22', 'Rua Canaa 39',                         'Feminino',    'ONosk@gmail.com',          'MirrorGlaze01',  9);
INSERT INTO Usuario VALUES ('Marco',     'Reus',      '(12)91009-9001', '1989-05-31', 'Rua Afonsa Pena 10',                   'Masculino',   'MarcinhoR10@gmail.com',    'BVBChamps1024',  8);
INSERT INTO Usuario VALUES ('Jose',      'Deodo',     '(12)98888-8888', '2002-10-19', 'Avenida Trabalhador São Carlense 451', 'Masculino',   'ESTjosedeodo@gmail.com',   'ESTRALnoMSI',    5);
INSERT INTO Usuario VALUES ('Luiz',      'Schulz',    '(12)98888-7777', '1991-05-11', 'Rua Anhanguera 721',                   'Masculino',   'LFSchulz@gmail.com',       'SantaCatarina',  1);
INSERT INTO Usuario VALUES ('Adriano',   'Imperador', '(12)98888-6666', '1979-10-21', 'Rua Altieri 912',                      'Masculino',   'AdrImperador@gmail.com',   '10daInter',      1);
INSERT INTO Usuario VALUES ('Lucimar',   'Lucimar',   '(12)98888-5555', '1996-07-05', 'Est. Kizaemon Takeuti 66',             'Não Binárie', 'LuLucimar@gmail.com',      'EuLucimar32',    6);
INSERT INTO Usuario VALUES ('Pedoze',    'Otal',      '(12)98778-5129', '2003-07-29', 'Est. Kizaemon Takeuti 21',             'Masculino',   'P12Otal@gmail.com',        'CeniBurro12',    6);
INSERT INTO Usuario VALUES ('Bruno',     'Pezesse',   '(12)98118-5311', '2004-11-02', 'Est. Kizaemon Takeuti 96',             'Masculino',   'DJBruninPZS@gmail.com',    'Mandelaço77',    6);
INSERT INTO Usuario VALUES ('Claudio',   'Augusto',   '(12)98888-4444', '1993-11-15', 'Rua Antonio Raposo 987',               'Masculino',   'Claudin02@gmail.com',      '88440202',       3);
INSERT INTO Usuario VALUES ('Sergio',    'Sacani',    '(12)98888-3333', '1970-08-02', 'Rua do Bixiga 141',                    'Masculino',   'SerFoguetes@gmail.com',    'FogueteS78',     2);
INSERT INTO Usuario VALUES ('Sabrina',   'Silva',     '(12)98888-2222', '1973-03-30', 'Rua do Bixiga 171',                    'Feminino',    'SaSaSilva@gmail.com',      '22886808',       2);
INSERT INTO Usuario VALUES ('Luiza',     'Moedas',    '(12)93312-1111', '1998-07-11', 'Rua Afif Rade 23',                     'Feminino',    'LMoedas@gmail.com',        'SeTuMeQuiseres', 7);
INSERT INTO Usuario VALUES ('Joan',      'Jett',      '(12)97712-4002', '2000-02-13', 'Rua Canaa 44',                         'Feminino',    'JJetBlackheart@gmail.com', 'IluvRNR77',      9);

INSERT INTO Propriedade VALUES ('Pousadinha',        'Rua Cezar Ricomi 44',                  'Quarto Individual',    1, 1, 100,  2,  1, 7,  '2024-05-01', '2024-05-31', 50,   '08:00:00', '00:00:00',  4,  'Marcelo', 'Doze',      '(12)91212-1212');
INSERT INTO Propriedade VALUES ('Loft Estiloso',     'Avenida Trabalhador São Carlense 812', 'Casa',                 3, 4, 500,  8,  3, 10, '2024-02-05', '2024-12-15', 140,   null,       null,       5,  'Jose',    'Deodo',     '(12)98888-8888');
INSERT INTO Propriedade VALUES ('Inferno',           'Rua Anhanguera 777',                   'Casa',                 2, 2, 250,  4,  1, 10, '2024-03-03', '2024-11-29', 50,    null,       null,       1,  'Luiz',    'Schulz',    '(12)98888-7777');
INSERT INTO Propriedade VALUES ('Cantinho',          'Rua Altieri 54',                       'Quarto Compartilhado', 1, 1, 50,   2,  3, 7,   null,         null,        null, '06:00:00', '22:00:00',  1,  'Adriano', 'Imperador', '(12)98888-6666');
INSERT INTO Propriedade VALUES ('Casa de Campo',     'Est. Kizaemon Takeuti 69',             'Casa',                 2, 1, 100,  4,  1, 8,  '2024-03-22', '2024-06-30', 0,     null,       null,       6,  'Lucimar', 'Lucimar',   '(12)98888-5555');
INSERT INTO Propriedade VALUES ('Beira Mar',         'Rua Antonio Raposo 123',               'Casa',                 1, 1, 160,  3,  4, 10,  null,         null,        null, '07:00:00', '23:00:00',  3,  'Claudio', 'Augusto',   '(12)98888-4444');
INSERT INTO Propriedade VALUES ('Conde de Araras',   'Rua do Bixiga 12',                     'Quarto Individual',    1, 1, 115,  2,  1, 10, '2024-01-01', '2024-12-31', 60,   '05:00:00', '18:00:00',  2,  'Sergio',  'Sacani',    '(12)98888-3333');
INSERT INTO Propriedade VALUES ('Recanto',           'Rua do Bixiga 254',                    'Casa',                 3, 3, 379,  7,  3, 9,  '2024-03-03', '2024-09-09', 137,  '07:33:33', '17:33:33',  2,  'Sabrina', 'Silva',     '(12)98888-2222');
INSERT INTO Propriedade VALUES ('Casa Luxuosa',      'Rua Afif Rade 10',                     'Casa',                 5, 7, 1000, 10, 5, 20, '2024-01-01', '2024-10-01', 300,   null,       null,       7,  'Luiza',   'Moedas',    '(12)93312-1111');
INSERT INTO Propriedade VALUES ('Aconcheguinho',     'Rua Canaa 44',                         'Quarto Compartilhado', 1, 1, 60,   1,  3, 7,  '2024-04-02', '2024-09-24', null, '06:00:00', '00:00:00',  9,  'Joan',    'Jett',      '(12)97712-4002');
INSERT INTO Propriedade VALUES ('Muralha Amarela',   'Avenida Oceanica 1000',                'Quarto Individual',    1, 2, 190,  2,  1, 11, '2024-05-05', '2024-12-10', 40,    null,       null,      10,  'Marco',   'Reus',      '(12)91009-9001');
INSERT INTO Propriedade VALUES ('Casa BVB 09',       'Avenida Oceanica 1090',                'Casa',                 3, 4, 300,  6,  3, 9,  '2024-05-05', '2024-10-12', 100,  '06:00:00', '18:00:00', 10,  'Marco',   'Reus',      '(12)91009-9001');
INSERT INTO Propriedade VALUES ('Edificio Tamandua', 'Rua Caviuna 410',                      'Quarto Individual',    1, 1, 100,  2,  2, 5,   null,         null,        20,   '08:00:00', '16:00:00', 9,   'Luiza',   'Moedas',    '(12)93312-1111');
INSERT INTO Propriedade VALUES ('Edificio Bandeira', 'Rua Caviuna 420',                      'Quarto Individual',    1, 1, 100,  2,  2, 5,   null,         null,        20,   '08:00:00', '16:00:00', 9,   'Luiza',   'Moedas',    '(12)93312-1111');

INSERT INTO Locacao VALUES (1,  2, 500,   35,   526.5, 762,  58.5,   true,   '2024-05-01', '2024-05-03', '2024-05-07', 'Pedro',     'Monteiro',  '(12)91234-5678', 'Pousadinha',      'Rua Cezar Ricomi 44');
INSERT INTO Locacao VALUES (2,  7, 1500,  110,  1750,  null, null,   true,   '2024-03-24', '2024-04-02', '2024-04-04', 'Marcelo',   'Doze',      '(12)91212-1212', 'Loft Estiloso',   'Avenida Trabalhador São Carlense 812');
INSERT INTO Locacao VALUES (3,  1, 250,   20,   270,   null, null,   true,   '2024-05-05', '2024-05-06', '2024-05-07', 'Alice',     'Lejeune',   '(12)96699-9966', 'Inferno',         'Rua Anhanguera 777');
INSERT INTO Locacao VALUES (4,  1, 250,   null, 150,   777,  100,    true,   '2024-04-04', '2024-06-04', '2024-06-08', 'Ellen',     'Orsolini',  '(12)94321-4321', 'Cantinho',        'Rua Altieri 54');
INSERT INTO Locacao VALUES (5,  3, 700,   20,   685,   3245, 35,     true,   '2024-03-30', '2024-04-01', '2024-04-04', 'Maria',     'Tella',     '(12)91313-1313', 'Casa de Campo',   'Est. Kizaemon Takeuti 69');
INSERT INTO Locacao VALUES (6,  1, 800,   null, null,  null, null,   true,   '2024-01-16', '2024-02-01', '2024-02-05', 'Janie',     'Jones',     '(12)97654-1234', 'Beira Mar',       'Rua Antonio Raposo 123');
INSERT INTO Locacao VALUES (7,  2, 920,   0,    880,   777,  100,    true,   '2024-07-08', '2024-08-07', '2024-08-14', 'Josefine',  'Clauss',    '(12)91712-1212', 'Conde de Araras', 'Rua do Bixiga 12');
INSERT INTO Locacao VALUES (8,  3, 1895,  null, 1699,  1379, 333,    true,   '2024-07-07', '2024-07-13', '2024-07-17', 'Cristiano', 'Almeiro',   '(12)99212-1212', 'Recanto',         'Rua do Bixiga 254');
INSERT INTO Locacao VALUES (9,  2, 16000, 250,  16550, null, null,   true,   '2024-02-02', '2024-03-29', '2024-04-13', 'Joao',      'Marcelino', '(12)93312-1212', 'Casa Luxuosa',    'Rua Afif Rade 10');
INSERT INTO Locacao VALUES (10, 2, 180,   20,   190,   1441, 10,     true,   '2024-04-17', '2024-04-19', '2024-04-21', 'Olga',      'Noskova',   '(12)97712-1212', 'Aconcheguinho',   'Rua Canaa 44');
INSERT INTO Locacao VALUES (11, 5, 1000,  200,  5200,  null, null,   false,  '2024-09-20', '2024-09-20', '2024-09-25', 'Pedro',     'Monteiro',  '(12)91234-5678', 'Casa Luxuosa',    'Rua Afif Rade 10');
INSERT INTO Locacao VALUES (12, 2, 300,   15,   265,   2993, 50,     true,   '2024-06-07', '2024-06-19', '2024-06-21', 'Olga',      'Noskova',   '(12)97712-1212', 'Casa de Campo',   'Est. Kizaemon Takeuti 69');
INSERT INTO Locacao VALUES (13, 2, 300,   15,   265,   2993, 50,     false,  '2024-04-07', '2024-05-19', '2024-05-21', 'Olga',      'Noskova',   '(12)97712-1212', 'Casa de Campo',   'Est. Kizaemon Takeuti 69');
INSERT INTO Locacao VALUES (14, 2, 1500,  50,   1655,  5757, 85,     false,  '2024-03-13', '2024-03-17', '2024-03-20', 'Maria',     'Tella',     '(12)91313-1313', 'Loft Estiloso',   'Avenida Trabalhador São Carlense 812');
INSERT INTO Locacao VALUES (15, 2, 960,   null, null,  null, null,   false,  '2024-02-23', '2024-02-25', '2024-03-01', 'Alice',     'Lejeune',   '(12)96699-9966', 'Beira Mar',       'Rua Antonio Raposo 123');
INSERT INTO Locacao VALUES (16, 2, 115,   20,   250,   null, null,   true,   '2024-01-18', '2024-01-22', '2024-04-24', 'Pedro',     'Monteiro',  '(12)91234-5678', 'Conde de Araras', 'Rua do Bixiga 12');
INSERT INTO Locacao VALUES (17, 4, 1500,  0,    1400,  1090, 200,    true,   '2024-05-05', '2024-05-05', '2024-05-10', 'Marcelo',   'Doze',      '(12)91212-1212', 'Casa BVB 09',       'Avenida Oceanica 1090');
INSERT INTO Locacao VALUES (18, 5, 1800,  0,    1700,  1090, 200,    true,   '2024-06-09', '2024-06-15', '2024-06-21', 'Jose',      'Deodo',     '(12)98888-8888', 'Casa BVB 09',       'Avenida Oceanica 1090');
INSERT INTO Locacao VALUES (19, 3, 900,   0,    100,   null, null,   true,   '2024-05-05', '2024-05-11', '2024-05-14', 'Adriano',   'Imperador', '(12)98888-6666', 'Casa BVB 09',       'Avenida Oceanica 1090');
INSERT INTO Locacao VALUES (20, 4, 400,   30,   440,   1111, 10,     true,   '2024-02-01', '2024-02-21', '2024-02-25', 'Lucimar',   'Lucimar',   '(12)98888-5555', 'Edificio Tamandua', 'Rua Caviuna 410');
INSERT INTO Locacao VALUES (21, 4, 400,   30,   440,   1111, 10,     true,   '2024-02-01', '2024-02-21', '2024-02-25', 'Alice',     'Lejeune',   '(12)96699-9966', 'Edificio Bandeira', 'Rua Caviuna 420');
INSERT INTO Locacao VALUES (22, 4, 400,   50,   450,   null, null,   false,  '2024-03-05', '2024-03-21', '2024-03-25', 'Pedoze',    'Otal',      '(12)98778-5129', 'Casa de Campo',   'Est. Kizaemon Takeuti 69');
INSERT INTO Locacao VALUES (23, 4, 400,   50,   450,   null, null,   false,  '2024-04-04', '2024-04-05', '2024-04-09', 'Bruno',     'Pezesse',   '(12)98118-5311', 'Casa de Campo',   'Est. Kizaemon Takeuti 69');

INSERT INTO PontosDeInteresse VALUES ('Proximo ao Impulso Park',1);
INSERT INTO PontosDeInteresse VALUES ('Proximo à Academia Orion',2);
INSERT INTO PontosDeInteresse VALUES ('Proximo a Praça Vidal Antonio de castro',3);
INSERT INTO PontosDeInteresse VALUES ('Nas redondezas do Habib´s',4);
INSERT INTO PontosDeInteresse VALUES ('Nas redondezas do USP Campus 1',5);
INSERT INTO PontosDeInteresse VALUES ('Perto de Mini Mercado Progresso',6);
INSERT INTO PontosDeInteresse VALUES ('Ao lado do Orsi Hotel',7);
INSERT INTO PontosDeInteresse VALUES ('Proximo ao Mercado Municipal',8);
INSERT INTO PontosDeInteresse VALUES ('Proximo ao Minas Tchê', 9);
INSERT INTO PontosDeInteresse VALUES ('Nas redondezas do Bar Sindicato da Cerveja', 10);

INSERT INTO PropPossuiRegra VALUES ('Cantinho', 'Rua Altieri 54', 'Não é permitida a entrada de animais.');
INSERT INTO PropPossuiRegra VALUES ('Cantinho', 'Rua Altieri 54', 'Não é permitido fumar na propriedade.');
INSERT INTO PropPossuiRegra VALUES ('Cantinho', 'Rua Altieri 54', 'O locatário é responsável pela limpeza do local.');
INSERT INTO PropPossuiRegra VALUES ('Conde de Araras', 'Rua do Bixiga 12', 'É proibido som alto na propriedade, independente do horário.');
INSERT INTO PropPossuiRegra VALUES ('Conde de Araras', 'Rua do Bixiga 12', 'Só são permitidos animais de médio porte ou menores.');
INSERT INTO PropPossuiRegra VALUES ('Conde de Araras', 'Rua do Bixiga 12', 'Quando estiver com bagagens ou qualquer tipo de carga, deve ser utilizado o elevador de serviço.');
INSERT INTO PropPossuiRegra VALUES ('Recanto', 'Rua do Bixiga 254', 'A propriedade deve estar inalterada ao fim da reserva.');
INSERT INTO PropPossuiRegra VALUES ('Recanto', 'Rua do Bixiga 254', 'É proibido som alto na propriedade, independente do horário.');
INSERT INTO PropPossuiRegra VALUES ('Recanto', 'Rua do Bixiga 254', 'O aluguel não pode ser utilizado para fins lucrativos.');
INSERT INTO PropPossuiRegra VALUES ('Aconcheguinho', 'Rua Canaa 44', 'Crianças desacompanhadas não devem andar sozinhas fora do apartamento.');

INSERT INTO PropPossuiComodidade VALUES ('Pousadinha', 'Rua Cezar Ricomi 44', 'Wi-Fi', null);
INSERT INTO PropPossuiComodidade VALUES ('Pousadinha', 'Rua Cezar Ricomi 44', 'Ar Condicionado', 2);
INSERT INTO PropPossuiComodidade VALUES ('Pousadinha', 'Rua Cezar Ricomi 44', 'Playground', 1);
INSERT INTO PropPossuiComodidade VALUES ('Cantinho', 'Rua Altieri 54', 'Wi-Fi', null);
INSERT INTO PropPossuiComodidade VALUES ('Casa de Campo', 'Est. Kizaemon Takeuti 69', 'Piscina', 1);
INSERT INTO PropPossuiComodidade VALUES ('Casa de Campo', 'Est. Kizaemon Takeuti 69', 'Vaga de estacionamento', 1);
INSERT INTO PropPossuiComodidade VALUES ('Casa Luxuosa', 'Rua Afif Rade 10', 'Wi-Fi', null);
INSERT INTO PropPossuiComodidade VALUES ('Casa Luxuosa', 'Rua Afif Rade 10', 'Ar Condicionado', 4);
INSERT INTO PropPossuiComodidade VALUES ('Casa Luxuosa', 'Rua Afif Rade 10', 'Área de lazer', 2);
INSERT INTO PropPossuiComodidade VALUES ('Casa Luxuosa', 'Rua Afif Rade 10', 'Academia', 1);

INSERT INTO ContaBancaria VALUES ('9375284610385729', '837464321', 'Poupança', 'Marcelo', 'Doze',      '(12)91212-1212');
INSERT INTO ContaBancaria VALUES ('4816372594821057', '295737765', 'Corrente', 'Jose',    'Deodo',     '(12)98888-8888');
INSERT INTO ContaBancaria VALUES ('7293581046283741', '614289090', 'Corrente', 'Luiz',    'Schulz',    '(12)98888-7777');
INSERT INTO ContaBancaria VALUES ('3847102965718243', '482190011', 'Corrente', 'Adriano', 'Imperador', '(12)98888-6666');
INSERT INTO ContaBancaria VALUES ('5462389471562038', '950371122', 'Poupança', 'Lucimar', 'Lucimar',   '(12)98888-5555');
INSERT INTO ContaBancaria VALUES ('1782504932684175', '173641244', 'Poupança', 'Claudio', 'Augusto',   '(12)98888-4444');
INSERT INTO ContaBancaria VALUES ('6824197380453162', '528914444', 'Poupança', 'Sergio',  'Sacani',    '(12)98888-3333');
INSERT INTO ContaBancaria VALUES ('9531287410564937', '304574469', 'Poupança', 'Sabrina', 'Silva',     '(12)98888-2222');
INSERT INTO ContaBancaria VALUES ('2048596381724301', '691025475', 'Corrente', 'Luiza',   'Moedas',    '(12)93312-1111');
INSERT INTO ContaBancaria VALUES ('7310485927461983', '756841313', 'Poupança', 'Joan',    'Jett',      '(12)97712-4002');
INSERT INTO ContaBancaria VALUES ('7710332424451188', '955661556', 'Poupança', 'Marco',   'Reus',      '(12)91009-9001');

INSERT INTO Quarto VALUES ('1', '1', 'Casal',    'Pousadinha',      'Rua Cezar Ricomi 44');
INSERT INTO Quarto VALUES ('1', '2', 'Solteiro', 'Loft Estiloso',   'Avenida Trabalhador São Carlense 812');
INSERT INTO Quarto VALUES ('2', '2', 'Solteiro', 'Loft Estiloso',   'Avenida Trabalhador São Carlense 812');
INSERT INTO Quarto VALUES ('3', '2', 'Casal',    'Loft Estiloso',   'Avenida Trabalhador São Carlense 812');
INSERT INTO Quarto VALUES ('1', '1', 'Casal',    'Inferno',         'Rua Anhanguera 777');
INSERT INTO Quarto VALUES ('2', '2', 'Solteiro', 'Inferno',         'Rua Anhanguera 777');
INSERT INTO Quarto VALUES ('1', '3', 'Solteiro', 'Cantinho',        'Rua Altieri 54');
INSERT INTO Quarto VALUES ('1', '1', 'Casal',    'Casa de Campo',   'Est. Kizaemon Takeuti 69');
INSERT INTO Quarto VALUES ('2', '1', 'Casal',    'Casa de Campo',   'Est. Kizaemon Takeuti 69');
INSERT INTO Quarto VALUES ('1', '3', 'Solteiro', 'Beira Mar',       'Rua Antonio Raposo 123');
INSERT INTO Quarto VALUES ('1', '1', 'Casal',    'Conde de Araras', 'Rua do Bixiga 12');
INSERT INTO Quarto VALUES ('1', '1', 'Casal',    'Recanto',         'Rua do Bixiga 254');
INSERT INTO Quarto VALUES ('2', '1', 'Casal',    'Recanto',         'Rua do Bixiga 254');
INSERT INTO Quarto VALUES ('3', '3', 'Solteiro', 'Recanto',         'Rua do Bixiga 254');
INSERT INTO Quarto VALUES ('1', '1', 'Casal',    'Casa Luxuosa',    'Rua Afif Rade 10');
INSERT INTO Quarto VALUES ('2', '1', 'Casal',    'Casa Luxuosa',    'Rua Afif Rade 10');
INSERT INTO Quarto VALUES ('3', '1', 'Casal',    'Casa Luxuosa',    'Rua Afif Rade 10');
INSERT INTO Quarto VALUES ('4', '1', 'Casal',    'Casa Luxuosa',    'Rua Afif Rade 10');
INSERT INTO Quarto VALUES ('5', '1', 'Casal',    'Casa Luxuosa',    'Rua Afif Rade 10');
INSERT INTO Quarto VALUES ('1', '1', 'Solteiro', 'Aconcheguinho',   'Rua Canaa 44');
INSERT INTO Quarto VALUES ('1', '1', 'Casal',    'Muralha Amarela',   'Avenida Oceanica 1000');
INSERT INTO Quarto VALUES ('1', '1', 'Casal',    'Casa BVB 09',       'Avenida Oceanica 1090');
INSERT INTO Quarto VALUES ('2', '2', 'Solteiro', 'Casa BVB 09',       'Avenida Oceanica 1090');
INSERT INTO Quarto VALUES ('3', '1', 'Casal',    'Casa BVB 09',       'Avenida Oceanica 1090');
INSERT INTO Quarto VALUES ('1', '1', 'Casal',    'Edificio Tamandua', 'Rua Caviuna 410');
INSERT INTO Quarto VALUES ('1', '1', 'Casal',    'Edificio Bandeira', 'Rua Caviuna 420');

INSERT INTO Avalia VALUES ('Pousadinha',      'Rua Cezar Ricomi 44',                  'Pedro',     'Monteiro',  '(12)91234-5678', 'Pedro',     '2024-05-07 10:23:22', 8,    10,   9,    8,    'foto_pousadinha.jpg');
INSERT INTO Avalia VALUES ('Loft Estiloso',   'Avenida Trabalhador São Carlense 812', 'Marcelo',   'Doze',      '(12)91212-1212', 'Marcelo',   '2024-04-04 12:05:36', 10,   10,   10,   10,   'foto_loft.jpg');
INSERT INTO Avalia VALUES ('Inferno',         'Rua Anhanguera 777',                   'Alice',      'Lejeune',   '(12)96699-9966', 'Alice',     '2024-05-07 22:50:12', 0,    0,    0,    0,    'foto_inferno.jpg');
INSERT INTO Avalia VALUES ('Cantinho',        'Rua Altieri 54',                       'Ellen',     'Orsolini',  '(12)94321-4321', 'Ellen',     '2024-06-08 03:21:54', 7,    7,    7,    7,     null);
INSERT INTO Avalia VALUES ('Casa de Campo',   'Est. Kizaemon Takeuti 69',             'Maria',     'Tella',     '(12)91313-1313', 'Maria',     '2024-04-04 15:30:44', 8,    3,    7,    7,    'foto_casadecampo.jpg');
INSERT INTO Avalia VALUES ('Beira Mar',       'Rua Antonio Raposo 123',               'Janie',     'Jones',     '(12)97654-1234', 'Janie',     '2024-02-05 00:02:40', 0,    0,    0,    0,    'foto_beiramar.jpg');
INSERT INTO Avalia VALUES ('Conde de Araras', 'Rua do Bixiga 12',                     'Josefine',  'Clauss',    '(12)91712-1212', 'Josefine',  '2024-08-14 21:47:42', 10,   10,   10,   10,    null);
INSERT INTO Avalia VALUES ('Recanto',         'Rua do Bixiga 254',                    'Cristiano', 'Almeiro',   '(12)99212-1212', 'Cristiano', '2024-07-17 11:22:23', null, null, null, null,  null);
INSERT INTO Avalia VALUES ('Casa Luxuosa',    'Rua Afif Rade 10',                     'Joao',      'Marcelino', '(12)93312-1212', 'Joao',      '2024-04-13 10:22:23', null, null, null, null, 'foto_casaluxuosa.jpg');
INSERT INTO Avalia VALUES ('Aconcheguinho',   'Rua Canaa 44',                         'Olga',      'Noskova',   '(12)97712-1212', 'Olga',      '2024-04-21 17:11:55', 8,    8.5,  8.6,  8.7,   null);

INSERT INTO EnviaMensagem VALUES ('Pedro',     'Monteiro',  '(12)91234-5678', 'Marcelo', 'Doze',      '(12)91212-1212', 'Pedro',     '2024-05-19 09:00:00');
INSERT INTO EnviaMensagem VALUES ('Pedro',     'Monteiro',  '(12)91234-5678', 'Marcelo', 'Doze',      '(12)91212-1212', 'Marcelo',   '2024-05-19 09:00:05');
INSERT INTO EnviaMensagem VALUES ('Alice',     'Lejeune',   '(12)96699-9966', 'Luiz',    'Schulz',    '(12)98888-7777', 'Alice',     '2024-02-24 08:54:06');
INSERT INTO EnviaMensagem VALUES ('Cristiano', 'Almeiro',   '(12)99212-1212', 'Marcelo', 'Doze',      '(12)91212-1212', 'Cristiano', '2024-03-21 07:43:21');
INSERT INTO EnviaMensagem VALUES ('Cristiano', 'Almeiro',   '(12)99212-1212', 'Marcelo', 'Doze',      '(12)91212-1212', 'Marcelo',   '2024-03-22 12:00:32');
INSERT INTO EnviaMensagem VALUES ('Maria',     'Tella',     '(12)91313-1313', 'Adriano', 'Imperador', '(12)98888-6666', 'Maria',     '2024-05-19 09:30:35');
INSERT INTO EnviaMensagem VALUES ('Alice',     'Lejeune',   '(12)96699-9966', 'Marcelo', 'Doze',      '(12)91212-1212', 'Alice',     '2024-04-13 15:47:31');
INSERT INTO EnviaMensagem VALUES ('Janie',     'Jones',     '(12)97654-1234', 'Lucimar', 'Lucimar',   '(12)98888-5555', 'Janie',     '2024-05-19 19:29:39');
INSERT INTO EnviaMensagem VALUES ('Janie',     'Jones',     '(12)97654-1234', 'Lucimar', 'Lucimar',   '(12)98888-5555', 'Lucimar',   '2024-01-12 11:22:33');
INSERT INTO EnviaMensagem VALUES ('Josefine',  'Clauss',    '(12)91712-1212', 'Claudio', 'Augusto',   '(12)98888-4444', 'Josefine',  '2024-02-24 01:02:03');
INSERT INTO EnviaMensagem VALUES ('Pedro',     'Monteiro',  '(12)91234-5678', 'Marcelo', 'Doze',      '(12)91212-1212', 'Pedro',     '2024-05-07 10:23:22');
INSERT INTO EnviaMensagem VALUES ('Marcelo',   'Doze',      '(12)91212-1212', 'Jose',    'Deodo',     '(12)98888-8888', 'Marcelo',   '2024-04-04 12:05:36');
INSERT INTO EnviaMensagem VALUES ('Alice',     'Lejeune',   '(12)96699-9966', 'Luiz',    'Schulz',    '(12)98888-7777', 'Alice',     '2024-05-07 22:50:12');
INSERT INTO EnviaMensagem VALUES ('Ellen',     'Orsolini',  '(12)94321-4321', 'Adriano', 'Imperador', '(12)98888-6666', 'Ellen',     '2024-06-08 03:21:54');
INSERT INTO EnviaMensagem VALUES ('Maria',     'Tella',     '(12)91313-1313', 'Lucimar', 'Lucimar',   '(12)98888-5555', 'Maria',     '2024-04-04 15:30:44');
INSERT INTO EnviaMensagem VALUES ('Janie',     'Jones',     '(12)97654-1234', 'Claudio', 'Augusto',   '(12)98888-4444', 'Janie',     '2024-02-05 00:02:40');
INSERT INTO EnviaMensagem VALUES ('Josefine',  'Clauss',    '(12)91712-1212', 'Sergio',  'Sacani',    '(12)98888-3333', 'Josefine',  '2024-08-14 21:47:42');
INSERT INTO EnviaMensagem VALUES ('Cristiano', 'Almeiro',   '(12)99212-1212', 'Sabrina', 'Silva',     '(12)98888-2222', 'Cristiano', '2024-07-17 11:22:23');
INSERT INTO EnviaMensagem VALUES ('Joao',      'Marcelino', '(12)93312-1212', 'Luiza',   'Moedas',    '(12)93312-1111', 'Joao',      '2024-04-13 10:22:23');
INSERT INTO EnviaMensagem VALUES ('Olga',      'Noskova',   '(12)97712-1212', 'Joan',    'Jett',      '(12)97712-4002', 'Olga',      '2024-04-21 17:11:55');
