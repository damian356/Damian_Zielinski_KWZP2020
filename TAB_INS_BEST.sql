USE master
GO
DROP DATABASE Przygotowanie_produkcji
GO
CREATE DATABASE Przygotowanie_produkcji
GO
USE Przygotowanie_produkcji
GO

CREATE TABLE 
Rodzaj_Dokumentacji (
ID_Rodzaj_Dokumentacji int not null PRIMARY KEY, 
Nazwa char(25) not null,
);
GO

INSERT INTO Rodzaj_Dokumentacji(ID_Rodzaj_Dokumentacji,Nazwa)
VALUES
(1,'Kod na wycinark�'),
(2,'Dokumentacja 2D');


CREATE TABLE 
Dokumentacje (
ID_Dokumentacji int not null PRIMARY KEY, 
ID_Rodzaj_Dokumentacji int not null FOREIGN KEY REFERENCES Rodzaj_Dokumentacji (ID_Rodzaj_Dokumentacji),
ID_Pracownika int not null,--FOREIGN KEY REFERENCES Pracownicy (ID_Pracownika),
Data_Wykonania smalldatetime not null,
);


INSERT INTO Dokumentacje(ID_Dokumentacji,ID_Rodzaj_Dokumentacji,ID_Pracownika,Data_Wykonania)
VALUES
(1,2,17,2020-03-01),
(2,1,13,2020-03-06),
(3,2,18,2020-03-16),
(4,1,14,2020-04-01),
(5,1,13,2020-04-10),
(6,2,18,2020-05-11);


CREATE TABLE 
Dokumentacja_Proces (
ID_Dokumentacja_Proces int IDENTITY(1,1) not null PRIMARY KEY, 
ID_Dokumentacji int not null FOREIGN KEY REFERENCES Dokumentacje (ID_Dokumentacji),
);


INSERT INTO Dokumentacja_proces(ID_Dokumentacji)
VALUES
(1),
(2),
(3),
(4),
(3),
(5),
(5),
(6);


CREATE TABLE 
Proces_Technologiczny (
ID_Proces_Technologiczny int IDENTITY(1,1) not null PRIMARY KEY,
ID_Dokumentacja_Proces int not null FOREIGN KEY REFERENCES Dokumentacja_Proces (ID_Dokumentacja_Proces),
ID_Pracownika int not null,--FOREIGN KEY REFERENCES Pracownicy (ID_Pracownika),
);

INSERT into Proces_Technologiczny(ID_Dokumentacja_Proces,ID_Pracownika)
VALUES
(1,13),
(3,14),
(2,14),
(4,14),
(4,13),
(1,13);

CREATE TABLE 
Rodzaj_Maszyny (
ID_Rodzaj_Maszyny int not null PRIMARY KEY, 
Rodzaj_Maszyny char(30) not null,
);

INSERT INTO Rodzaj_Maszyny (ID_Rodzaj_Maszyny, Rodzaj_Maszyny)
VALUES
(1, 'Maszyna_Do_Szycia'),
(2, 'Wycinarka_Laserowa'),
(3, 'Pralka'),
(4, 'Suszarka'),
(5, 'Maszyna_Do_Prasowania');

CREATE TABLE 
Maszyny (
ID_Maszyny int not null PRIMARY KEY, 
Model char(20) not null,
ID_Rodzaj_Maszyny int not null FOREIGN KEY REFERENCES Rodzaj_Maszyny (ID_Rodzaj_Maszyny),
Producent char(20) not null,
Gwarancja_do smalldatetime not null,
Data_zakupu smalldatetime not null,
Resurs_rbh int not null,
Resurs_data_serwisu smalldatetime not null,
);

INSERT INTO Maszyny (ID_Maszyny, Model, ID_Rodzaj_Maszyny, Producent, Gwarancja_Do, Data_Zakupu, Resurs_Rbh, Resurs_Data_Serwisu)
VALUES
(1, 'Pelikan_MD2', 1, '�ucznik', 2022-04-10, 2020-04-10, 200, 2020-07-10),
(2, 'Pelikan_MD2', 1, '�ucznik', 2022-04-10, 2020-04-10, 180, 2020-07-10),
(3, 'Pelikan_MD2', 1, '�ucznik', 2022-04-10, 2020-04-10, 190, 2020-07-10),
(4, 'Pelikan_MD2', 1, '�ucznik', 2022-04-10, 2020-04-10, 220, 2020-07-10),
(5, 'Pelikan_MD2', 1, '�ucznik', 2022-04-10, 2020-04-10, 170, 2020-07-10),
(6, 'Pelikan_MD2', 1, '�ucznik', 2022-04-10, 2020-04-10, 170, 2020-07-10),
(7, 'Pelikan_MD2', 1, '�ucznik', 2022-04-10, 2020-04-10, 170, 2020-07-10),
(8, 'Pelikan_MD2', 1, '�ucznik', 2022-04-10, 2020-04-10, 170, 2020-07-10),
(9, 'Pelikan_MD2', 1, '�ucznik', 2022-04-10, 2020-04-10, 170, 2020-07-10),
(10, 'Laser_Tag_012', 2, 'Laser_Pol', 2022-04-15, 2020-04-15, 700, 2020-07-15),
(11, 'Laser_Tag_012', 2, 'Laser_Pol', 2022-04-15, 2020-04-15, 700, 2020-07-15),
(12, 'Rotate_Master', 3, 'Whirpool', 2022-04-06, 2020-04-06, 300, 2020-10-06),
(13, 'Rotate_Master', 3, 'Whirpool', 2022-04-06, 2020-04-06, 300, 2020-10-06),
(14, 'Rotate_Master', 3, 'Whirpool', 2022-04-06, 2020-04-06, 300, 2020-10-06),
(15, 'Air_Dryer_HK2', 4, 'Whirpool', 2022-04-06, 2020-04-06, 200, 2020-10-06),
(16, 'Air_Dryer_HK2', 4, 'Whirpool', 2022-04-06, 2020-04-06, 200, 2020-10-06),
(17, 'Air_Dryer_HK2', 4, 'Whirpool', 2022-04-06, 2020-04-06, 200, 2020-10-06),
(18, 'Iron_Cast_v2', 5, 'Bosh', 2022-04-05, 2020-05-06, 300, 2020-10-05),
(19, 'Iron_Cast_v2', 5, 'Bosh', 2022-04-05, 2020-05-06, 300, 2020-10-05);

CREATE TABLE 
Rodzaj_Obslugi (
ID_Rodzaj_Obslugi int not null PRIMARY KEY, 
Nazwa char(20) not null,
);

INSERT INTO Rodzaj_Obslugi(ID_Rodzaj_Obslugi, Nazwa)
VALUES
(1,'Serwis'),
(2,'Naprawa'),
(3,'Przezbrojenie');

CREATE TABLE 
Obsluga_Techniczna (
ID_Obsluga_Techniczna int IDENTITY(1,1) not null PRIMARY KEY,
ID_Maszyny int not null FOREIGN KEY REFERENCES Maszyny (ID_Maszyny),
ID_Rodzaj_Obslugi int not null FOREIGN KEY REFERENCES Rodzaj_Obslugi (ID_Rodzaj_Obslugi),
Data_Wykonania smalldatetime not null,
ID_Pracownika int not null,-- FOREIGN KEY REFERENCES Pracownicy (ID_Pracownika),
);

INSERT INTO Obsluga_Techniczna (ID_Maszyny, ID_Rodzaj_Obslugi, Data_Wykonania, ID_Pracownika)
VALUES
(1,2,2020-04-22,4),
(10,1,2020-04-27,4),
(11,1,2020-04-27,4),
(3,3,2020-04-23,4),
(4,3,2020-04-23,4);

CREATE TABLE 
Czesci_Obsluga (
ID_Czesci_Obsluga int IDENTITY(1,1) PRIMARY KEY,
ID_Obsluga_Techniczna int FOREIGN KEY REFERENCES Obsluga_Techniczna (ID_Obsluga_Techniczna),
ID_Element int not null,-- FOREIGN KEY REFERENCES Magazyn_Elementy (ID_Element),
Ilosc int not null,
);

INSERT into Czesci_Obsluga(ID_Obsluga_Techniczna, ID_Element, Ilosc)
VALUES
(1,1,2),
(1,6,1),
(2,7,1),
(2,8,2),
(3,9,2),
(3,6,2),
(4,1,2),
(5,7,1),
(5,8,2);

CREATE TABLE 
Maszyny_Proces (
ID_Maszyny_Proces int PRIMARY KEY,
ID_Proces_Technologiczny int FOREIGN KEY REFERENCES Proces_Technologiczny (ID_Proces_Technologiczny),
ID_Rodzaj_Maszyny int not null,
Liczba int not null,
Liczba_Rbh int not null,
);

INSERT INTO Maszyny_Proces (ID_Maszyny_Proces, ID_Proces_Technologiczny, ID_Rodzaj_Maszyny, Liczba, Liczba_Rbh)
VALUES
(1, 1, 1, 3, 240),
(2, 1, 2, 1, 40),
(3, 1, 3, 1, 80),
(4, 1, 4, 1, 40),
(5, 1, 5, 1, 30),
(6, 2, 1, 2, 120),
(7, 2, 2, 1, 20),
(8, 2, 3, 1, 60),
(9, 2, 4, 1, 30),
(10, 2, 5, 1, 15),
(11, 3, 1, 5, 500),
(12, 3, 2, 1, 80),
(13, 3, 3, 2, 160),
(14, 3, 4, 2, 100);

CREATE TABLE 
Proces_Zamowienie (
ID_Proces_Zamowienie int IDENTITY(1,1) PRIMARY KEY,
ID_Proces_Technologiczny int not null FOREIGN KEY REFERENCES Proces_Technologiczny(ID_Proces_Technologiczny),
ID_Zamowienie_Produkty int not null,-- FOREIGN KEY REFERENCES Zamowienie_Produkty(ID_Zamowienie_Produkty),
);

INSERT INTO Proces_Zamowienie(ID_Proces_Technologiczny,ID_Zamowienie_Produkty)
VALUES
(1,2),
(2,1),
(3,4),
(4,3),
(5,1),
(6,2);

CREATE TABLE 
Elementy_Proces (
ID_Elementy_Proces int IDENTITY(1,1) PRIMARY KEY,
ID_Proces_Technologiczny int FOREIGN KEY REFERENCES Proces_Technologiczny(ID_Proces_Technologiczny),
ID_Element int not null, --FOREIGN KEY REFERENCES Magazyn_Elementy (ID_Element),
Liczba int not null,
);

INSERT INTO Elementy_Proces(ID_Proces_Technologiczny,ID_Element,Liczba)
VALUES
(1,2,15),
(1,4,30),
(2,2,20),
(3,3,33),
(3,4,40),
(4,2,50),
(5,2,30),
(6,2,50),
(6,4,15);

CREATE TABLE 
Etapy_W_Procesie (
ID_Etapy_W_Procesie int PRIMARY KEY,
ID_Proces_Technologiczny int FOREIGN KEY REFERENCES Proces_Technologiczny(ID_Proces_Technologiczny),
ID_Etapu int not null, --FOREIGN KEY REFERENCES Rodzaj_Etapu (ID_Etapu),
Czas int not null,
);

INSERT INTO Etapy_W_Procesie (ID_Etapy_W_Procesie, ID_Proces_Technologiczny, ID_Etapu, Czas)
VALUES
(1, 1, 1, 1),
(2, 1, 2, 2),
(3, 1, 3, 3),
(4, 1, 4, 4),
(5, 1, 5, 5),
(6, 1, 6, 5),
(7, 1, 7, 5),
(8, 1, 8, 5),
(9, 1, 9, 5),
(10, 1, 10, 5),
(11, 2, 1, 1),
(12, 2, 2, 2),
(13, 2, 3, 3),
(14, 2, 5, 5),
(15, 2, 8, 5),
(16, 3, 1, 1),
(17, 3, 2, 2),
(18, 3, 3, 3),
(19, 3, 4, 4),
(20, 3, 5, 5),
(21, 3, 6, 5),
(22, 3, 7, 5),
(23, 3, 8, 5),
(24, 3, 9, 5),
(25, 3, 10, 5),
(26, 4, 1, 1),
(27, 4, 2, 2),
(28, 4, 3, 3),
(29, 4, 5, 5),
(30, 4, 8, 5),
(31, 5, 1, 1),
(32, 5, 2, 2),
(33, 5, 3, 3),
(34, 5, 4, 4),
(35, 5, 5, 5),
(36, 5, 6, 5),
(37, 5, 7, 5),
(38, 5, 8, 5),
(39, 5, 9, 5),
(40, 5, 10, 5);
GO