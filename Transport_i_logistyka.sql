CREATE DATABASE Transport_i_logistyka

CREATE TABLE Kierowcy (
ID_kierowcy INT IDENTITY(1,1) PRIMARY KEY,
Imiê_i_nazwisko VARCHAR(250),
Region VARCHAR(250),
Data_zatrudnienia DATE,
Status VARCHAR(250),
Wiek INT,
P³eæ VARCHAR (250)
)

INSERT INTO Kierowcy(Imiê_i_nazwisko, Region, Data_zatrudnienia,Status, Wiek, P³eæ)
VALUES
('Hubert Kamiñski', 'Mazowieckie', '2019-04-15', 'aktywny', 50, 'Mê¿czyzna'),
('Heronim Lis', 'Ma³opolskie', '2021-07-23', 'wolny', 30, 'Mê¿czyzna'),
('Asia Szulc', 'Œl¹skie', '2022-01-10', 'na urlopie', 22, 'Kobieta'),
('El¿bieta Andrzejewska', 'Wielkopolskie', '2020-11-03', 'aktywny', 27,'Kobieta'),
('Elwira Adamska', 'Pomorskie', '2023-02-17', 'aktywny', 55, 'Kobieta'),
('Patrycja Gajewska', 'Œl¹skie', '2017-03-22', 'wolny', 34, 'Kobieta'),
('Jagoda Zawadzka', 'Opolskie', '2022-03-04', 'wolny', 46, 'Kobieta'),
('Adrian D¹browski', 'Warmiñsko-Mazurskie', '2023-04-01', 'aktywny', 24,'Mê¿czyzna'),
('Anastazy Sawicki', 'Podlaskie', '2020-02-16', 'aktywny', 59, 'Mê¿czyzna'),
('Konstanty Witkowski', 'Mazowieckie', '2019-05-09', 'na urlopie', 38, 'Mê¿czyzna'),
('Jêdrzej Sikora', 'Wielkopolskie', '2020-06-23', 'aktywny', 25, 'Mê¿czyzna'),
('B³a¿ej Sadowska', 'Lubelskie', '2023-03-18', 'na urlopie', 41, 'Mê¿czyzna'),
('Pawe³ Stêpieñ', 'Podkarpackie', '2018-04-09', 'wolny', 45, 'Mê¿czyzna'),
('Anatol Soko³owski', 'Zachodniopomorskie', '2022-08-15', 'aktywny', 28, 'Mê¿czyzna'),
('Remigiusz Kalinowski', 'Opolskie', '2019-10-03', 'aktywny', 60,'Mê¿czyzna')




CREATE TABLE Pojazdy (
ID_pojazdu INT IDENTITY(1,1) PRIMARY KEY,
Marka_i_model VARCHAR(250),
Typ_pojazdu VARCHAR(250),
Rok_produkcji INT,
Œrednie_spalanie DECIMAL(4,1)
)

INSERT INTO Pojazdy( Marka_i_model,Typ_pojazdu,Rok_produkcji, Œrednie_spalanie)
VALUES
('Mercedes Actros', 'ciê¿arówka', 2020, 28.5),
('Volkswagen Crafter', 'bus', 2019, 13.2),
('Renault Master', 'van', 2021, 12.8),
('Toyota Corolla', 'osobowy', 2022, 6.4),
('Ford Transit', 'van', 2020, 10.1),
('Scania R450', 'ciê¿arówka', 2018, 30.0),
('Peugeot Boxer', 'bus', 2023, 9.5),
('Skoda Octavia', 'osobowy', 2025, 5.5),
('Iveco Daily', 'van', 2019, 10.7),
('DAF XF 105', 'ciê¿arówka', 2018, 29.4)


CREATE TABLE Trasy (
ID_trasy INT IDENTITY(1,1) PRIMARY KEY,
Pocz¹tek VARCHAR(250),
Koniec VARCHAR(250),
Dystans_km INT,
Typ_drogi VARCHAR (250)
)

INSERT INTO Trasy (Pocz¹tek, Koniec, Dystans_km, Typ_drogi) 
VALUES
('Warszawa', 'Kraków', 295.5, 'autostrada'),
('Kraków', 'Wroc³aw', 462, 'autostrada'),
('Wroc³aw', 'Szczecin', 393.7, 'krajowa'),
('Szczecin', '£ódŸ', 469.8, 'lokalna'),
('£ódŸ', 'Warszawa', 136.4, 'autostrada')


CREATE TABLE Przewozy (
ID_przewozu INT IDENTITY(1,1) PRIMARY KEY,
ID_kierowcy INT,
ID_pojazdu INT,
ID_trasy INT,
Data_przewozu DATE,
Koszt_paliwa INT,
Przychód_z_przewozu INT,
Czas_trwania_h INT
)

INSERT INTO Przewozy(ID_kierowcy, ID_pojazdu, ID_trasy, Data_przewozu, Koszt_paliwa, Przychód_z_przewozu, Czas_trwania_h)
VALUES
(3, 10, 5, '2024-07-19', 478.90, 769.54, 3),
(13, 6, 2, '2024-07-20', 700.00, 1389.00, 5),
(1, 8, 3, '2024-07-21', 200.50, 1700.95, 4),
(2, 1, 4, '2024-07-26', 800.00, 509.94, 7),
(15, 7, 5, '2024-07-27', 350.22, 1560.60, 3),
(5, 3, 1, '2024-07-30', 400.00, 536.25, 4),
(15, 4, 1, '2024-08-08', 289.42, 1299.60, 3),
(9, 10, 1, '2024-08-09', 545.14, 805.17, 4),
(4, 7, 2, '2024-08-11', 500.00, 333.13, 6),
(2, 4, 3, '2024-08-21', 359.00, 1523.56, 4),
(10, 6, 4, '2024-08-23', 701.74, 3649.01, 7),
(11, 1, 5, '2024-08-25', 276.47, 4466.94, 3),
(8, 2, 2, '2024-08-31', 550.64, 1904.98, 2),
(7, 3, 4, '2024-09-02', 539.00, 2399.39, 5),
(14, 5, 1, '2024-09-09', 398.99, 893.43, 4),
(15, 2, 3, '2024-09-12', 455.17, 2096.75, 4),
(6, 5, 5, '2024-09-15', 212.98, 550.53, 2),
(12, 3, 4, '2024-09-20', 600.21, 1284.42, 8),
(12, 9, 1, '2024-09-22', 563.52, 850.98, 3),
(13, 10, 2, '2024-09-30', 800.46, 2798.32, 8),
(14, 10, 3, '2024-10-06', 592.58, 798.38, 5),
(9, 5, 1, '2024-10-11', 415.42, 1005.32, 4),
(15, 1, 3, '2024-10-15', 655.77, 4508.59, 5),
(1, 6, 4, '2024-10-20', 799.34, 4794.35, 8),
(1, 8, 5, '2024-10-25', 170.08, 998.08, 2),
(8, 5, 4, '2024-10-27', 517.43, 1562.61, 5),
(2, 9, 5, '2024-11-03', 333.79, 759.61, 3),
(4, 1, 1, '2024-11-04', 550.15, 2797.88, 5),
(3, 10, 3, '2024-11-16', 674.87, 8957.57, 6),
(14, 3, 4, '2024-11-17', 459.61, 896.27, 6),
(15, 2, 2, '2024-11-26', 394.15, 5060.83, 7),
(2, 9, 2, '2024-11-30', 503.64, 1812.99, 7),
(4, 6, 3, '2024-12-15', 564.58, 3707.25, 5),
(1, 5, 5, '2024-12-20', 212.98, 535.26, 3),
(4, 4, 1, '2024-12-21', 309.86, 968.28, 3),
(4, 2, 2, '2024-12-22', 637.44, 1745.85, 6),
(4, 7, 1, '2024-12-23', 470.48, 1264.27, 5),
(2, 3, 5, '2024-12-27', 369.29, 1532.10, 3),
(3, 8, 4, '2024-12-28', 320.14, 476.46, 6),
(7, 5, 3, '2024-12-30', 398.20, 4287.15, 4)
