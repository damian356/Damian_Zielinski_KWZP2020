USE master
DROP DATABASE Baza_szwalnia
GO
CREATE DATABASE Baza_szwalnia
GO
USE Baza_szwalnia
----------------------------------Finanse i Zarz¹dzanie---------------------------------------------------

CREATE TABLE Klienci (
	ID_Klienta int IDENTITY(1,1) PRIMARY KEY,
	Imie char(50) not null,
	Nazwisko char(50) not null,
	Nazwa_Firmy char(100) unique, 
	NIP char(10) UNIQUE, 
	Adres char(100) not null,
	Telefon char(15) not null unique, 
	E_Mail char(50) not null unique
);
INSERT into Klienci(Imie, Nazwisko, Nazwa_Firmy, NIP, Adres,Telefon, E_Mail)
VALUES
('Jan','Jankowski','Firmowo','1213141516','Firmowa 2, Warszawa','987548362','Mailfirmowy@gmail.com'),
('Piotr','Piotrowski','Zamaseczowo','9882351235','Kazimierza Wielkiego 44, £ódŸ','675234123','Zamaseczki@gmail.com'),
('Pawe³','Paw³owski','Ulandia','7654827346','Aleje Religijne 784, Mr¹gowo','526374583','Tomasz.Rogulski@gmail.com'),
('Kamil','Kamilowski','Primaris','2845401300','Królewska 1, Warszawa','748372421','FirmowyMail@gmail.com'),
('Ferrus','Manus','IOM','1113123125','Pa³acowa 1, Terra','777838352','IOM.mail@gmail.com');


CREATE TABLE Pensja (
	ID_Pensja int IDENTITY (1,1) PRIMARY KEY,
	Pensja real not null
);
INSERT into Pensja(Pensja)
VALUES
('2500'),
('3000'),
('4000'),
('4500'),
('10000');


CREATE TABLE Stanowisko (
	ID_Stanowiska int IDENTITY (1,1) PRIMARY KEY, 
	Stanowisko char(50) not null, 
	Opis char(200) not null,
	ID_Pensji int FOREIGN KEY REFERENCES Pensja(ID_Pensja)
);
INSERT into Stanowisko(Stanowisko,Opis,ID_Pensji)
VALUES
('Operator Maszyn Laserowych','Brak','3'),
('Szwacz','Brak','1'),
('Pracz','Brak','1'),
('Prasowacz','Brak','1'),
('Pracownik dzia³u sprzeda¿y','Brak','2'),
('Magazynier','Brak','1'),
('Technolog','Brak','4'),
('Technik utrzymania ruchu','Brak','3'),
('Projektant', 'Brak', '3');

CREATE TABLE Rodzaj_Umowy (
	ID_Rodzaj_Umowy int IDENTITY (1,1) PRIMARY KEY,  
	Rodzaj_Umowy char(30) not null unique, 
	Uwagi char(100)
);
INSERT into Rodzaj_Umowy(Rodzaj_Umowy, Uwagi)
VALUES
('Zlecenie','Umowa uniemo¿liwa zdobycie premii'),
('O pracê','Umowa umo¿liwa zdobycie premii');

CREATE TABLE Etat (
	ID_Etat int IDENTITY (1,1) PRIMARY KEY, 
	Wymiar_Etatu char(5) not null unique, 
	Uwagi char(100)
);

INSERT into Etat(Wymiar_Etatu, Uwagi)
VALUES
('1/1','Brak'),
('1/2','Brak'),
('1/4','Brak'),
('3/4','Brak'),
('1/8','Brak');

CREATE TABLE Pracownicy (
	ID_Pracownika int IDENTITY (1,1) PRIMARY KEY, 
	Imie char(50) not null,
	Nazwisko char(50) not null,
	Pesel char(11) not null unique,
	Adres char(100) not null,
	Telefon char(15) not null unique	
);

INSERT into Pracownicy (Imie, Nazwisko, Pesel, Adres, Telefon)
VALUES 
('Antoni','Kropka','86100512368','Kopalniana 2, Warszawa','511325698'),
('Mariusz','Drzewniak','88040412856','Sternicza 8, Warszawa','541125896'),
('Wiktor','Strzelczyk','88050302745','Stalowa 12, Warszawa','668245987'),
('Adrian','Ostorczyk','96021526982','Mokra 114A, Warszawa','662125795'),
('Micha³','Grzebacz','94010501482','Wrzesiñska 14, Warszawa','54121458'),
('Andrzej','Kopczyñski','9402023685','Kolejowa 2, Warszawa','514789256'),
('Michalina','Owczarz','95030698245','Smolna 8, Warszawa','685965742'),
('Karolina','Sowa','95010114562','Kwietna 44C, Warszawa','668523547'),
('Magdalena','Puchacz','98120302589','Wolnoœci 99, Warszawa','665212252'),
('Micha³','Niemiec','89030508564','Zapolna 5, Warszawa','610102103'),
('Pawe³','Ziomko','79010145963','Korotyñska 14, Warszawa','602568235'),
('Filip','Michalski','81111101569','Pieniñska 78, Warszawa','669368214'),
('Dominik','Kosiniak','90021626579','Stalowa 8, Warszawa','658596312'),
('Mariusz','Pawlak','92090718965','Morska 105, Warszawa','512478256'),
('Krzysztof','Kargul','91101565987','S.Staszica 77, Warszawa','511447265'),
('Stanis³aw','Osieñko','93112400382','Obroñców Grodna 77, Warszawa','532658963'),
('Stanis³aw','Polak','90110369852','Widok 22, Warszawa','511569569'),
('Marcel','Wê¿yk','88062207956','Okopowa 7, Warszawa','603605604');

CREATE TABLE Urlop (
ID_Urlop int IDENTITY (1,1) PRIMARY KEY,
ID_Pracownika int FOREIGN KEY REFERENCES Pracownicy(ID_Pracownika),
Data_rozpoczêcia DATE not null default GETDATE(),
Data_zakonczenia DATE not null default GETDATE()
);
INSERT into Urlop (ID_Pracownika, Data_rozpoczêcia, Data_zakonczenia)
VALUES
('1','2020-03-15','2020-03-17'),
('2','2020-03-18','2020-03-25'),
('6','2020-03-20','2020-03-25'),
('8','2020-03-27','2020-04-05'),
('18','2020-04-20','2020-05-30');


CREATE TABLE Pracownicy_Zatrudnienie (
	ID_Pracownicy_Zatrudnienie int IDENTITY (1,1) PRIMARY KEY,
	ID_Pracownika int FOREIGN KEY REFERENCES Pracownicy(ID_Pracownika),
	ID_Stanowiska int FOREIGN KEY REFERENCES Stanowisko(ID_Stanowiska),
	ID_Etatu int FOREIGN KEY REFERENCES  Etat(ID_Etat),
	ID_Rodzaju_Umowy int FOREIGN KEY REFERENCES  Rodzaj_Umowy(ID_Rodzaj_Umowy),
	Data_Zatrudnienia DATE not null default GETDATE(),
	Koniec_umowy DATE not null default GETDATE()
);
INSERT into Pracownicy_Zatrudnienie (ID_Pracownika, ID_Stanowiska, ID_Etatu, ID_Rodzaju_Umowy, Data_Zatrudnienia, Koniec_umowy)
VALUES
('1','1','1','1','2020-03-1','2050-03-01'),
('2','1','1','1','2020-03-1','2050-03-01'),
('3','3','3','2','2020-03-1','2021-03-01'),
('4','3','2','2','2020-03-1','2021-03-01'),
('5','2','5','2','2020-03-1','2021-03-01'),
('6','2','5','2','2020-03-1','2021-03-01'),
('7','5','5','1','2020-03-1','2050-03-01'),
('8','5','5','1','2020-03-1','2050-03-01'),
('9','4','5','1','2020-03-1','2050-03-01'),
('10','4','5','2','2020-03-1','2020-06-11'),
('11','6','5','2','2020-03-1','2021-03-01'),
('12','6','5','1','2020-03-1','2050-03-01'),
('13','7','5','2','2020-03-1','2020-05-25'),
('14','7','5','1','2020-03-1','2050-03-01'),
('15','8','5','1','2020-03-1','2050-03-01'),
('16','8','5','2','2020-03-1','2020-05-25'),
('17','9','5','1','2020-03-1','2050-03-01'),
('18','9','5','2','2020-03-1','2020-06-01');


CREATE TABLE Jezyk (
	ID_Jezyk int IDENTITY (1,1) PRIMARY KEY, 
	Jezyk char(40) not null unique, 
	Informacje_Dodatkowe char(200) not null
);

INSERT into Jezyk(Jezyk, Informacje_Dodatkowe)
VALUES
('Niemiecki','Brak'),
('Angielski','Brak'),
('Hiszpañski','Brak'),
('Rosyjski','Brak'),
('Grecki','Brak');

CREATE TABLE Znajomosc_Jezykow (
	ID_Znajomosc_Jezykow int IDENTITY (1,1) PRIMARY KEY,
	ID_Jezyka int FOREIGN KEY REFERENCES Jezyk(ID_Jezyk),
	ID_Pracownika int FOREIGN KEY REFERENCES Pracownicy(ID_Pracownika)
);

INSERT into Znajomosc_Jezykow(ID_Jezyka, ID_Pracownika)
VALUES
('1','1'),
('2','1'),
('2','2'),
('2','3'),
('2','4'),
('4','4'),
('2','5'),
('4','5');

CREATE TABLE Zamowienia (
	ID_Zamowienia int IDENTITY (1,1) PRIMARY KEY, 
	ID_Klienta int FOREIGN KEY REFERENCES Klienci(ID_Klienta), 
	Data_Zlozenia datetime ,
	Data_Zakonczenia datetime,
	Dokumentacja bit,
	ID_Pracownika int FOREIGN KEY REFERENCES Pracownicy (ID_Pracownika), <-
);

INSERT into Zamowienia(ID_Klienta, Data_Zlozenia, Data_Zakonczenia, Dokumentacja, ID_Pracownika)
VALUES
('1','2020-04-10','2020-04-15','1', '5'),
('2','2020-04-11','2020-04-20','1', '5'),
('3','2020-04-14','2020-04-21','1', '5'),
('4','2020-04-18','2020-04-22','1', '5'),
('5','2020-04-20','2020-04-24','1', '5');

CREATE TABLE Faktury (
	ID_Faktury int IDENTITY(1,1) PRIMARY KEY,
	ID_Zamowienia int FOREIGN KEY REFERENCES Zamowienia(ID_Zamowienia),
	ID_Klienta int FOREIGN KEY REFERENCES Klienci(ID_Klienta),
    Cena_Netto real not null,
	Cena_Brutto real not null,
	Podatek_VAT real not null
);
INSERT into Faktury(ID_Zamowienia, ID_Klienta, Cena_Netto, Cena_Brutto, Podatek_VAT)
VALUES
('1','1','2000','2500','500'),
('2','2','50000','62500','12500'),
('3','3','3000','3750','750'),
('4','4','4600','5750','1150'),
('5','5','3200','4000','800');

CREATE TABLE Grupa (
	ID_Grupa int IDENTITY (1,1) PRIMARY KEY,
	Nazwa char(100) unique
);
INSERT into Grupa(Nazwa)
VALUES
('Czynsz'),
('Op³aty sta³e'),
('Zamowienia Materia³y'),
('Dostawy'),
('Inne');

 -- Koszty do bilansu 
CREATE TABLE Faktury_Zewnetrzne (
	ID_Faktura_zewnetrzna int IDENTITY (1,1) PRIMARY KEY,
	Nr_Faktury real not null,
	ID_Grupa int FOREIGN KEY REFERENCES Grupa(ID_Grupa),
	Nazwa_Firmy char(100) unique,
	Netto real not null,
	Brutto real not null,
	Podatek real not null
);
INSERT into Faktury_Zewnetrzne(Nr_Faktury, ID_Grupa, Nazwa_Firmy, Netto, Brutto, Podatek)
VALUES
('1826731623','1','Urzad_dzielnicy','2000','2500','500' ),
('1235457456','2','Innogy','1500','2000','500'),
('8908234234','2','Wodociagi','3400','3500','100'),
('5034592346','3','Uuuu karczek','5000','6000','1000'),
('6038425632','3','Blady', '400','500','100'),
('9857234537','3','Dluga szyja','1000','1200','200'),
('7872398524','4','Grusome','500','700','200'),
('3958349856','4','Hurrasz','400','450','50'),
('4873409245','4','Kolettoea','750','800','50');

CREATE TABLE Koszt_Jednostkowy (
	ID_Produktu  int not null,--int FOREIGN KEY REFERENCES Produkt(ID_Produktu),
	Koszt_Produkcji int not null,
);
CREATE TABLE Zamowienie_Produkt (
	ID_Zamowienie_Produkty int IDENTITY (1,1) PRIMARY KEY,
	ID_Zamowienia int FOREIGN KEY REFERENCES Zamowienia(ID_Zamowienia),
	ID_Produktu int not null,--int FOREIGN KEY REFERENCES Produkt(ID_Produktu),
	Ilosc int not null
);
INSERT INTO Zamowienie_Produkt(ID_Zamowienia, ID_Produktu, Ilosc)
VALUES
('1','2','300'),
('2','1','500'),
('2','4','500'),
('3','3','270'),
('4','1','100'),
('4','2','50'),
('4','3','100'),
('5','5','200'),
('5','2','200');
