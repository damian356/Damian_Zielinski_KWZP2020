USE Szwalnia

-------------------------------Inserty zarz¹dzanie i finanse-------------------------
INSERT INTO Rodzaj_Etapu (Nazwa)
VALUES
    ('Ciêcie'),
    ('Prasowanie'),
    ('Szycie'),
    ('Metkowanie - wszycie'),
    ('Pranie'),
    ('Naprasowanie'),
    ('Guzikowanie'),
    ('Pakowanie'),
    ('Metkowanie - pistolet'),
    ( 'Wszywanie suwaków');

INSERT INTO Produkt(Nazwa) 
VALUES  
    ('Koszulka'), 
    ('Spodnie'), 
    ('Sukienka'), 
    ('Koszula'), 
    ('Bluza'); 

INSERT into Klienci(Imie, Nazwisko, Nazwa_Firmy, NIP, Adres,Telefon, E_Mail)
VALUES
('Jan','Jankowski','Firmowo','1213141516','Firmowa 2, Warszawa','987548362','Mailfirmowy@gmail.com'),
('Piotr','Piotrowski','Zamaseczowo','9882351235','Kazimierza Wielkiego 44, £ódŸ','675234123','Zamaseczki@gmail.com'),
('Pawe³','Paw³owski','Ulandia','7654827346','Aleje Religijne 784, Mr¹gowo','526374583','Tomasz.Rogulski@gmail.com'),
('Kamil','Kamilowski','Primaris','2845401300','Królewska 1, Warszawa','748372421','FirmowyMail@gmail.com'),
('Ferrus','Manus','IOM','1113123125','Pa³acowa 1, Terra','777838352','IOM.mail@gmail.com');

INSERT into Pensja(Pensja)
VALUES
('2500'),
('3000'),
('4000'),
('4500'),
('10000');

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

INSERT into Rodzaj_Umowy(Rodzaj_Umowy, Uwagi)
VALUES
('Zlecenie','Umowa uniemo¿liwa zdobycie premii'),
('O pracê','Umowa umo¿liwa zdobycie premii');

INSERT into Etat(Wymiar_Etatu, Uwagi)
VALUES
('1/1','Brak'),
('1/2','Brak'),
('1/4','Brak'),
('3/4','Brak'),
('1/8','Brak');

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

INSERT into Urlop (ID_Pracownika, Data_rozpoczêcia, Data_zakonczenia)
VALUES
('1','2020-03-15','2020-03-17'),
('2','2020-03-18','2020-03-25'),
('6','2020-03-20','2020-03-25'),
('8','2020-03-27','2020-04-05'),
('18','2020-04-20','2020-05-30');

INSERT into Pracownicy_Zatrudnienie (ID_Pracownika, ID_Stanowiska, ID_Etatu, ID_Rodzaju_Umowy, Data_Zatrudnienia, Koniec_umowy)
VALUES
('1','1','1','1','2020-03-01','2050-03-01'),
('2','1','1','1','2020-03-01','2050-03-01'),
('3','3','3','2','2020-03-01','2021-03-01'),
('4','3','2','2','2020-03-01','2021-03-01'),
('5','2','5','2','2020-03-01','2021-03-01'),
('6','2','5','2','2020-03-01','2021-03-01'),
('7','5','5','1','2020-03-01','2050-03-01'),
('8','5','5','1','2020-03-01','2050-03-01'),
('9','4','5','1','2020-03-01','2050-03-01'),
('10','4','5','2','2020-03-01','2020-06-11'),
('11','6','5','2','2020-03-01','2021-03-01'),
('12','6','5','1','2020-03-01','2050-03-01'),
('13','7','5','2','2020-03-01','2020-05-25'),
('14','7','5','1','2020-03-01','2050-03-01'),
('15','8','5','1','2020-03-01','2050-03-01'),
('16','8','5','2','2020-03-01','2020-05-25'),
('17','9','5','1','2020-03-01','2050-03-01'),
('18','9','5','2','2020-03-01','2020-06-01');

INSERT into Jezyk(Jezyk, Informacje_Dodatkowe)
VALUES
('Niemiecki','Brak'),
('Angielski','Brak'),
('Hiszpañski','Brak'),
('Rosyjski','Brak'),
('Grecki','Brak');

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

INSERT into Zamowienia(ID_Klienta, Data_Zlozenia, Data_Zakonczenia, Dokumentacja, ID_Pracownika)
VALUES
('1','2020-04-10','2020-04-15','1', '7'),
('2','2020-04-11','2020-04-20','1', '7'),
('3','2020-04-14','2020-04-21','1', '7'),
('4','2020-04-18','2020-04-22','1', '8'),
('5','2020-04-20','2020-04-24','1', '8');

INSERT into Faktury(ID_Zamowienia, ID_Klienta, Cena_Netto, Cena_Brutto, Podatek_VAT)
VALUES
('1','1','2000','2500','500'),
('2','2','50000','62500','12500'),
('3','3','3000','3750','750'),
('4','4','4600','5750','1150'),
('5','5','3200','4000','800');

INSERT into Grupa(Nazwa)
VALUES
('Czynsz'),
('Op³aty sta³e'),
('Zamowienia Materia³y'),
('Dostawy'),
('Inne');

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

INSERT INTO Zamowienie_Produkt(ID_Zamowienia, ID_Produkt, Ilosc)
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

---------------------INSERTY MAGAZYN---------------------------------------------------------
INSERT INTO 
	Polki_rozmiary (Wysokosc,Szerokosc,Glebokosc)
VALUES
	(100,100,100),
	(200,200,200),
	(200,300,100),
	(100,300,100),
	(500,500,100)

INSERT INTO 
Elementy_Typy (Typ)
VALUES
	('Czesci maszyn'),
	('Tkanina'),
	('Nici'),
	('Guziki'),
	('Opakowania'),
	('Gumka')

INSERT INTO 
	Elementy_Jednostki (Jednostka)
VALUES
	('mm'),
	('cm'),
	('m'),
	('m2'),
	('mb'),
	('cal'),
	('kg'),
	('szt')

INSERT INTO 
	Elementy_Cechy_Slownik (Cecha)
VALUES
	('Grubosc'),
	('Dlugosc'),
	('Szerokosc'),
	('Srednica'),
	('Waga'),
	('Kolor'),
	('Org. oznaczenie'),
	('Material'),
	('Splot'),
	('Wysokosc')

INSERT INTO 
	Polki (ID_Rozmiar_Polki)
VALUES
	(1),
	(1),
	(1),
	(1),
	(2),
	(3),
	(3),
	(4),
	(5),
	(5),
	(5)

INSERT INTO 
	Dostawcy_Zaopatrzenie (Nazwa,Telefon_1,Telefon_2,Email)
VALUES
	('Janex',555222999,789456123,'janexhandel@janex.pl'),
	('PolMat',888666444,159753864,'polmat@wp.pl'),
	('JanuszeDostawy', 455719998, 500687214, 'januszwalczuk@wp.pl'),
	('PolHurt', 987619423, 598277243, 'dostawcy@polhurt.pl'),
	('BestMaks', 600869875, 533987137,'m.korbka@bestmaks-dostawcy.pl'),
	('AlleLogistics', 997644654, 498755653, 'allekontakt@gmail.com'),
	('Tanio&Bezpiecznie', 666997420, 420699865, 'kontakt@taniocha.pl')

INSERT INTO 
	Dostawcy_Zaopatrzenie (Nazwa,Telefon_1,Email)
VALUES
	('MaterialX',999666333,'materialy@mat.pl'),
	('GuzikProd',777444111,'guzpro@guzpro.pl'),
	('HurtMat',000555444,'zamow@hurtmat.pl')

INSERT INTO 
	Kurierzy (Nazwa,Telefon_1,Telefon_2,Email)
VALUES
	('PoczteX',545656022,987111222,'barbara@poczta.pl'),
	('DHL',764985132,733433133,'wysylka@dhl.pl'),
	('JanuszPrzesylki',111111111,1111111112,'janusz@onion.pl'),
	('TNT', 444888354, 789343190, 'krzysztof.zalewski@tntpaczki.com'),
	('Paczka w RUCHu', 500333505, 155987515, 'pomoc@paczki.ruch.pl'),
	('Inpost', 714800800, 567787333, 'twojkurier@inpost.com')

INSERT INTO 
	Kurierzy (Nazwa,Telefon_1,Email)
VALUES
	('DPD',505015145,'darbur@dpd.pl'),
	('SpeedeX',964746852,'truespeed@lan.pl')

INSERT INTO 
	Miejsca (Nazwa)
VALUES
	('Magazyn'),
	('Produkcja'),
	('Utrzymanie ruchu'),
	('Biuro'),
	('Dzial finansow')

INSERT INTO
	Elementy (
	ID_Element_Typ,Element_Nazwa,
	Okres_Przydatnosci_Miesiace)
VALUES
	(1,'£o¿ysko',24),
	(2,'Bawe³na',48),
	(3,'Bawe³na',48),
	(4,'Guzik',0),
	(5,'Tektura falista',0),
	(1,'Sruba',0),
	(1,'Bêbenek',48),
	(1,'Igla do dzianin',0),
	(1,'Kolo pasowe',0),
	(5,'Karton klapowy',0),
	(5,'Foliopaki',48)
INSERT INTO 
	Elementy_Cechy (ID_Element,ID_Cecha,Wartosc_Cechy_Liczbowa,ID_Jednostka,Wartosc_Cechy_Slowna)
VALUES
	(1,4,17,1,null),
	(2,3,120,2,null),
	(3,6,null,null,'660033'),
	(4,4,12,1,null),
	(5,1,3,1,null),
	(6,2,39,1,null),
	(7,1,null,null,'RS/003-11'),
	(8,6,null,null,'Zloty'),
	(9,7,null,null,'07/28061'),
	(10,2,20,2,null),
	(10,2,30,2,null),
	(10,2,40,2,null),
	(11,2,40,2,null),
	(11,3,30,2,null)

INSERT INTO 
	Umowy_Kurierzy (ID_Kurier,Data_Zawarcia,Czas_Dostawy,Koszt_Km,Koszt_Staly)
VALUES
	(1,'2020-04-08',48,1.8,20),
	(2,'2020-04-01',72,1,0),
	(3,'2020-04-05',24,0,50),
	(4,'2020-03-15',12,5,10),
	(5,'2020-03-25',24,1.05,0)

INSERT INTO
	Oferta (ID_Element,Element_Oznaczenie,ID_Dostawcy,Cena_Jedn,Data_Oferty,Ilosc_Minimalna,Ilosc_Maksymalna,Ilosc_W_Opakowaniu_Zbiorczym)
	--zastanawiam siê, czy iloœæ w opakowaniu zbiorczym jest konieczna? Wprowadza niepewnoœæ - iloœæ minimalna to ilosc paczek? Iloœæ paczek w paczkach? To nie czteropak coli
VALUES
	(1,'HDK321122',2,2.2,'2020-03-08',10,1000,5),
	(1,'PL2403',4,3.15,'2020-03-12',2,500,2),
	(1,'L09P9',5,2.05,'2020-04-08',12,1800,5),
	(2,'Bw7441',2,18.30,'2020-03-19',2,40,2),
	(2,'Egyp321',3,22.30,'2020-05-09',1,1000,2),
	(2,'Ctt234',4,21.2,'2020-04-30',10,1000,2),
	(3,'Bw7431',5,20.50,'2020-03-19',1,200,1),
	(3,'Egyp322',3,23.70,'2020-03-08',1,300,1),
	(3,'Ctt235',6,20.25,'2020-03-18',1,250,1),
	(4,'Bert3',6,0.10,'2020-03-04',4,100,1),
	(4,'DE333',7,0.13,'2020-03-08',2,50,1),
	(4,'B235',2,0.09,'2020-03-13',4,100,2),
	(5,'fal66',1,1.05,'2020-03-21',2,200,2),
	(5,'T4544',3,1,'2020-03-23',2,80,1),
	(5,'3224w',5,0.8,'2020-03-25',2,100,1),
	(6,'MB45',7,20.25,'2020-04-06',4,500,2),
	(6,'mb45',4,20.25,'2020-04-06',10,200,5),
	(6,'J45FF',2,0.03,'2020-04-01',5,250,5),
	(7,'BJP001',7,23.5,'2020-02-08',5,300,5),
	(7,'BJP002',6,16.0,'2020-02-28',10,300,10),
	(7,'BJP003',7,16.5,'2020-04-16',20,500,10),
	(8,'IJP012',7,0.1,'2020-03-21',100,3000,100),
	(8,'IJP011',8,0.2,'2020-03-22',200,3500,100),
	(8,'IJP010',2,0.25,'2020-04-01',150,2000,50),
	(9,'KJP020',1,11,'2020-03-30',1,100,1),
	(9,'KJP021',7,8,'2020-04-02',2,200,2),
	(9,'KJP022',2,12,'2020-04-11',1,150,1),
	(10,'AJP030',1,0.29,'2020-04-15',1000,6000,20),
	(10,'AJP031',2,0.35,'2020-04-11',500,3000,10),
	(10,'AJP032',1,0.49,'2020-04-16',500,4000,10),
	(11,'FJP040',1,0.2,'2020-03-15',200,10000,100),
	(11,'FJP041',3,0.3,'2020-04-15',100,5000,100),
	(11,'FJP042',2,0.4,'2020-03-19',100,4000,50)

INSERT INTO Zamowienia_Przydzial(ID_Zamowienia, ID_pracownicy, ID_umowy) 
VALUES 
	(1,2,3),
	(2,4,5),
	(5,4,3),
	(3,3,2),
	(4,2,1)

INSERT INTO 
	Zamowienia_Dostawy(ID_zamowienia,Data_dostawy_planowana,Data_dostawy_rzeczywista) 
VALUES 
	(1,'2020-04-08','2020-04-09'),
	(2,'2020-04-09','2020-04-11'),
	(3,'2020-04-09','2020-04-08'),
	(4,'2020-04-12','2020-04-14'),
	(5,'2020-04-16','2020-04-16')

INSERT INTO 
	Zawartosc(ID_Polka,ID_Element,ID_Dostawy,Ilosc_Paczek) 
VALUES 
	(1,2,1,5),
	(2,2,1,5),
	(4,1,2,10),
	(5,3,4,1),
	(3,3,5,10);

INSERT INTO 
	Dostawy_zawartosc(ID_dostawy,ID_element,ID_oferta,Ilosc_dostarczona) 
VALUES 
	(1,2,4,5),
	(1,3,8,5),
	(2,2,5,10),
	(3,3,9,2),
	(4,5,14,1)



INSERT INTO		
	Dostarczenia_Wewn(ID_pracownicy,ID_dostawy,Ilosc_dostarczona,ID_miejsca,Data_dostarczenia) 
VALUES 
	(4,1,1,3,'2020-04-08'),
	(5,2,5,3,'2020-04-10'),
	(5,3,15,3,'2020-04-10'),
	(5,4,8,3,'2020-04-15'),
	(5,4,10,3,'2020-04-17')

INSERT INTO 
	Dostarczenia_Zewn(ID_pracownicy,ID_zamowienia,Ilosc_dostarczona,ID_miejsca,Data_dostarczenia) 
VALUES 
	(5,1,200,3,'2020-04-19'),
	(5,1,20,3,'2020-04-20'),
	(5,2,15,3,'2020-04-21'),
	(4,3,2000,3,'2020-04-25'),
	(4,3,100,3,'2020-04-26')
	------------- INSERTY PRZYGOTOANIE PRODUKCJI

	INSERT INTO Rodzaj_Dokumentacji(Nazwa)
VALUES
('Kod na wycinarkê'),
('Dokumentacja 2D');

INSERT INTO Dokumentacje(ID_Rodzaj_Dokumentacji,ID_Pracownika,Data_Wykonania)
VALUES
(2,17,2020-03-01),
(1,13,2020-03-06),
(2,18,2020-03-16),
(1,14,2020-04-01),
(1,13,2020-04-10),
(2,18,2020-05-11);

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

INSERT into Proces_Technologiczny(ID_Dokumentacja_Proces,ID_Pracownika)
VALUES
(1,13),
(3,14),
(2,14),
(4,14),
(4,13),
(1,13);

INSERT INTO Rodzaj_Maszyny (Rodzaj_Maszyny)
VALUES
('Maszyna_Do_Szycia'),
('Wycinarka_Laserowa'),
('Pralka'),
('Suszarka'),
('Maszyna_Do_Prasowania');

INSERT INTO Maszyny (Model, ID_Rodzaj_Maszyny, Producent, Gwarancja_Do, Data_Zakupu, Resurs_Rbh, Resurs_Data_Serwisu)
VALUES
('Pelikan_MD2', 1, '£ucznik', '2022-04-10', '2020-04-10', 200, '2020-07-10'),
('Pelikan_MD2', 1, '£ucznik', '2022-04-10', '2020-04-10', 180, '2020-07-10'),
('Pelikan_MD2', 1, '£ucznik', '2022-04-10', '2020-04-10', 190, '2020-07-10'),
('Pelikan_MD2', 1, '£ucznik', '2022-04-10', '2020-04-10', 220, '2020-07-10'),
('Pelikan_MD2', 1, '£ucznik', '2022-04-10', '2020-04-10', 170, '2020-07-10'),
('Pelikan_MD2', 1, '£ucznik', '2022-04-10', '2020-04-10', 170, '2020-07-10'),
('Pelikan_MD2', 1, '£ucznik', '2022-04-10', '2020-04-10', 170, '2020-07-10'),
('Pelikan_MD2', 1, '£ucznik', '2022-04-10', '2020-04-10', 170, '2020-07-10'),
('Pelikan_MD2', 1, '£ucznik', '2022-04-10', '2020-04-10', 170, '2020-07-10'),
('Laser_Tag_012', 2, 'Laser_Pol', '2022-04-15', '2020-04-15', 700, '2020-07-15'),
('Laser_Tag_012', 2, 'Laser_Pol', '2022-04-15', '2020-04-15', 700, '2020-07-15'),
('Rotate_Master', 3, 'Whirpool', '2022-04-06', '2020-04-06', 300, '2020-10-06'),
('Rotate_Master', 3, 'Whirpool', '2022-04-06', '2020-04-06', 300, '2020-10-06'),
('Rotate_Master', 3, 'Whirpool', '2022-04-06', '2020-04-06', 300, '2020-10-06'),
('Air_Dryer_HK2', 4, 'Whirpool', '2022-04-06', '2020-04-06', 200, '2020-10-06'),
('Air_Dryer_HK2', 4, 'Whirpool', '2022-04-06', '2020-04-06', 200, '2020-10-06'),
('Air_Dryer_HK2', 4, 'Whirpool', '2022-04-06', '2020-04-06', 200, '2020-10-06'),
('Iron_Cast_v2', 5, 'Bosh', '2022-04-05', '2020-05-06', 300, '2020-10-05'),
('Iron_Cast_v2', 5, 'Bosh', '2022-04-05', '2020-05-06', 300, '2020-10-05');

INSERT INTO Rodzaj_Obslugi(Nazwa)
VALUES
('Serwis'),
('Naprawa'),
('Przezbrojenie');

INSERT INTO Obsluga_Techniczna (ID_Maszyny, ID_Rodzaj_Obslugi, Data_Wykonania, ID_Pracownika)
VALUES
(1,2,2020-04-22,4),
(10,1,2020-04-27,4),
(11,1,2020-04-27,4),
(3,3,2020-04-23,4),
(4,3,2020-04-23,4);

INSERT into Czesci_Obsluga(ID_Element, Ilosc)
VALUES
(1,2),
(6,1),
(7,1),
(8,2),
(9,2),
(6,2),
(1,2),
(7,1),
(8,2);

INSERT INTO Maszyny_Proces ( ID_Proces_Technologiczny, ID_Rodzaj_Maszyny, Liczba, Liczba_Rbh)
VALUES
(1, 1, 3, 240),
(1, 2, 1, 40),
(1, 3, 1, 80),
(1, 4, 1, 40),
(1, 5, 1, 30),
(2, 1, 2, 120),
(2, 2, 1, 20),
(2, 3, 1, 60),
(2, 4, 1, 30),
(2, 5, 1, 15),
(3, 1, 5, 500),
(3, 2, 1, 80),
(3, 3, 2, 160),
(3, 4, 2, 100);

INSERT INTO Proces_Zamowienie(ID_Proces_Technologiczny,ID_Zamowienie_Produkt)
VALUES
(1,2),
(2,1),
(3,4),
(4,3),
(5,1),
(6,2);

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

INSERT INTO Etapy_W_Procesie (ID_Proces_Technologiczny, ID_Etapu, Czas)
VALUES
(1, 1, 1),
(1, 2, 2),
(1, 3, 3),
(1, 4, 4),
(1, 5, 5),
(1, 6, 5),
(1, 7, 5),
(1, 8, 5),
(1, 9, 5),
(1, 10, 5),
(2, 1, 1),
(2, 2, 2),
(2, 3, 3),
(2, 5, 5),
(2, 8, 5),
(3, 1, 1),
(3, 2, 2),
(3, 3, 3),
(3, 4, 4),
(3, 5, 5),
(3, 6, 5),
(3, 7, 5),
(3, 8, 5),
(3, 9, 5),
(3, 10, 5),
(4, 1, 1),
(4, 2, 2),
(4, 3, 3),
(4, 5, 5),
(4, 8, 5),
(5, 1, 1),
(5, 2, 2),
(5, 3, 3),
(5, 4, 4),
(5, 5, 5),
(5, 6, 5),
(5, 7, 5),
(5, 8, 5),
(5, 9, 5),
(5, 10, 5);
GO
	--------------------Inserty Produkcja-------------------------
INSERT INTO Proces_Produkcyjny (ID_Zamowienie_Produkt, ID_Proces_Technologiczny, Data_Rozpoczecia, Data_Zakonczenia, ID_Dokumentacja_Proces, Uwagi)
VALUES
(1, 1, '2020-04-12 09:21:15', '2020-04-14 19:00:00', 1, 'brak uwag'),
(2, 2, '2020-04-13 06:30:00', '2020-04-14 08:30:00', 2, 'brak uwag'),
(3, 3, '2020-04-14 09:30:00', '2020-04-19 13:35:01', 3, 'brak uwag'),
(4, 4, '2020-04-20 12:20:00', '2020-04-21 13:15:00', 4, 'brak uwag'),
(5, 5, '2020-04-22 09:25:00', '2020-04-23 21:45:00', 5, 'brak uwag'),
(6, 6, '2020-04-22', '2020-04-23', 6, 'brak uwag');

INSERT INTO Material_Na_Produkcji (ID_Procesu_Produkcyjnego, ID_Element, Liczba, ID_Jednostka, Odpad)
VALUES
(1, 2, 15, 4, 0.5), 
(1, 4, 30, 8, 0), 
(2, 2, 20, 4, 1.2), 
(3, 3, 33, 3, 1.5), 
(3, 4, 40, 8, 0), 
(4, 2, 50, 4, 1), 
(5, 2, 30, 4, 2.5), 
(6, 2, 50, 4, 1.5), 
(6, 4, 15, 8, 1); 

INSERT INTO Realizacja_Procesu (ID_Procesu_Produkcyjnego, ID_Etapu, Data_Rozpoczecia_Procesu, Data_Zakonczenia_Procesu, Data_Kontroli, Uwagi_Kontroli)
VALUES
(1, 1, '2020-04-12 09:21:15', '2020-04-12 10:21:15', '2020-04-12 10:25:00', 'brak uwag'),
(1, 2, '2020-04-12 10:30:19', '2020-04-12 12:34:12', '2020-04-12 12:36:00', 'brak uwag'),
(1, 3, '2020-04-12 12:37:15', '2020-04-12 15:38:00', '2020-04-12 15:40:00', 'brak uwag'),
(1, 4, '2020-04-12 15:42:00', '2020-04-12 19:38:00', '2020-04-12 19:42:00', 'brak uwag'),
(1, 5, '2020-04-12 19:45:00', '2020-04-13 08:50:00', '2020-04-13 08:53:00', 'brak uwag'),
(1, 6, '2020-04-13 08:55:00', '2020-04-13 13:01:00', '2020-04-13 13:04:00', 'brak uwag'),
(1, 7, '2020-04-13 13:10:00', '2020-04-13 18:02:00', '2020-04-13 18:05:00', 'brak uwag'),
(1, 8, '2020-04-13 18:09:00', '2020-04-14 07:52:15', '2020-04-14 07:58:00', 'brak uwag'),
(1, 9, '2020-04-14 08:00:05', '2020-04-14 13:12:00', '2020-04-14 13:20:00', 'brak uwag'),
(1, 10, '2020-04-14 13:25:15', '2020-04-14 18:40:00', '2020-04-14 18:45:00', 'brak uwag'),
(2, 1, '2020-04-13 06:30:00', '2020-04-13 07:30:00','2020-04-13 07:35:00','brak uwag'),
(2, 2, '2020-04-13 07:41:00', '2020-04-13 09:50:00','2020-04-13 09:55:00','brak uwag'),
(2, 3, '2020-04-13 10:00:00', '2020-04-13 13:11:00','2020-04-13 13:14:00','brak uwag'),
(2, 5, '2020-04-13 13:30:00', '2020-04-13 18:25:00','2020-04-13 18:27:00','brak uwag'),
(2, 8, '2020-04-13 18:40:00', '2020-04-14 07:50:00','2020-04-14 08:01:00','brak uwag'),
(3, 1, '2020-04-14 09:30:01', '2020-04-14 10:30:01', '2020-04-14 13:00:01', 'brak uwag;'),
(3, 2, '2020-04-14 14:20:01', '2020-04-14 16:20:01', '2020-04-14 16:00:01', 'brak uwag;'),
(3, 3, '2020-04-14 17:40:01', '2020-04-14 20:40:01', '2020-04-14 21:00:01', 'brak uwag;'),
(3, 4, '2020-04-15 06:30:01', '2020-04-15 10:30:01', '2020-04-15 12:00:01', 'brak uwag;'),
(3, 5, '2020-04-15 13:20:01', '2020-04-15 18:20:01', '2020-04-15 19:00:01', 'brak uwag;'),
(3, 6, '2020-04-16 10:30:01', '2020-04-16 15:30:01', '2020-04-16 17:00:01', 'brak uwag;'),
(3, 7, '2020-04-17 07:30:01', '2020-04-17 12:30:01', '2020-04-17 14:00:01', 'brak uwag;'),
(3, 8, '2020-04-17 15:40:01', '2020-04-17 20:40:01', '2020-04-17 21:00:01', 'brak uwag;'),
(3, 9, '2020-04-18 08:30:01', '2020-04-18 13:30:01', '2020-04-18 14:00:01', 'brak uwag;'),
(3, 10, '2020-04-19 07:22:01', '2020-04-19 12:22:01', '2020-04-19 13:22:01', 'brak uwag;'),
(4, 1, '2020-04-20 12:20:00','2020-04-20 13:15:00', '2020-04-20 13:21:00','brak uwag'),
(4, 2, '2020-04-20 13:24:00','2020-04-20 15:26:00', '2020-04-20 15:30:00','brak uwag'),
(4, 3, '2020-04-20 15:35:00','2020-04-20 18:30:00', '2020-04-20 18:32:00','brak uwag'),
(4, 5, '2020-04-20 18:36:00','2020-04-21 17:40:00', '2020-04-21 17:45:00','brak uwag'),
(4, 8, '2020-04-21 07:50:00','2020-04-21 13:02:00', '2020-04-21 13:08:00','brak uwag');

INSERT INTO Przydzial_Zasobow (ID_Realizacji_Procesu, ID_Pracownika , ID_Maszyny)
VALUES
(1, 1, 10),
(1, 2, 11),
(2, 9, 18),
(3, 5, 1),
(3, 6, 2);

INSERT INTO Zapotrzebowanie_Opakowan (ID_Procesu_Produkcyjnego, ID_Element, Liczba, Czy_Otrzymano, Uwagi)
VALUES
(1, 11, 300, 1, 'brak uwag'), 
(1, 10, 10, 1, 'brak uwag'),
(2, 11, 500, 1, 'brak uwag'),
(2, 10, 8, 1, 'brak uwag'),
(3, 11, 500, 1, 'brak uwag'),
(3, 10, 10, 1, 'brak uwag'),
(4, 11, 270, 1, 'brak uwag'),
(4, 10, 10, 1, 'brak uwag');

INSERT INTO Kontrola_Efektywnosci (ID_Procesu_Produkcyjnego, Data_Kontroli, Dokument, Uwagi, Zgodnosc_Zamowienia , Liczba_Poprawnych, Liczba_Blednych)
VALUES
(1, '2020-04-14 18:50:00', 'dok_1.img', 'brak uwag', 1, 300, 0),
(2, '2020-04-14 08:30:00', 'dok_2.img', 'brak uwag', 1, 505, 4),
(3, '2020-04-19 13:30:01', 'dok_3.img', 'brak uwag', 1, 500, 0),
(4, '2020-04-21 13:15:00', 'dok_4.img', 'brak uwag', 1, 280, 5),
(5, '2020-04-23 21:40:00', 'dok_4.img', 'brak uwag', 1, 103, 1);
use master