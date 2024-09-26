CREATE DATABASE telephone_calls;
DROP TABLE IF EXISTS abonents, cities, negotiations;
CREATE TABLE abonents(
    abonent_code CHAR(32) PRIMARY KEY,
    phone CHAR(16),
    id BIGINT,
    place VARCHAR(128)
);
CREATE TABLE cities(
    city_code CHAR(32) PRIMARY KEY,
    city_name VARCHAR(16),
    speed FLOAT,
    night_tariff VARCHAR(16)
);
CREATE TABLE negotiations(
    negotation_code CHAR(32) PRIMARY KEY,
    city_code CHAR(32),
    abonent_code CHAR(32),
    start_day DATE,
    minutes_of_negotiation FLOAT,
    start_time TIME,
    FOREIGN KEY (abonent_code) REFERENCES abonents(abonent_code),
    FOREIGN KEY (city_code) REFERENCES cities(city_code)
);