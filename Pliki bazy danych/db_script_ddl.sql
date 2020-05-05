USE master
DROP DATABASE Szwalnia111
GO
CREATE DATABASE Szwalnia111
GO
USE	Szwalnia111

CREATE TABLE Rodzaj_Etapu  
(ID_Etapu int IDENTITY(1,1) PRIMARY KEY, 
Nazwa varchar(30) NOT NULL); 
----------------------------------Finanse i Zarz¹dzanie--------------------------------------------------- 

CREATE TABLE Klienci ( 
ID_Klienta int IDENTITY(1,1) PRIMARY KEY, 
Imie varchar(50) not null, 
Nazwisko varchar(50) not null, 
Nazwa_Firmy varchar(100) unique,  
NIP varchar(10) UNIQUE,  
Adres varchar(100) not null, 
Odleglosc_km varchar(15) not null,
Telefon varchar(15) not null unique,  
E_Mail varchar(50) not null unique 
); 

CREATE TABLE Dzialy ( 
ID_Dzialu int IDENTITY(1,1) PRIMARY KEY, 
Nazwa_dzialu varchar(50) not null, 
); 

CREATE TABLE Srodki_Trwale ( 
ID_Srodki_trwale int IDENTITY(1,1) PRIMARY KEY, 
Nazwa varchar(50) not null, 
Producent varchar(50) not null,
Numer_seryjny varchar(50) not null, 
ID_Dzialu  int FOREIGN KEY REFERENCES Dzialy(ID_Dzialu) ,
Koszt_zakupu varchar(10) not null,  
Roczny_stopien_amortyzacji varchar(100) not null, 
Gwarancja DATE not null default GETDATE(),  
Zamortyzowane BIT not null  
); 

CREATE TABLE Pensja ( 
ID_Pensja int IDENTITY (1,1) PRIMARY KEY, 
Pensja real not null 
); 


CREATE TABLE Stanowisko ( 
ID_Stanowiska int IDENTITY (1,1) PRIMARY KEY,  
Stanowisko varchar(50) not null,  
Opis varchar(200) not null, 
ID_Pensji int FOREIGN KEY REFERENCES Pensja(ID_Pensja) 
); 

CREATE TABLE Rodzaj_Umowy ( 
ID_Rodzaj_Umowy int IDENTITY (1,1) PRIMARY KEY,   
Rodzaj_Umowy varchar(30) not null,  
Uwagi varchar(100) 
);  

CREATE TABLE Etat ( 
ID_Etat int IDENTITY (1,1) PRIMARY KEY,  
Wymiar_Etatu varchar(5) not null,  
Uwagi varchar(100) 
); 

CREATE TABLE Pracownicy ( 
ID_Pracownika int IDENTITY (1,1) PRIMARY KEY,  
Imie varchar(50) not null, 
Nazwisko varchar(50) not null, 
Pesel varchar(11) not null unique, 
Adres varchar(100) not null, 
Telefon varchar(15) not null unique
);

CREATE TABLE Rodzaj_Urlopu (
ID_Rodzaj_Urlopu int IDENTITY(1,1) Primary key, 
Nazwa varchar(20)not null
);
 CREATE TABLE Wymiar_Urlopu (
ID_Wymiar_Urlopu int IDENTITY(1,1) Primary key, 
Iloœæ_dni varchar(20)not null
);

CREATE TABLE Urlop ( 
ID_Urlop int IDENTITY (1,1) PRIMARY KEY, 
ID_Pracownika int FOREIGN KEY REFERENCES Pracownicy(ID_Pracownika), 
Data_rozpoczêcia DATE not null default GETDATE(), 
Data_zakonczenia DATE not null default GETDATE(),
ID_Rodzaj_Urlopu int FOREIGN KEY REFERENCES Rodzaj_Urlopu (ID_Rodzaj_Urlopu),
ID_Wymiar_Urlopu int FOREIGN KEY REFERENCES Wymiar_Urlopu (ID_Wymiar_Urlopu)
);  

CREATE TABLE Pracownicy_Zatrudnienie ( 
ID_Pracownicy_Zatrudnienie int IDENTITY (1,1) PRIMARY KEY, 
ID_Pracownika int FOREIGN KEY REFERENCES Pracownicy(ID_Pracownika), 
ID_Stanowiska int FOREIGN KEY REFERENCES Stanowisko(ID_Stanowiska), 
ID_Etatu int FOREIGN KEY REFERENCES  Etat(ID_Etat), 
ID_Rodzaju_Umowy int FOREIGN KEY REFERENCES  Rodzaj_Umowy(ID_Rodzaj_Umowy),
ID_Dzialu int FOREIGN KEY REFERENCES Dzialy(ID_Dzialu),
Data_Zatrudnienia DATE not null default GETDATE(), 
Koniec_umowy DATE not null default GETDATE(), 
); 

CREATE TABLE Jezyk ( 
ID_Jezyk int IDENTITY (1,1) PRIMARY KEY,  
Jezyk varchar(40) not null,  
Informacje_Dodatkowe varchar(200) not null 
); 

CREATE TABLE Znajomosc_Jezykow ( 
ID_Znajomosc_Jezykow int IDENTITY (1,1) PRIMARY KEY, 
ID_Jezyka int FOREIGN KEY REFERENCES Jezyk(ID_Jezyk), 
ID_Pracownika int FOREIGN KEY REFERENCES Pracownicy(ID_Pracownika), 
); 

CREATE TABLE Zamowienia ( 
ID_Zamowienia int IDENTITY (1,1) PRIMARY KEY,  
ID_Klienta int FOREIGN KEY REFERENCES Klienci(ID_Klienta),  
Data_Zlozenia datetime , 
Data_Zakonczenia datetime, 
Umowa bit, 
ID_Pracownika int FOREIGN KEY REFERENCES Pracownicy (ID_Pracownika), 
);

CREATE TABLE Grupa ( 
ID_Grupa int IDENTITY (1,1) PRIMARY KEY, 
Nazwa varchar(100) unique 
); 

CREATE TABLE Faktury_Zewnetrzne ( 
ID_Faktura_zewnetrzna int IDENTITY (1,1) PRIMARY KEY, 
Nr_Faktury real not null, 
ID_Grupa int FOREIGN KEY REFERENCES Grupa(ID_Grupa), 
Nazwa_Firmy varchar(100), 
Netto real not null, 
Brutto real not null, 
Podatek real not null, 
); 

--------------------------------------------------------- MAGAZYN--------------------------------------------------------- 
--Magazyn tabele s³ownikowe 
CREATE TABLE Statusy (
ID_statusu int IDENTITY(1,1) Primary key, 
Status_zatw varchar(9)
)

CREATE TABLE Polki_Rozmiary (
ID_Rozmiar_Polki int IDENTITY(1,1) PRIMARY KEY,
Wysokosc int,
Szerokosc int,
Glebokosc int
)

CREATE TABLE Elementy_Typy (
ID_Element_Typ int IDENTITY(1,1) PRIMARY KEY,
Typ varchar(35),
Czy_wlasne bit not null default 0
)

CREATE TABLE Elementy_Jednostki (
ID_jednostka int IDENTITY(1,1) PRIMARY KEY,
Jednostka varchar(10)
)
CREATE TABLE Elementy_Cechy_Slownik(
ID_Cecha int IDENTITY(1,1) PRIMARY KEY,
Cecha varchar(20)
)

CREATE TABLE Polki (
ID_Polka int IDENTITY(1,1) PRIMARY KEY,
Rozszerzenie_ID varchar(2),
ID_Rozmiar_Polki int 
	FOREIGN KEY REFERENCES 
	Polki_Rozmiary(ID_Rozmiar_Polki)
)

CREATE TABLE Dostawcy_Zaopatrzenie (
ID_Dostawcy  int IDENTITY(1,1) PRIMARY KEY,
Nazwa varchar(40),
Telefon_1 int, 
Telefon_2 int, 
Email varchar(40)
)

CREATE TABLE Kurierzy (
ID_Kurier int IDENTITY(1,1) PRIMARY KEY,
Nazwa varchar(20),
Telefon_1 int, 
Telefon_2 int, 
Email varchar(40)
)
CREATE TABLE Miejsca (
ID_Miejsca int IDENTITY(1,1) PRIMARY KEY,
Nazwa varchar(20),
)

CREATE TABLE Regaly(
ID_regal int IDENTITY(1,1) PRIMARY KEY,
Oznaczenie varchar(10)
)

---------------------------------------------------------TABELE Z KLUCZAMI OBCYMI MAGAZYN ---------------------------------------------------------
CREATE TABLE Typy_cechy_rejestr(
ID_typ int
	FOREIGN KEY REFERENCES
	Elementy_Typy (ID_Element_Typ) ,
ID_cecha int
	FOREIGN KEY REFERENCES
	Elementy_cechy_slownik (ID_Cecha)
)

CREATE TABLE Polki_regaly (
ID_regal int 
	FOREIGN KEY REFERENCES 
	Regaly(ID_regal),
ID_Polka int UNIQUE
	FOREIGN KEY REFERENCES 
	Polki(ID_polka)
)

CREATE TABLE Elementy (
ID_Element int IDENTITY(1,1) PRIMARY KEY,
ID_Element_Typ int
	FOREIGN KEY REFERENCES
	Elementy_Typy (ID_Element_Typ),
Element_Nazwa varchar(35),
Okres_Przydatnosci_Miesiace int
)

CREATE TABLE Elementy_Cechy(
ID_Elementy_Cechy int IDENTITY(1,1) PRIMARY KEY,
ID_Element int 
	FOREIGN KEY REFERENCES
	Elementy (ID_Element),
ID_Cecha int 
	FOREIGN KEY REFERENCES
	Elementy_Cechy_Slownik(ID_Cecha),
Wartosc_Cechy_Liczbowa real,
ID_Jednostka int
	FOREIGN KEY REFERENCES
	Elementy_Jednostki(ID_Jednostka),
Wartosc_Cechy_Slowna varchar(30)
)

CREATE TABLE Umowy_Kurierzy (
ID_Umowy int IDENTITY(1,1) PRIMARY KEY,
ID_Kurier int
	FOREIGN KEY REFERENCES 
	Kurierzy(ID_Kurier),
Data_Zawarcia date,
Czas_Dostawy int,
Koszt_Km int, 
Koszt_Staly int,
)

CREATE TABLE Oferta (
ID_Oferta int IDENTITY(1,1) PRIMARY KEY,
ID_Element int 
	FOREIGN KEY REFERENCES 
	Elementy(ID_Element),	
Element_Oznaczenie varchar(20),
ID_Dostawcy int 
	FOREIGN KEY REFERENCES  
	Dostawcy_Zaopatrzenie(ID_Dostawcy),
Cena_Jedn money,
Data_Oferty date,
Ilosc_Minimalna int,
Ilosc_Maksymalna int,
Ilosc_W_Opakowaniu_Pojedynczym real, 
ID_Jednostka int
	FOREIGN KEY REFERENCES
	Elementy_Jednostki(ID_Jednostka),
Ilosc_W_Opakowaniu_Zbiorczym int,
Deklarowany_czas_dostawy int
)



---------------------------------------------------------WYMAGA TABELI ZAMOWIEN I PRACOWNIKOW---------------------------------------------------------

CREATE TABLE Zamowienia_Przydzial (
ID_Zamowienia_Przydzial int IDENTITY(1,1) PRIMARY KEY,
ID_Zamowienia int 
	FOREIGN KEY REFERENCES  
	Zamowienia(ID_Zamowienia), 
ID_Pracownicy int 
	FOREIGN KEY REFERENCES 
	Pracownicy(ID_Pracownika), 
ID_Umowy int 
	FOREIGN KEY REFERENCES 
	Umowy_Kurierzy(ID_Umowy)
)

CREATE TABLE Zamowienia_Dostawy (
ID_Dostawy int IDENTITY(1,1) PRIMARY KEY,
ID_Zamowienia int 
	FOREIGN KEY REFERENCES
	Zamowienia(ID_Zamowienia),
Data_Dostawy_Planowana date,
Data_Dostawy_Rzeczywista date,
ID_statusu int 
	FOREIGN KEY REFERENCES 
	Statusy (ID_statusu)
)

CREATE TABLE Zawartosc (
ID_Zawartosc int IDENTITY(1,1) PRIMARY KEY,
ID_Polka int UNIQUE
	FOREIGN KEY REFERENCES 
	Polki(ID_Polka),
ID_Element int
	FOREIGN KEY REFERENCES 
	Elementy(ID_Element),
ID_Dostawy int
	FOREIGN KEY REFERENCES
	Zamowienia_Dostawy(ID_Dostawy),
Ilosc_Paczek int
)

CREATE TABLE Dostawy_Zawartosc (
ID_Dostawy_Zawartosc int IDENTITY(1,1) PRIMARY KEY,
ID_Dostawy int
	FOREIGN KEY REFERENCES
	Zamowienia_Dostawy(ID_Dostawy),
ID_Element int
	FOREIGN KEY REFERENCES 
	Elementy(ID_Element),
ID_oferta int
	FOREIGN KEY REFERENCES
	Oferta (ID_oferta),
Ilosc_Dostarczona int
)

CREATE TABLE Dostarczenia_Wewn (
ID_Dostarczenia int IDENTITY(1,1) PRIMARY KEY,
ID_Pracownicy int
	FOREIGN KEY REFERENCES
	Pracownicy (ID_Pracownika),
ID_Dostawy int
	FOREIGN KEY REFERENCES
	Zamowienia_Dostawy (ID_Dostawy),
ID_element int
	FOREIGN KEY REFERENCES
	Elementy(ID_Element),
Ilosc_Dostarczona float,
ID_Miejsca int
	FOREIGN KEY REFERENCES
	Miejsca(ID_Miejsca),
Data_Dostarczenia varchar(10),
)

CREATE TABLE Dostarczenia_Zewn (
ID_Dostarczenia int IDENTITY(1,1) PRIMARY KEY,
ID_Pracownicy int
	FOREIGN KEY REFERENCES
	Pracownicy (ID_Pracownika),
ID_Zamowienia int 
	FOREIGN KEY REFERENCES
	Zamowienia(ID_Zamowienia),
ID_element int
	FOREIGN KEY REFERENCES
	Elementy(ID_Element),
Ilosc_Dostarczona float,
ID_Miejsca int
	FOREIGN KEY REFERENCES
	Miejsca(ID_Miejsca),
Data_Dostarczenia varchar(10),
)

CREATE TABLE Zamowienie_Element (
	ID_Zamowienie_Element int IDENTITY (1,1) PRIMARY KEY,
	ID_Zamowienia int FOREIGN KEY REFERENCES Zamowienia(ID_Zamowienia),
	ID_Element int FOREIGN KEY REFERENCES Elementy(ID_Element),
	Ilosc int not null,
	Licz_do_zamowienia bit NOT NULL
);
---------------------------------------------------------KONIEC MAGAZYN---------------------------------------------------------
 
---------------------- Pocz¹tek Przygotowanie produkcji------------------------- 
create table Rodzaj_Obslugi ( 
    ID_Rodzaj_Obslugi int IDENTITY(1,1) not null PRIMARY KEY,  
    Nazwa varchar(30) not null,
); 
 
create table Rodzaj_Maszyny ( 
    ID_Rodzaj_Maszyny int IDENTITY(1,1) not null PRIMARY KEY,  
    Rodzaj_Maszyny varchar(30) not null,
	Koszt_Rbh int not null,
);  
  
  create table Rodzaj_Dokumentacji ( 
    ID_Rodzaj_Dokumentacji int IDENTITY(1,1) not null PRIMARY KEY,   
    Nazwa varchar(25) not null, 
);  
   
create table Dokumentacje ( 
    ID_Dokumentacji int IDENTITY(1,1) not null PRIMARY KEY,  
    ID_Rodzaj_Dokumentacji int not null FOREIGN KEY REFERENCES Rodzaj_Dokumentacji (ID_Rodzaj_Dokumentacji), 
    ID_Pracownika int not null FOREIGN KEY REFERENCES Pracownicy (ID_Pracownika), 
    Data_Wykonania smalldatetime not null, 
	Plik varchar(30) not null,
); 

create table Proces_Technologiczny ( 
    ID_Proces_Technologiczny int IDENTITY(1,1) not null PRIMARY KEY,
    ID_Pracownika int not null FOREIGN KEY REFERENCES Pracownicy (ID_Pracownika), 
);  

create table Dokumentacja_Proces ( 
    ID_Dokumentacja_Proces int IDENTITY(1,1) not null PRIMARY KEY, 
	ID_Dokumentacji int not null FOREIGN KEY REFERENCES Dokumentacje (ID_Dokumentacji),
    ID_Proces_Technologiczny int not null FOREIGN KEY REFERENCES Proces_Technologiczny (ID_Proces_Technologiczny),
);  
  
create table Maszyny_Proces ( 
	ID_Maszyny_Proces int IDENTITY(1,1) not null PRIMARY KEY,
    ID_Proces_Technologiczny int FOREIGN KEY REFERENCES Proces_Technologiczny(ID_Proces_Technologiczny) not null, 
    ID_Rodzaj_Maszyny int not null FOREIGN KEY REFERENCES Rodzaj_Maszyny (ID_Rodzaj_Maszyny),  
    Liczba_Maszyn int not null, 
    Liczba_Rbh_Maszyna int not null, 
); 
  
create table Maszyny ( 
    ID_Maszyny int IDENTITY(1,1) not null PRIMARY KEY, 
	ID_Srodki_Trwale int not null FOREIGN KEY REFERENCES Srodki_Trwale (ID_Srodki_trwale),
    ID_Rodzaj_Maszyny int not null FOREIGN KEY REFERENCES Rodzaj_Maszyny (ID_Rodzaj_Maszyny),  
    Resurs_Rbh int not null, 
    Serwis_Co_Ile int not null,
); 
 
create table Obsluga_Techniczna ( 
    ID_Obsluga_Techniczna int IDENTITY(1,1) not null PRIMARY KEY, 
    ID_Maszyny int not null FOREIGN KEY REFERENCES Maszyny (ID_Maszyny), 
    ID_Rodzaj_Obslugi int not null FOREIGN KEY REFERENCES Rodzaj_Obslugi (ID_Rodzaj_Obslugi), 
    Data_Wykonania smalldatetime not null, 
    ID_Pracownika int not null FOREIGN KEY REFERENCES Pracownicy (ID_Pracownika), 
); 
 
 create table Czesci_Obsluga ( 
    ID_Czesci_Obsluga  int IDENTITY(1,1) not null PRIMARY KEY, 
	ID_Obsluga_Techniczna int not null FOREIGN KEY REFERENCES Obsluga_Techniczna(ID_Obsluga_Techniczna), 
    ID_Element int not null FOREIGN KEY REFERENCES Elementy (ID_Element), 
    Liczba int not null, 
); 

create table Proces_Zamowienie ( 
   ID_Proces_Zamowienie int IDENTITY(1,1) not null PRIMARY KEY,
   ID_Proces_Technologiczny int not null FOREIGN KEY REFERENCES Proces_Technologiczny(ID_Proces_Technologiczny),  
   ID_Zamowienie_Element int not null FOREIGN KEY REFERENCES Zamowienie_Element (ID_Zamowienie_Element), 
   Kompletny_Proces bit not null
); 
  
create table Elementy_Proces ( 
	ID_Elementy_Proces int IDENTITY(1,1) not null PRIMARY KEY,
    ID_Proces_Technologiczny int not null FOREIGN KEY REFERENCES Proces_Technologiczny(ID_Proces_Technologiczny),
    ID_Element int not null FOREIGN KEY REFERENCES Elementy (ID_Element), 
    Liczba int not null, 
); 
  
create table Etapy_W_Procesie ( 
	ID_Etapy_W_Procesie int IDENTITY (1,1) not null PRIMARY KEY,
    ID_Proces_Technologiczny int not null FOREIGN KEY REFERENCES Proces_Technologiczny(ID_Proces_Technologiczny),
    ID_Etapu int not null FOREIGN KEY REFERENCES Rodzaj_Etapu (ID_Etapu), 
    Czas int not null, 
); 

GO

-----------------------------------------Produkcja----------------------------------------- 
CREATE TABLE Proces_Produkcyjny  
(ID_Procesu_Produkcyjnego int IDENTITY(1,1) PRIMARY KEY NOT NULL, 
ID_Zamowienie_Element int FOREIGN KEY REFERENCES Zamowienie_Element (ID_Zamowienie_Element) NOT NULL, 
Proponowana_data_dostawy_materialu smalldatetime NULL,
ID_Dostarczenia int FOREIGN KEY REFERENCES Dostarczenia_Wewn (ID_Dostarczenia) NULL,
Data_Rozpoczecia smalldatetime NULL, 
Data_Zakonczenia smalldatetime NULL, 
Uwagi varchar(300) NULL); 
  
CREATE TABLE Material_Na_Produkcji 
(ID_Material_Na_Produkcji int IDENTITY(1,1) PRIMARY KEY NOT NULL, 
ID_Procesu_Produkcyjnego int FOREIGN KEY REFERENCES Proces_Produkcyjny (ID_Procesu_Produkcyjnego) NOT NULL,  
ID_Elementy_Proces int FOREIGN KEY REFERENCES Elementy_Proces (ID_Elementy_Proces) NOT NULL, 
Odpad float NULL,
Niezuzyty_material float NULL,
Magazyn_odebral_material bit NULL); 
  
CREATE TABLE Realizacja_Procesu 
(ID_Realizacji_Procesu int IDENTITY(1,1) PRIMARY KEY NOT NULL, 
ID_Procesu_Produkcyjnego int FOREIGN KEY REFERENCES Proces_Produkcyjny (ID_Procesu_Produkcyjnego) NOT NULL,  
ID_Etapu int FOREIGN KEY REFERENCES Rodzaj_Etapu (ID_Etapu) NOT NULL, 
Data_Rozpoczecia_Procesu SMALLDATETIME NULL, 
Data_Zakonczenia_Procesu SMALLDATETIME NULL, 
Data_Kontroli SMALLDATETIME NULL, 
Uwagi_Kontroli varchar(300) NOT NULL); 
  
CREATE TABLE Przydzial_Zasobow  
(ID_Przydzial_Zasobow int IDENTITY(1,1) PRIMARY KEY NOT NULL, 
ID_Realizacji_Procesu int FOREIGN KEY REFERENCES Realizacja_Procesu (ID_Realizacji_Procesu) NOT NULL, 
ID_Pracownika int FOREIGN KEY REFERENCES Pracownicy (ID_Pracownika) NOT NULL, 
ID_Maszyny int FOREIGN KEY REFERENCES Maszyny (ID_Maszyny) NOT NULL,
Data_Rozpoczecia SMALLDATETIME NULL,
Data_Zakonczenia SMALLDATETIME NULL);
  
CREATE TABLE Kontrola_Efektywnosci  
(ID_Kontrola_Efektywnosci int IDENTITY(1,1) PRIMARY KEY NOT NULL, 
ID_Procesu_Produkcyjnego int FOREIGN KEY REFERENCES Proces_Produkcyjny (ID_Procesu_Produkcyjnego) NOT NULL,  
Data_Kontroli smalldatetime NOT NULL, 
Dokument image NOT NULL, 
Uwagi varchar(300) NULL, 
Zgodnosc_Zamowienia bit NOT NULL, 
Liczba_Poprawnych int NOT NULL);

---------------------Koniec Produkcji----------------------------------------------------------------------------------
