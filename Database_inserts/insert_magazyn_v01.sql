--------------------------INSERT QUERY MAGAZYN--------------------------------
USE Baza_szwalnia

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
	Okres_Przydatnosci_Miesiace,Element_Ilosc_W_Paczce,ID_Jednostka)
VALUES
	(1,'£o¿ysko',24,1,8),
	(2,'Bawe³na',48,100,5),
	(3,'Bawe³na',48,200,5),
	(4,'Guzik',0,100,8),
	(5,'Tektura falista',0,100,5),
	(1,'Sruba',0,10,8),
	(1,'Bêbenek',48,1,8),
	(1,'Igla do dzianin',0,10,8),
	(1,'Kolo pasowe',0,5,8),
	(5,'Karton klapowy',0,100,8),
	(5,'Foliopaki',48,100,8)
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
-----------------------------------------------------------------------------------------------------
INSERT INTO 
	Zamowienia_Przydzial(ID_zamowienia, ID_pracownicy, ID_umowy) 
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
	Dostawcy_Oferta(ID_Oferta,ID_Zamowienia) 
VALUES 
	(2,3),
	(2,4),
	(1,1),
	(1,2),
	(3,5);

INSERT INTO 
	Dostawy_zawartosc(ID_dostawy,ID_element,Ilosc_dostarczona) 
VALUES 
	(1,2,5),
	(1,3,5),
	(2,2,10),
	(3,3,2),
	(4,5,1)

INSERT INTO 
	Zamowienia_zawartosc(ID_zamowienia,ID_oferta,Ilosc_zamawiana) 
VALUES 
	(1,2,80),
	(1,3,20),
	(2,1,50),
	(3,5,100),
	(5,5,200)

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

INSERT INTO 
	Koszt_jednostkowy(ID_element, Koszt_produkcji) 
VALUES 
	(1,20),
	(2,50),
	(3,5),
	(4,18),
	(5,21)

INSERT INTO 
	Zamowienie_produkt(ID_Zamowienia,ID_element, Ilosc) 
VALUES 
	(1,3,20),
	(5,4,100),
	(2,2,10),
	(4,1,2000),
	(4,1,200);
USE Master
