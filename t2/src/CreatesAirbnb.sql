-- Criação das tabelas relativas aos arquivos do Airbnb:
DROP TABLE IF EXISTS Listings CASCADE;
CREATE TABLE Listings(
    id NUMERIC PRIMARY KEY,
    name VARCHAR(255),
    host_id NUMERIC,
    host_name VARCHAR(255),
    neighbourhood_group VARCHAR(255),
    neighbourhood VARCHAR(255),
    latitude DECIMAL(11, 6),
    longitude DECIMAL(11, 6),
    room_type VARCHAR(255),
    price NUMERIC,
    minimum_nights NUMERIC,
    number_of_reviews NUMERIC,
    last_review DATE,
    reviews_per_month DECIMAL(5, 2),
    calculated_host_listings_count NUMERIC,
    availability_365 NUMERIC,
    number_of_reviews_ltm NUMERIC,
    license TEXT
);

DROP TABLE IF EXISTS Calendar CASCADE;
CREATE TABLE Calendar (
    listing_id NUMERIC, 
    date DATE,
    available BOOLEAN, 
    price VARCHAR(255),
    adjusted_price MONEY,
    minimum_nights NUMERIC,
    maximum_nights NUMERIC,

    PRIMARY KEY (listing_id, date),
    FOREIGN KEY (listing_id) REFERENCES Listings(id)
);

DROP TABLE IF EXISTS Reviews CASCADE;
CREATE TABLE Reviews (
    listing_id NUMERIC, 
    id NUMERIC PRIMARY KEY,
    date DATE,
    reviewer_id NUMERIC,
    reviewer_name VARCHAR(255),
    comments TEXT,

    FOREIGN KEY (listing_id) REFERENCES Listings(id)
);