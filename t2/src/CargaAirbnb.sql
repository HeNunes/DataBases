-- Carregando os dados dos arquivos para as tabelas criadas:
COPY Listings
    FROM '/home/pavlova/prog/USP/5-semestre/bd/T2/listings.csv' 
        WITH (FORMAT CSV, 
              DELIMITER E',', 
              ENCODING 'UTF8',
              NULL '',
              QUOTE '"',
              HEADER true);

COPY Calendar
    FROM '/home/pavlova/prog/USP/5-semestre/bd/T2/calendar.csv' 
        WITH (FORMAT CSV, 
              DELIMITER E',', 
              ENCODING 'UTF8',
              NULL '',
              QUOTE '"',
              HEADER true);

COPY Reviews
    FROM '/home/pavlova/prog/USP/5-semestre/bd/T2/reviews.csv' 
        WITH (FORMAT CSV, 
              DELIMITER E',', 
              ENCODING 'UTF8',
              NULL '',
              QUOTE '"',
              HEADER true);