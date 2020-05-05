
USE Szwalnia11

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
    ('Wszywanie suwaków');

INSERT into Klienci (Imie, Nazwisko, Nazwa_Firmy, NIP, Adres, Odleglosc_km, Telefon, E_Mail)
VALUES
('Jan','Jankowski','Firmowo','1213141516','Firmowa 2, Warszawa','100','987548362','mailfirmowy@gmail.com'),
('Piotr','Piotrowski','Zamaseczowo','9882351235','Kazimierza Wielkiego 44, £ódŸ', '90','675234123','Zamaseczki@gmail.com'),
('Pawe³','Paw³owski','Ulandia','7654827346','Aleje Religijne 784, Mr¹gowo','526374583','92','Tomasz.Rogulski@gmail.com'),
('Kamil','Kamilowski','Primaris','2845401300','Królewska 1, Warszawa','748372421','70','FirmowyMail@gmail.com'),
('Ferrus','Manus','IOM','1113123125','Pa³acowa 1, Terra', '70','777838352','IOM.mail@gmail.com');

INSERT into Pensja (Pensja)
VALUES
('2500'),
('3000'),
('4000'),
('4500'),
('10000');

INSERT into Stanowisko (Stanowisko,Opis,ID_Pensji)
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

INSERT into Rodzaj_Umowy (Rodzaj_Umowy, Uwagi)
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

INSERT INTO Rodzaj_Urlopu (Nazwa)
VALUES 
('Urlop wypoczynkowy'),
('Urlop Macierzyñski'),
('Zwolnienie Lekarskie');

INSERT INTO Wymiar_Urlopu (Iloœæ_dni)
VALUES 
('20'),
('22'),
('26'),
('brak');

INSERT into Urlop (ID_Pracownika, Data_rozpoczêcia, Data_zakonczenia, ID_Rodzaj_Urlopu, ID_Wymiar_Urlopu)
VALUES
('1','2020-03-15','2020-03-17', '3','4'),
('2','2020-03-18','2020-03-25', '1','2'),
('6','2020-03-20','2020-03-25', '1','2'),
('8','2020-03-27','2020-04-05', '1','3'),
('18','2020-04-20','2020-05-30', '3','4');

INSERT into Dzialy (Nazwa_dzialu)
VALUES
('Zarz¹dzania'),
('Magazynowy'),
('Produkcji'),
('Przygotowania produkcji');

INSERT into Pracownicy_Zatrudnienie (ID_Pracownika, ID_Stanowiska, ID_Etatu, ID_Rodzaju_Umowy, ID_Dzialu, Data_Zatrudnienia, Koniec_umowy)
VALUES
('1','1','1','1','3','2020-03-01','2050-03-01'),
('2','1','1','1','3','2020-03-01','2050-03-01'),
('3','3','3','2','3','2020-03-01','2021-03-01'),
('4','3','2','2','3','2020-03-01','2021-03-01'),
('5','2','5','2','3','2020-03-01','2021-03-01'),
('6','2','5','2','3','2020-03-01','2021-03-01'),
('7','5','5','1','1','2020-03-01','2050-03-01'),
('8','5','5','1','1','2020-03-01','2050-03-01'),
('9','4','5','1','3','2020-03-01','2050-03-01'),
('10','4','5','2','3','2020-03-01','2020-06-11'),
('11','6','5','2','2','2020-03-01','2021-03-01'),
('12','6','5','1','2','2020-03-01','2050-03-01'),
('13','7','5','2','4','2020-03-01','2020-05-25'),
('14','7','5','1','4','2020-03-01','2050-03-01'),
('15','8','5','1','4','2020-03-01','2050-03-01'),
('16','8','5','2','4','2020-03-01','2020-05-25'),
('17','9','5','1','4','2020-03-01','2050-03-01'),
('18','9','5','2','4','2020-03-01','2020-06-01');

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

INSERT into Zamowienia(ID_Klienta, Data_Zlozenia, Data_Zakonczenia, Umowa, ID_Pracownika)
VALUES
('1','2020-04-10','2020-04-15','1', '7'),
('2','2020-04-13','2020-04-20','1', '7'),
('3','2020-04-14','2020-04-21','1', '7'),
('4','2020-04-17','2020-04-22','1', '8'),
('5','2020-04-20','2020-04-24','1', '8');

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

INSERT INTO Srodki_Trwale (Nazwa, Producent, Numer_seryjny, ID_Dzialu, Koszt_zakupu, Roczny_stopien_amortyzacji, Gwarancja, Zamortyzowane)
VALUES
('Laptop','Asus','VDA14586', 1, '5600', '20','2022-05-22', '0'),
('Laptop','Asus','VDA14444', 1, '5600', '20','2022-05-22', '0'),
('Laptop','Asus','VDA54896', 2, '5600', '20','2022-05-22', '0'),
('Laptop','Asus','VDA57892', 2, '5600', '20','2022-05-22', '0'),
('Laptop','Asus','VDA23696', 4, '5600', '20','2022-05-22', '0'),
('Laptop','Asus','VDA33365', 4, '5600', '20','2022-05-22', '0'),
('Laptop','Asus','VDA23569', 4, '5600', '20','2022-05-22', '0'),
('Laptop','Asus','VDA23589', 1, '5600', '20','2022-05-22', '0'),
('Maszyna Laserowa','Perfect Laser','FRA34KA1123', 3, '105000', '14','2024-10-10', '0'),
('Maszyna Laserowa','Perfect Laser','FRA34RO4589', 3, '105000', '14','2024-10-10', '0'),
('Maszyna Laserowa','Perfect Laser','FRA34HA1145', 3, '105000', '14','2024-10-10', '0'),
('Maszyna Laserowa','Perfect Laser','FRA34WU5568', 3, '105000', '14','2024-10-10', '0'),
('MAszyna Do Szycia','Janome','W186', 3, '5500', '14','2026-05-01', '0'),
('MAszyna Do Szycia','Janome','W189', 3, '5500', '14','2026-05-01', '0'),
('MAszyna Do Szycia','Janome','W199', 3, '5500', '14','2026-05-01', '0'),
('MAszyna Do Szycia','Janome','W253', 3, '5500', '14','2026-05-01', '0'),
('MAszyna Do Szycia','£ucznik','A456VB', 3, '6200', '14','2026-05-01', '0'),
('MAszyna Do Szycia','£ucznik','AA45GH', 3, '6200', '14','2026-05-01', '0'),
('MAszyna Do Szycia','£ucznik','ATY45A', 3, '6200', '14','2026-05-01', '0'),
('Pralka','Whirpool','B56/456', 3, '8000', '14','2027-10-01', '0'),
('Pralka','Whirpool','B56/678', 3, '8000', '14','2027-10-01', '0'),
('Pralka','Whirpool','B56/678', 3, '8000', '14','2027-10-01', '0'),
('Pralka','Whirpool','B56/345', 3, '8000', '14','2027-10-01', '0'),
('¯elasko przemys³owe','Bosh','MD2/125/2019', 3, '4500', '14','2025-04-12', '0'),
('¯elasko przemys³owe','Bosh','MD2/225/2019', 3, '4500', '14','2025-04-12', '0'),
('¯elasko przemys³owe','Bosh','MD2/199/2019', 3, '4500', '14','2025-04-12', '0'),
('¯elasko przemys³owe','Bosh','MD2/198/2019', 3, '4500', '14','2025-04-12', '0');

---------------------INSERTY MAGAZYN---------------------------------------------------------
INSERT INTO
	Statusy (Status_zatw)
VALUES
	('brak'),
	('odrzucone'),
	('przyjete')

INSERT INTO 
	Polki_rozmiary (Wysokosc,Szerokosc,Glebokosc)
VALUES
	(50,100,100),
	(100,100,100),
	(150,100,100),
	(200,100,100),
	(50,200,100),
	(100,200,100),
	(150,200,100),
	(200,200,100),
	(100,300,200),
	(200,300,200),
	(300,300,200),
	(400,300,200)

INSERT INTO 
Elementy_Typy (Typ, Czy_wlasne)
VALUES
	('Czesci maszyn', 0),
	('Tkanina', 0),
	('Nici', 0),
	('Guziki', 0),
	('Opakowania', 0),
	('Gumka', 0),
	('Polfabrykat', 1),
	('Koszula', 1),
	('Spodnie', 1),
	('Rekawiczki',1),
	('Kurtka', 1),
	('Bluza', 1),
	('Suwak', 0);



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
	(2),
	(2),
	(5),
	(6),
	(6),
	(7), --1 regal - 8 polek
	(1),
	(1),
	(1),
	(2),
	(2),
	(2),
	(2),
	(6),
	(9), --2 regal - 9 polek /do 17
	(10),
	(10),
	(10),
	(12), --3 regal - 4 polek /do 21
	(2),
	(2),
	(2),
	(2),
	(2),
	(2), --4 regal - 6 polek /do 27
	(1),
	(1),
	(2),
	(2),
	(3),
	(3)  --5 regal - 5 polek /do 32

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
	('Dzial finansow'),
	('Wysylka')

INSERT INTO 
	Regaly(Oznaczenie)
VALUES
	 ('AA'),
	 ('AB'),
	 ('AC'),
	 ('AD'),
	 ('AE')

INSERT INTO
	Typy_cechy_rejestr (ID_typ, ID_cecha)
VALUES
	(1,5),
	(1,7),
	(2,1),
	(2,3),
	(2,6),
	(2,8),
	(2,9),
	(3,1),
	(3,6),
	(4,1),
	(4,4),
	(4,6),
	(4,8),
	(5,2),
	(5,3),
	(5,5),
	(5,8),
	(5,10),
	(6,3),
	(6,6),
	(7,6),
	(7,7),
	(8,6),
	(8,7);

INSERT INTO
	Elementy (ID_Element_Typ,Element_Nazwa,Okres_Przydatnosci_Miesiace)
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
	(5,'Foliopaki',48),
	(8,'Koszula w paski',0),
	(9,'Spodnie czerwone z kropkami',0),
	(10,'Rekawiczki w paski',0),
	(11,'Kurtka z kieszonka',0),
	(12,'Bluza z kapturem',0),
	(13,'Suwak',0);

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
	Polki_regaly (ID_Regal, ID_Polka)
VALUES
	(1,1),
	(1,2),
	(1,3),
	(1,4),
	(1,5),
	(1,6),
	(1,7),
	(1,8),
	(2,9),
	(2,10),
	(2,11),
	(2,12),
	(2,13),
	(2,14),
	(2,15),
	(2,16),
	(2,17),
	(3,18),
	(3,19),
	(3,20),
	(3,21),
	(4,22),
	(4,23),
	(4,24),
	(4,25),
	(4,26),
	(4,27),
	(5,28),
	(5,29),
	(5,30),
	(5,31),
	(5,32),
	(5,33)

INSERT INTO 
	Umowy_Kurierzy (ID_Kurier,Data_Zawarcia,Czas_Dostawy,Koszt_Km,Koszt_Staly)
VALUES
	(1,'2020-04-08',48,1.8,20),
	(2,'2020-04-01',72,1,0),
	(3,'2020-04-05',24,0,50),
	(4,'2020-03-15',12,5,10),
	(5,'2020-03-25',24,1.05,0)

INSERT INTO
	Oferta (ID_Element,Element_Oznaczenie,ID_Dostawcy,Cena_Jedn,Data_Oferty,Ilosc_Minimalna,Ilosc_Maksymalna, Ilosc_w_opakowaniu_pojedynczym, ID_Jednostka, Ilosc_W_Opakowaniu_Zbiorczym, Deklarowany_czas_dostawy)
	--zastanawiam siê, czy iloœæ w opakowaniu zbiorczym jest konieczna? Wprowadza niepewnoœæ - iloœæ minimalna to ilosc paczek? Iloœæ paczek w paczkach? To nie czteropak coli
VALUES
	(1,'HDK321122',2,2.2,'2020-03-08',10,1000,4,8,5,72),
	(1,'PL2403',4,3.15,'2020-03-12',2,500,4,8,2,24),
	(1,'L09P9',5,2.05,'2020-04-08',12,1800,4,8,5,36),
	(2,'Bw7441',2,18.30,'2020-03-19',2,40,50,5,2,72),
	(2,'Egyp321',3,22.30,'2020-05-09',1,1000,40,5,2,72),
	(2,'Ctt234',4,21.2,'2020-04-30',10,1000,20,5,2,24),
	(3,'Bw7431',5,20.50,'2020-03-19',1,200,12,5,1,24),
	(3,'Egyp322',3,23.70,'2020-03-08',1,300,18,5,1,36),
	(3,'Ctt235',6,20.25,'2020-03-18',1,250,40,5,1,72),
	(4,'Bert3',6,0.10,'2020-03-04',4,100,10,8,1,36),
	(4,'DE333',7,0.13,'2020-03-08',2,50,12,8,1,36),
	(4,'B235',2,0.09,'2020-03-13',4,100,20,8,2,72),
	(5,'fal66',1,1.05,'2020-03-21',2,200,18,5,2,108),
	(5,'T4544',3,1,'2020-03-23',2,80,25,5,1,36),
	(5,'3224w',5,0.8,'2020-03-25',2,100,22,5,1,48),
	(6,'MB45',7,20.25,'2020-04-06',4,500,40,8,2,72),
	(6,'mb45',4,20.25,'2020-04-06',10,200,80,8,5,36),
	(6,'J45FF',2,0.03,'2020-04-01',5,250,50,8,5,72),
	(7,'BJP001',7,23.5,'2020-02-08',5,300,1,8,5,72),
	(7,'BJP002',6,16.0,'2020-02-28',10,300,1,8,10,36),
	(7,'BJP003',7,16.5,'2020-04-16',20,500,1,8,10,48),
	(8,'IJP012',7,0.1,'2020-03-21',100,3000,5,8,100,36),
	(8,'IJP011',8,0.2,'2020-03-22',200,3500,5,8,100,36),
	(8,'IJP010',2,0.25,'2020-04-01',150,2000,10,8,50,48),
	(9,'KJP020',1,11,'2020-03-30',1,100,1,8,1,36),
	(9,'KJP021',7,8,'2020-04-02',2,200,1,8,2,108),
	(9,'KJP022',2,12,'2020-04-11',1,150,2,8,1,72),
	(10,'AJP030',1,0.29,'2020-04-15',1000,6000,50,8,20,36),
	(10,'AJP031',2,0.35,'2020-04-11',500,3000,20,8,10,48),
	(10,'AJP032',1,0.49,'2020-04-16',500,4000,25,8,10,72),
	(11,'FJP040',1,0.2,'2020-03-15',200,10000,100,8,100,36),
	(11,'FJP041',3,0.3,'2020-04-15',100,5000,50,8,100,48),
	(11,'FJP042',2,0.4,'2020-03-19',100,4000,50,8,50,36)

INSERT INTO Zamowienia_Przydzial(ID_Zamowienia, ID_pracownicy, ID_umowy) 
VALUES 
	(1,2,3),
	(2,4,5),
	(5,4,3),
	(3,3,2),
	(4,2,1)

INSERT INTO 
	Zamowienia_Dostawy(ID_zamowienia,Data_dostawy_planowana,Data_dostawy_rzeczywista,ID_statusu) 
VALUES 
	(1,'2020-04-08','2020-04-09',1),
	(2,'2020-04-09','2020-04-11',2),
	(3,'2020-04-09','2020-04-08',1),
	(4,'2020-04-12','2020-04-14',1),
	(5,'2020-04-16','2020-04-16',1)

INSERT INTO 
	Zawartosc(ID_Polka,ID_Element,ID_Dostawy,Ilosc_Paczek) 
VALUES 
	(1,2,2,5),
	(2,3,1,5),
	(4,2,2,3),
	(5,3,1,5),
	(3,3,1,5),
	(8,7,5,7),
	(9,9,5,0.7),
	(10,5,4,10),
	(11,7,5,5.5),
	(12,3,3,1.1),
	(29,2,1,5),
	(6,9,5,1.3),
	(14,5,4,10),
	(17,9,5,1.5),
	(23,5,4,10),
	(33,3,3,2),
	(13,3,3,0.9),
	(19,3,3,1),
	(18,7,5,14.5),
	(20,7,5,15),
	(25,5,4,10),
	(31,3,3,2),
	(22,5,4,10),
	(30,5,4,20),
	(26,5,4,10),
	(28,5,4,20)

INSERT INTO 
	Dostawy_zawartosc(ID_dostawy,ID_element,ID_oferta,Ilosc_dostarczona) 
VALUES 
	(1,2,4,5),
	(1,3,8,15),
	(2,2,5,10),
	(3,3,9,7),
	(4,5,14,100),
	(5,7,20,42),
	(5,9,26,3.5)

INSERT INTO		
	Dostarczenia_Wewn(ID_pracownicy,ID_dostawy,Ilosc_dostarczona,ID_miejsca,Data_dostarczenia) 
VALUES 
	(12,1,1,3,'2020-04-08'),
	(12,2,5,3,'2020-04-10'),
	(11,3,15,3,'2020-04-10'),
	(11,4,8,3,'2020-04-15'),
	(11,4,10,3,'2020-04-17')

INSERT INTO 
	Dostarczenia_Zewn(ID_pracownicy,ID_zamowienia,ID_element,Ilosc_dostarczona,ID_miejsca,Data_dostarczenia) 
VALUES --ID_miejsca 6 to wysylka, 2 to produkcja
	(12,1,1,-100,6,'2020-04-30'),
	(12,1,3,-100,6,'2020-04-30'),
	(11,3,1,-100,6,'2020-05-01'),
	(11,3,4,-100,6,'2020-05-05'),
	(12,2,5,-500,6,'2020-05-02'),
	(12,5,6,-50,6,'2020-05-02'),
	(11,5,7,-50,6,'2020-05-04'),
	(11,4,7,-5000,6,'2020-05-05'),--
	(12,1,1,100,2,'2020-04-29'),
	(12,1,3,100,2,'2020-04-29'),
	(11,3,1,100,2,'2020-04-30'),
	(11,3,4,100,2,'2020-05-04'),
	(12,2,5,500,2,'2020-05-01'),
	(12,5,6,50,2,'2020-05-01'),
	(11,5,7,50,2,'2020-05-03'),
	(11,4,7,5000,2,'2020-05-04')

------Dodatokowy insert zarz¹dzanie---
INSERT INTO Zamowienie_Element (ID_Zamowienia, ID_Element, Ilosc, Licz_do_zamowienia)
VALUES

('1','12','100','0'), -- FILO pozmienialem zamowione elementy, poniewaz klient nie chce szyc lozysk :), usunac komentazr
('1','13','100','0'),
('2','14','500','0'),
('4','15','5000','0'),
('3','16','100','0'),
('3','12','100','0'),
('5','14','50','0'),
('5','16','50','0');

-------------------------------------- INSERTY PRZYGOTOANIE PRODUKCJI---------------------------------

INSERT INTO Rodzaj_Dokumentacji(Nazwa)
VALUES

('Kod na wycinarkê'),
('Dokumentacja 2D');

INSERT INTO Dokumentacje(ID_Rodzaj_Dokumentacji,ID_Pracownika,Data_Wykonania,Plik)
VALUES

--1 zamowienie
(1,13,'2020-04-10','lokalizacja'),
(2,17,'2020-04-10','lokalizacja'),
(1,14,'2020-04-10','lokalizacja'),
(2,17,'2020-04-10','lokalizacja'),
--2 zamowienie
(1,13,'2020-04-13','lokalizacja'),
(2,18,'2020-04-13','lokalizacja'),
--3 zamowienie
(1,13,'2020-04-14','lokalizacja'),
(2,18,'2020-04-14','lokalizacja'),
(1,14,'2020-04-14','lokalizacja'),
(2,17,'2020-04-14','lokalizacja'),
--4 zamowienie
(1,13,'2020-04-17','lokalizacja'),
(2,18,'2020-04-17','lokalizacja'),
--5 zamowienie
(1,14,'2020-04-20','lokalizacja'),
(2,18,'2020-04-20','lokalizacja'),
(1,14,'2020-04-20','lokalizacja'),
(2,17,'2020-04-20','lokalizacja');

INSERT into Proces_Technologiczny(ID_Pracownika)
VALUES

(13), 
(14),
(14), 
(13),
(14), 
(13), 
(13), 
(14); 

INSERT INTO Dokumentacja_proces(ID_Dokumentacji,ID_Proces_Technologiczny)
VALUES

--1 zamowienie
(1,1),
(2,1),
(3,2),
(4,2),
--2 zamowienie
(5,3),
(6,3),
--3 zamowienie
(7,4),
(8,4),
(9,5),
(10,5),
--4 zamowienie
(11,6),
(12,6),
--5 zamowienie
(13,7),
(14,7),
(15,8),
(16,8);


INSERT INTO Rodzaj_Maszyny (Rodzaj_Maszyny,Koszt_Rbh)
VALUES

('Maszyna_Do_Szycia',60),
('Wycinarka_Laserowa',70),
('Pralka',80),
('Suszarka',90),
('Maszyna_Do_Prasowania',100);

INSERT INTO Maszyny (ID_Srodki_Trwale,ID_Rodzaj_Maszyny,Resurs_Rbh,Serwis_Co_Ile)
VALUES

(9,2,1000,60),
(10,2,1000,60),
(11,2,1000,60),
(12,2,1000,60),
(13,1,1100,90),
(14,1,1100,90),
(15,1,1100,90),
(16,1,1100,90),
(17,1,1100,90),
(18,1,1100,90),
(19,1,1100,90),
(20,3,2000,50),
(21,3,2000,50),
(22,3,2000,50),
(23,3,2000,50),
(24,5,3000,80),
(25,5,3000,80),
(26,5,3000,80),
(27,5,3000,80);

INSERT INTO Rodzaj_Obslugi(Nazwa)
VALUES

('Serwis'),
('Naprawa');

INSERT INTO Obsluga_Techniczna (ID_Maszyny,ID_Rodzaj_Obslugi,Data_Wykonania,ID_Pracownika)
VALUES

(1,2,'2020-04-22',15),
(10,1,'2020-04-27',16),
(11,1,'2020-04-02',16),
(3,2,'2020-04-23',15),
(4,1,'2020-04-23',15),
(9,1,'2020-05-01',16);

INSERT into Czesci_Obsluga(ID_Obsluga_Techniczna,ID_Element,Liczba)
VALUES

(1,2,3),
(1,6,2),
(2,7,1),
(3,1,3),
(3,7,1),
(4,1,2),
(4,6,5),
(5,1,2),
(5,9,1),
(6,1,2),
(6,7,1);

INSERT INTO Maszyny_Proces(ID_Proces_Technologiczny,ID_Rodzaj_Maszyny,Liczba_Maszyn,Liczba_Rbh_Maszyna)
VALUES

--1 proces

(1,1,3,16), --szycie + wszycie metków i guzików
(1,5,4,3),	--prasowanie
(1,3,3,6),	--pranie 
(1,2,2,4),	--wycinanie

--2 proces

(2,1,3,13),
(2,5,4,2),
(2,3,3,3),
(2,2,3,2),

--3 proces

(3,1,3,7), 
(3,5,4,3),	
(3,3,3,2),	
(3,2,2,2),	

--4 proces

(4,1,3,8), 
(4,5,4,3),	
(4,3,3,2),	 
(4,2,2,2),	

--5 proces

(5,1,3,7), 
(5,5,4,2),	
(5,3,3,3),	 
(5,2,2,2),	

--6 proces

(6,1,3,25), 
(6,5,4,7),	
(6,3,3,11),
(6,2,2,4),

--7 proces

(7,1,3,5), 
(7,5,4,2),	
(7,3,3,2),	 
(7,2,2,2),	

--8 proces

(8,1,3,6), 
(8,5,4,3),	
(8,3,3,4),	
(8,2,2,2);	

INSERT INTO Proces_Zamowienie(ID_Proces_Technologiczny,ID_Zamowienie_Element,Kompletny_Proces)
VALUES

(1,1,1),
(2,2,1),
(3,3,1),
(4,5,1),
(5,6,1),
(6,4,1),
(7,7,1),
(8,8,1);


INSERT INTO Elementy_Proces(ID_Proces_Technologiczny,ID_Element,Liczba)
VALUES

(1,2,50),
(1,4,1000),
(2,3,120),
(2,4,200),
(3,3,70),
(4,2,400),
(5,2,50),
(5,4,1000),
(6,3,20000),
(6,4,5000),
(7,3,140),
(8,3,35);

INSERT INTO Etapy_W_Procesie (ID_Proces_Technologiczny,ID_Etapu,Czas)--(Czas w h)
VALUES
--1 proces	100 koszul

(1,1,4),	--ciecie
(1,2,3),	--prasowanie
(1,3,10),	--szycie
(1,4,3),	--wszycie metki
(1,5,6),	--pranie
(1,7,3),	--guzikowanie	--FILO
(1,8,1),	--pakowanie		--FILO	
(1,9,1),	--metkowanie	--FILO analgoicznie dla pozosta³ych

--2 proces	100 spodni

(2,1,5),	--ciecie
(2,2,2),	--prasowanie
(2,3,4),	--szycie
(2,4,6),	--wszycie metki
(2,10,3),	--wszywanie suwakow
(2,5,3),	--pranie
(2,7,2),	--guzikowanie
(2,8,2),	--pakowanie
(2,9,1),	--metkowanie

--3 proces 500 rekawiczek

(3,1,2),	--ciecie
(3,2,3),	--prasowanie
(3,3,2),	--szycie
(3,5,2),	--pranie
(3,8,2),	--pakowanie
(3,9,1),	--metkowanie

--4 proces	100 bluz

(4,1,2),	--ciecie
(4,2,3),	--prasowanie
(4,3,4),	--szycie
(4,4,1),	--wszycie metki
(4,5,2),	--pranie
(4,7,1),	--pakowanie
(4,8,1),	--metkowanie

--5 proces	100	koszul

(5,1,2),	--ciecie
(5,2,2),	--prasowanie
(5,3,3),	--szycie
(5,4,3),	--wszycie metki
(5,5,3),	--pranie
(5,8,1),	--guzikowanie
(5,8,1),	--pakowanie
(5,9,1),	--metkowanie

--6 proces	5000 kurtków

(6,1,4),	--ciecie
(6,2,7),	--prasowanie
(6,3,10),	--szycie
(6,4,4),	--wszycie metki
(6,10,9),	--wszywanie suwakow
(6,5,11),	--pranie
(6,7,2),	--guzikowanie
(6,8,3),	--pakowanie
(6,9,3),	--metkowanie

--7 proces 50 rekawiczek

(7,1,2),	--ciecie
(7,2,2),	--prasowanie
(7,3,4),	--szycie
(7,4,1),	--wszycie metki
(7,5,2),	--pranie
(7,8,1),	--pakowanie
(7,9,1),	--metkowanie

--8 proces	50 bluz

(8,1,2),	--ciecie
(8,2,3),	--prasowanie
(8,3,4),	--szycie
(8,4,2),	--wszycie metki
(8,5,4),	--pranie
(8,8,2),	--pakowanie
(8,9,1);	--metkowanie
	
	---------------------Inserty Produkcja-------------------------

INSERT INTO Proces_Produkcyjny ( ID_Zamowienie_Element, Proponowana_data_dostawy_materialu, ID_Dostarczenia, Data_Rozpoczecia, Data_Zakonczenia, Uwagi )
VALUES
--zam 1
(1, '2020-04-14 06:00:00', 1, '2020-04-15 09:21:15', '2020-04-17 10:52:00',  'brak uwag'),
(2, '2020-04-14 06:00:00', 1, '2020-04-15 09:21:15', '2020-04-17 07:35:00',  'brak uwag'),
--zam 2
(3, '2020-04-17 06:00:00', 2, '2020-04-20 06:30:00', '2020-04-20 19:48:01', 'brak uwag'),
--zam 3
(5, '2020-04-17 06:00:00', 3,'2020-04-17 09:30:00', '2020-04-18 09:34:00',  'brak uwag'),
(6, '2020-04-17 06:00:00', 3,'2020-04-17 09:30:00', '2020-04-18 10:58:00',  'brak uwag'),
--zam4
(4, '2020-04-23 06:00:00', 4, '2020-04-24 12:20:00', '2020-04-27 20:52:01', 'brak uwag'),
--zam 5
(7, '2020-04-24 06:00:00', 5,'2020-04-27 12:20:00', '2020-04-28 11:02:00',  'brak uwag'),
(8, '2020-04-24 06:00:00', 5,'2020-04-27 12:20:00', '2020-04-30 12:20:00',  'brak uwag');

INSERT INTO Material_Na_Produkcji (ID_Procesu_Produkcyjnego, ID_Elementy_Proces, Odpad, Niezuzyty_material, Magazyn_odebral_material) 
VALUES
(1, 1, 0, 4, 1), 
(1, 2, 1, 8, 1), 
(2, 3, 1, 4, 1), 
(3, 5, 2, 3, 1), 
(4, 6, 3, 4, 1), 
(5, 8, 0, 4, 1); 



INSERT INTO Realizacja_Procesu (ID_Procesu_Produkcyjnego, ID_Etapu, Data_Rozpoczecia_Procesu, Data_Zakonczenia_Procesu, Data_Kontroli, Uwagi_Kontroli)
VALUES
(1, 1, '2020-04-15 09:21:15', '2020-04-15 13:21:15', '2020-04-15 13:25:00', 'brak uwag'),
(1, 2, '2020-04-15 13:30:19', '2020-04-15 16:34:12', '2020-04-15 16:40:00', 'brak uwag'),
(1, 3, '2020-04-15 16:43:15', '2020-04-16 11:38:00', '2020-04-16 11:40:00', 'brak uwag'),
(1, 4, '2020-04-16 11:42:00', '2020-04-16 14:38:00', '2020-04-16 14:42:00', 'brak uwag'),
(1, 5, '2020-04-16 14:45:00', '2020-04-16 20:50:00', '2020-04-16 21:00:00', 'brak uwag'),
(1, 7, '2020-04-16 21:05:00', '2020-04-17 08:01:00', '2020-04-17 08:04:00', 'brak uwag'),
(1, 8, '2020-04-17 08:10:00', '2020-04-17 09:02:00', '2020-04-17 09:05:00', 'brak uwag'),
(1, 9, '2020-04-17 09:09:00', '2020-04-17 10:15:15', '2020-04-17 10:20:00', 'brak uwag'),

(2, 1, '2020-04-15 09:25:15', '2020-04-15 14:21:15', '2020-04-15 14:25:00', 'brak uwag'),
(2, 2, '2020-04-15 14:30:19', '2020-04-15 16:34:12', '2020-04-15 16:40:00', 'brak uwag'),
(2, 3, '2020-04-15 16:43:15', '2020-04-15 20:38:00', '2020-04-15 20:40:00', 'brak uwag'),
(2, 4, '2020-04-15 20:42:00', '2020-04-16 11:00:00', '2020-04-16 11:02:00', 'brak uwag'),
(2, 10, '2020-04-16 11:05:00', '2020-04-16 14:10:00', '2020-04-16 14:16:00', 'brak uwag'),
(2, 5, '2020-04-16 14:25:00', '2020-04-16 17:31:00', '2020-04-16 17:35:00', 'brak uwag'),
(2, 7, '2020-04-16 17:40:00', '2020-04-16 19:38:00', '2020-04-16 19:40:00', 'brak uwag'),
(2, 8, '2020-04-16 19:49:00', '2020-04-16 21:50:15', '2020-04-16 21:55:00', 'brak uwag'),
(2, 9, '2020-04-17 06:09:00', '2020-04-17 07:15:15', '2020-04-17 07:20:00', 'brak uwag'),

(3, 1, '2020-04-20 06:30:15', '2020-04-20 08:30:15', '2020-04-20 08:35:00', 'brak uwag'),
(3, 2, '2020-04-20 08:40:19', '2020-04-20 11:34:12', '2020-04-20 11:40:00', 'brak uwag'),
(3, 3, '2020-04-20 11:43:15', '2020-04-20 13:38:00', '2020-04-20 13:40:00', 'brak uwag'),
(3, 5, '2020-04-20 13:42:00', '2020-04-20 15:50:00', '2020-04-20 16:02:00', 'brak uwag'),
(3, 8, '2020-04-20 16:07:00', '2020-04-20 18:10:00', '2020-04-20 18:16:00', 'brak uwag'),
(3, 9, '2020-04-20 18:25:00', '2020-04-20 19:31:00', '2020-04-20 19:35:00', 'brak uwag'),

(4, 1, '2020-04-17 09:30:15', '2020-04-17 11:32:15', '2020-04-17 11:40:00', 'brak uwag'),
(4, 2, '2020-04-17 11:45:19', '2020-04-17 14:34:12', '2020-04-17 14:40:00', 'brak uwag'),
(4, 3, '2020-04-17 14:50:15', '2020-04-17 18:50:00', '2020-04-17 19:00:00', 'brak uwag'),
(4, 4, '2020-04-17 19:05:00', '2020-04-17 20:10:00', '2020-04-17 20:12:00', 'brak uwag'),
(4, 5, '2020-04-17 20:15:00', '2020-04-18 06:30:00', '2020-04-18 06:35:00', 'brak uwag'),
(4, 7, '2020-04-18 06:45:00', '2020-04-18 07:45:00', '2020-04-18 07:50:00', 'brak uwag'),
(4, 8, '2020-04-18 08:00:00', '2020-04-18 09:02:00', '2020-04-18 09:05:00', 'brak uwag'),

(5, 1, '2020-04-17 09:30:15', '2020-04-17 11:32:15', '2020-04-17 11:41:00', 'brak uwag'),
(5, 2, '2020-04-17 11:45:19', '2020-04-17 13:34:12', '2020-04-17 13:40:00', 'brak uwag'),
(5, 3, '2020-04-17 13:45:15', '2020-04-17 16:50:00', '2020-04-17 16:55:00', 'brak uwag'),
(5, 4, '2020-04-17 17:00:00', '2020-04-17 20:00:00', '2020-04-17 20:05:00', 'brak uwag'),
(5, 5, '2020-04-17 20:15:00', '2020-04-18 06:35:00', '2020-04-18 06:40:00', 'brak uwag'),
(5, 8, '2020-04-18 06:45:00', '2020-04-18 07:45:00', '2020-04-18 07:50:00', 'brak uwag'),
(5, 8, '2020-04-18 08:04:00', '2020-04-18 09:12:00', '2020-04-18 09:15:00', 'brak uwag'),
(5, 9, '2020-04-18 09:20:00', '2020-04-18 10:22:00', '2020-04-18 10:30:00', 'brak uwag'),

(6, 1, '2020-04-24 12:21:15', '2020-04-24 16:26:15', '2020-04-24 16:30:00', 'brak uwag'),
(6, 2, '2020-04-24 16:31:15', '2020-04-25 08:37:15', '2020-04-25 08:40:00', 'brak uwag'),
(6, 3, '2020-04-25 08:51:15', '2020-04-25 18:52:15', '2020-04-25 18:58:00', 'brak uwag'),
(6, 4, '2020-04-25 19:00:15', '2020-04-26 07:21:15', '2020-04-26 07:25:00', 'brak uwag'),
(6, 10, '2020-04-26 07:29:15', '2020-04-26 16:22:15', '2020-04-26 16:23:00', 'brak uwag'),
(6, 5, '2020-04-26 16:25:15', '2020-04-27 11:29:15', '2020-04-27 11:35:00', 'brak uwag'),
(6, 7, '2020-04-27 11:38:15', '2020-04-27 13:41:15', '2020-04-27 13:45:00', 'brak uwag'),
(6, 8, '2020-04-27 13:48:15', '2020-04-27 16:50:15', '2020-04-27 16:59:00', 'brak uwag'),
(6, 9, '2020-04-27 17:01:15', '2020-04-27 20:09:15', '2020-04-27 20:15:00', 'brak uwag'), 

(7, 1, '2020-04-27 12:25:15', '2020-04-27 14:28:15', '2020-04-27 14:33:00', 'brak uwag'),
(7, 2, '2020-04-27 14:36:15', '2020-04-27 16:41:15', '2020-04-27 16:46:00', 'brak uwag'),
(7, 3, '2020-04-27 16:49:15', '2020-04-27 20:51:15', '2020-04-27 20:55:00', 'brak uwag'),
(7, 4, '2020-04-27 21:00:15', '2020-04-27 21:58:15', '2020-04-28 06:05:00', 'brak uwag'),
(7, 5, '2020-04-28 06:09:15', '2020-04-28 08:12:15', '2020-04-28 08:16:00', 'brak uwag'),
(7, 8, '2020-04-28 08:20:15', '2020-04-28 09:18:15', '2020-04-28 09:21:00', 'brak uwag'),
(7, 9, '2020-04-28 09:26:15', '2020-04-28 10:41:15', '2020-04-28 10:45:00', 'brak uwag'),

(8, 1, '2020-04-27 16:20:00', '2020-04-27 18:40:00', '2020-04-27 20:21:00', 'brak uwag'),
(8, 2, '2020-04-28 08:24:00', '2020-04-28 11:26:00', '2020-04-28 13:30:00', 'brak uwag'),
(8, 3, '2020-04-28 16:35:00', '2020-04-28 20:30:00', '2020-04-28 21:32:00', 'brak uwag'),
(8, 4, '2020-04-29 06:36:00', '2020-04-29 08:40:00', '2020-04-29 09:45:00', 'brak uwag'),
(8, 5, '2020-04-29 10:50:00', '2020-04-29 14:02:00', '2020-04-29 16:08:00', 'brak uwag'),
(8, 8, '2020-04-29 18:35:00', '2020-04-29 20:30:00', '2020-04-29 21:32:00', 'brak uwag'),
(8, 9, '2020-04-30 09:35:00', '2020-04-30 10:30:00', '2020-04-30 12:00:00', 'brak uwag');


INSERT INTO Przydzial_Zasobow (ID_Realizacji_Procesu, ID_Pracownika , ID_Maszyny, Data_Rozpoczecia, Data_Zakonczenia)
VALUES
(1, 1, 1, '2020-04-15 09:21:15', '2020-04-15 13:20:00'),
(1, 2, 3, '2020-04-15 09:25:15', '2020-04-15 13:20:00'),
(2, 9, 16, '2020-04-15 13:30:19', '2020-04-15 16:33:00'),
(2, 10, 17, '2020-04-15 13:30:19', '2020-04-15 16:33:00'),
(3, 5, 5, '2020-04-15 16:43:15', '2020-04-16 11:37:00'),
(3, 6, 6, '2020-04-15 16:45:15', '2020-04-16 11:30:00'),
(4, 5, 10, '2020-04-16 11:42:15', '2020-04-16 14:37:00'),
(5, 3, 12, '2020-04-16 14:45:15', '2020-04-16 20:50:00'),
(6, 6, 11, '2020-04-16 21:06:15', '2020-04-17 08:00:00');

INSERT INTO Kontrola_Efektywnosci (ID_Procesu_Produkcyjnego, Data_Kontroli, Dokument, Uwagi, Zgodnosc_Zamowienia , Liczba_Poprawnych)
VALUES
(1, '2020-04-17 10:50:00', 'dok_1.img', 'brak uwag', 1, 100),
(2, '2020-04-17 07:30:00', 'dok_2.img', 'brak uwag', 1, 105),
(3, '2020-04-20 19:40:01', 'dok_3.img', 'brak uwag', 1, 500),
(4, '2020-04-18 09:30:00', 'dok_4.img', 'brak uwag', 1, 100),
(5, '2020-04-18 10:50:00', 'dok_4.img', 'brak uwag', 1, 103),
(6, '2020-04-27 20:50:01', 'dok_3.img', 'brak uwag', 1, 5010),
(7, '2020-04-28 11:00:00', 'dok_4.img', 'brak uwag', 1, 51),
(8, '2020-04-30 12:40:00', 'dok_4.img', 'brak uwag', 1, 50);
use master




