create database BIST;

create table Kullanicilar(
	kullanici_id int not null primary key ,
	kullanici_adi varchar(40) not null,
	email varchar(200) not null,
	sifre varchar(200) not null,
	kayit_tarihi date 
);

create table Sirketler(
	sirket_id int not null primary key ,
	sirket_adi varchar(40) not null,
	sirket_kodu varchar(40) not null,
	halkaarz_fiyati decimal(18,2) not null,
	halkaarz_tarihi date 
);
create table Portf�y(
	portf�y_id int not null,
	kullanici_id int not null,
	sirket_id int not null,
	miktar decimal(18,3) not null,
	satin_alinma_tarihi date,
	FOREIGN KEY (kullanici_id) REFERENCES Kullanicilar(kullanici_id),
	FOREIGN KEY (sirket_id) REFERENCES Sirketler(sirket_id)
);

create table �slemler(
	islemler_id int primary key ,
	kullanici_id int not null,
	sirket_id int not null,
	tarih date, 
	miktar decimal(18,3) not null,
	i�lem_tipi varchar(40) not null,
	birim_fiyat decimal(18,2) not null,
	FOREIGN KEY (kullanici_id) REFERENCES Kullanicilar(kullanici_id),
	FOREIGN KEY (sirket_id) REFERENCES Sirketler(sirket_id)
);

drop table Kullanicilar

drop table �slemler

drop table Portf�y

drop table Sirketler

truncate table Kullanicilar


 
 INSERT INTO Kullanicilar(kullanici_id,kullanici_adi,email,sifre,kayit_tarihi)
 VALUES (138792,'hayrunnisaylt', 'hayrunnisayoltan@gmail.com','sifre7712','2024-01-14');

 INSERT INTO Kullanicilar(kullanici_id,kullanici_adi,email,sifre,kayit_tarihi)
 VALUES (138793,'emirbrt', 'emirbarut@gmail.com','sifre5134','2024-01-07');

  INSERT INTO Kullanicilar(kullanici_id,kullanici_adi,email,sifre,kayit_tarihi)
 VALUES (138794,'batur.51', 'batur.1313@gmail.com','sifre78426','2020-09-17');

  INSERT INTO Kullanicilar(kullanici_id,kullanici_adi,email,sifre,kayit_tarihi)
 VALUES (138795,'�merky', 'omerkaya@gmail.com','sifre6598','2016-11-14');

  INSERT INTO Kullanicilar(kullanici_id,kullanici_adi,email,sifre,kayit_tarihi)
 VALUES (138796,'ertu�rulorkc', 'ertugrulorakci@gmail.com','sifre5667','2023-06-22');

 ALTER TABLE Kullanicilar
 DROP COLUMN kullanici_id;

 DELETE FROM Kullanicilar
 WHERE kullanici_id = 138795;




 INSERT INTO Sirketler(sirket_id,sirket_adi,sirket_kodu,halkaarz_fiyati,halkaarz_tarihi)
 VALUES (246713,'T�rk Hava Yollar�', 'THY',3.000, '1990-12-10');

 INSERT INTO Sirketler(sirket_id,sirket_adi,sirket_kodu,halkaarz_fiyati,halkaarz_tarihi)
 VALUES (246714,'T�rkiye Petrol Rafinerileri A.�.', 'TUPRS',2.000, '1991-05-30');

 INSERT INTO Sirketler(sirket_id,sirket_adi,sirket_kodu,halkaarz_fiyati,halkaarz_tarihi)
 VALUES (246715,'Aselsan Elektronik A.�. ', 'ASELS',4.000, '1990-07-01');

 INSERT INTO Sirketler(sirket_id,sirket_adi,sirket_kodu,halkaarz_fiyati,halkaarz_tarihi)
 VALUES (246716,'�zdemir Enerj, Elektrik �retim A.�.', 'IZENR',19.00, '2023-07-08');

 INSERT INTO Sirketler(sirket_id,sirket_adi,sirket_kodu,halkaarz_fiyati,halkaarz_tarihi)
 VALUES (246717,'Mavi Giyim San. ve Tic. A.�.', 'MAVI',43.00, '2017-06-08');




 INSERT INTO Portf�y(portf�y_id,kullanici_id,sirket_id,miktar,satin_alinma_tarihi)
 VALUES (319303,138792, 246714,120, '2012-08-13');

  INSERT INTO Portf�y(portf�y_id,kullanici_id,sirket_id,miktar,satin_alinma_tarihi)
 VALUES (319303,138792, 246713,100, '2012-06-10');

  INSERT INTO Portf�y(portf�y_id,kullanici_id,sirket_id,miktar,satin_alinma_tarihi)
 VALUES (319304,138793, 246714,150, '2022-11-09');

  INSERT INTO Portf�y(portf�y_id,kullanici_id,sirket_id,miktar,satin_alinma_tarihi)
 VALUES (319305,138794, 246715,200, '2016-03-24');

  INSERT INTO Portf�y(portf�y_id,kullanici_id,sirket_id,miktar,satin_alinma_tarihi)
 VALUES (319306,138795, 246716,140, '2024-05-04');

  INSERT INTO Portf�y(portf�y_id,kullanici_id,sirket_id,miktar,satin_alinma_tarihi)
 VALUES (319307,138796, 246717,220, '2023-10-17');

  DELETE FROM Portf�y
 WHERE portf�y_id = 319307;

INSERT INTO �slemler (islemler_id, kullanici_id,sirket_id,tarih,miktar,i�lem_tipi,birim_fiyat)
VALUES (498021, 138792, 246717, '2012-03-15', 90, 'sat��', 48.05);

INSERT INTO �slemler (islemler_id, kullanici_id,sirket_id,tarih,miktar,i�lem_tipi,birim_fiyat)
VALUES (498022, 138792, 246714, '2012-08-13', 120, 'al��', 100.13);

INSERT INTO �slemler (islemler_id, kullanici_id,sirket_id,tarih,miktar,i�lem_tipi,birim_fiyat)
VALUES (498023, 138792, 246713, '2012-06-10', 100, 'al��', 299);

INSERT INTO �slemler (islemler_id, kullanici_id,sirket_id,tarih,miktar,i�lem_tipi,birim_fiyat)
VALUES (498024, 138793, 246714, '2022-11-09', 150, 'al��', 185.40);

INSERT INTO �slemler (islemler_id, kullanici_id,sirket_id,tarih,miktar,i�lem_tipi,birim_fiyat)
VALUES (498025, 138794, 246715, '2016-03-24', 200, 'al��', 57.95);

INSERT INTO �slemler (islemler_id, kullanici_id,sirket_id,tarih,miktar,i�lem_tipi,birim_fiyat)
VALUES (498026, 138795, 246716, '2024-05-04', 140, 'al��', 26.60);

INSERT INTO �slemler (islemler_id, kullanici_id,sirket_id,tarih,miktar,i�lem_tipi,birim_fiyat)
VALUES (498027, 138796, 246717, '2023-10-17', 220, 'al��', 81.05);

 DELETE FROM �slemler
 WHERE islemler_id = 498021;

UPDATE Sirketler
SET halkaarz_fiyati = 25.50 
WHERE sirket_id = 246716; 

SELECT DISTINCT kullanici_id FROM Portf�y;

SELECT TOP 5 * FROM Kullanicilar ORDER BY kayit_tarihi DESC;

SELECT kullanici_id, kullanici_adi, LOWER(email) AS email
FROM Kullanicilar;

SELECT kullanici_id, kullanici_adi, REPLACE(email, 'gmail.com', 'example.com') AS yeni_email
FROM Kullanicilar;

SELECT kullanici_id, kullanici_adi, REVERSE(kullanici_adi) AS tersine_kullanici_adi
FROM Kullanicilar;

SELECT kullanici_id, kullanici_adi, 
       CONCAT(kullanici_adi, SPACE(20 - LEN(kullanici_adi))) AS hizali_kullanici_adi
FROM Kullanicilar;

SELECT sirket_adi, POWER(halkaarz_fiyati, 2) AS halkaarz_fiyati_kare
FROM Sirketler;

SELECT kullanici_adi, ABS(kullanici_id) AS mutlak_kullanici_id
FROM Kullanicilar;

SELECT kullanici_adi, SQUARE(DATEDIFF(year, kayit_tarihi, GETDATE())) AS kayit_tarihi_kare
FROM Kullanicilar;

SELECT sirket_adi, ROUND(halkaarz_fiyati, 2) AS yuvarlanmis_fiyat
FROM Sirketler;

SELECT TOP 1 kullanici_id, kullanici_adi
FROM Kullanicilar
ORDER BY NEWID(); -- SQL Server'da rasgele s�ralama i�in

SELECT sirket_adi, FLOOR(halkaarz_fiyati) AS yuvarlanmis_fiyat
FROM Sirketler;

SELECT MAX(kayit_tarihi) AS son_kayit_tarihi
FROM Kullanicilar;

SELECT MIN(halkaarz_fiyati) AS en_dusuk_fiyat
FROM Sirketler;

 --Where �art� �le Tablo Birle�tirme
 SELECT sirket_adi AS s_adi , portf�y_id AS p_id
 FROM Sirketler s, Portf�y p
 WHERE s.sirket_id = p.sirket_id

select * from Sirketler
select * from Portf�y
select * from Sirketler,Portf�y where Sirketler.sirket_id=Portf�y.sirket_id

--Inner Join �le Tablo Birle�tirme
SELECT p.portf�y_id, p.kullanici_id,p.sirket_id ,i.islemler_id
FROM Portf�y p
INNER JOIN �slemler i ON p.kullanici_id = i.kullanici_id AND p.sirket_id = i.sirket_id;

--Left Join �le Tablo Birle�tirme
SELECT * FROM Sirketler s
LEFT JOIN Portf�y p ON s.sirket_id = p.sirket_id;

--R�ght Join �le Tablo Birle�tirme
SELECT * FROM Sirketler s
RIGHT JOIN Portf�y p ON s.sirket_id = p.sirket_id;

--Full Join �le Tablo Birle�tirme
SELECT * FROM Sirketler s
FULL JOIN �slemler i ON s.sirket_id = i.sirket_id;

--Cross Join �le Tablo Birle�tirme
SELECT * FROM Portf�y p
CROSS JOIN �slemler i; 

--Intersect Kullan�m�
SELECT kullanici_id, sirket_id FROM Portf�y
INTERSECT
SELECT kullanici_id, sirket_id FROM �slemler;

--Except Kullan�m�
SELECT kullanici_id, sirket_id FROM Portf�y
EXCEPT
SELECT kullanici_id, sirket_id FROM �slemler

--Union ve Union All Kullan�m�
SELECT kullanici_id, sirket_id FROM Portf�y
UNION
SELECT kullanici_id, sirket_id FROM �slemler

SELECT kullanici_id, sirket_id FROM Portf�y
UNION ALL
SELECT kullanici_id, sirket_id FROM �slemler

--Subquery Kullan�m�
SELECT kullanici_id, sirket_id, miktar,
(SELECT SUM(miktar) FROM Portf�y) AS toplam_miktar
FROM Portf�y;

--GroupBy ve Having Yap�s�
SELECT sirket_id, AVG(miktar) AS miktar
FROM Portf�y
GROUP BY sirket_id
HAVING AVG(miktar) > 120;

--Between Yap�s�
SELECT * FROM �slemler 
WHERE tarih BETWEEN '2020-01-01' AND '2024-01-01';

--�f Else Kullan�m�
DECLARE @kayit_tarihi date;

SELECT @kayit_tarihi = k.kayit_tarihi
FROM Kullanicilar k
JOIN Sirketler s ON k.kullanici_id = 138792; 

IF @kayit_tarihi >= '2020-01-01'
    PRINT 'Kullan�c�, son iki y�l i�inde kay�t olmu�';
ELSE
    PRINT 'Kullan�c�, son iki y�l i�inde kay�t olmam��.';

--if Exists Kullan�m�
DECLARE @kayit_var_mi INT;

IF EXISTS (
    SELECT 1
    FROM Kullanicilar k
    JOIN Sirketler s ON k.kullanici_id = 138792
    WHERE k.kayit_tarihi >= '2020-01-01'
)
    SET @kayit_var_mi = 1;
ELSE
    SET @kayit_var_mi = 0; 

IF @kayit_var_mi = 1
    PRINT 'Kullan�c�, belirli bir tarihten sonra kay�t olmu�.';
ELSE
    PRINT 'Kullan�c�, belirli bir tarihten sonra kay�t olmam��.';

--Case Kullan�m�
SELECT
	CASE
		WHEN s.halkaarz_fiyati > 10.00 THEN 'Halka arz fiyat� 10.00 den b�y�k.'
		WHEN s.halkaarz_fiyati >= 10.00 THEN 'Halka arz fiyat� 10.00 veya daha az.'
	END AS fiyat_durumu 
FROM Kullanicilar k
JOIN Sirketler s ON k.kullanici_id = 138792;

--While D�ng�s� Kullan�m�
DECLARE @kullanici_adi VARCHAR(40);

DECLARE kullanici_cursor CURSOR FOR
SELECT kullanici_adi
FROM Kullanicilar;

OPEN kullanici_cursor;
FETCH NEXT FROM kullanici_cursor INTO @kullanici_adi;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT 'Kullan�c� Ad�: ' + @kullanici_adi;

    FETCH NEXT FROM kullanici_cursor INTO @kullanici_adi;
END

CLOSE kullanici_cursor;
DEALLOCATE kullanici_cursor;

--View Kullan�m�
CREATE VIEW KullaniciAdlari AS
SELECT kullanici_adi
FROM Kullanicilar;

SELECT*FROM KullaniciAdlari;

--Stored Procedure Kullan�m�
CREATE PROCEDURE KullaniciEkle
    @kullanici_adi VARCHAR(40),
    @email VARCHAR(200),
    @sifre VARCHAR(200),
    @kayit_tarihi DATE
AS
BEGIN
    INSERT INTO Kullanicilar (kullanici_adi, email, sifre, kayit_tarihi)
    VALUES (@kullanici_adi, @email, @sifre, @kayit_tarihi);
END;

EXEC KullaniciEkle 's�lakrhn', 's�lakarahan@email.com', 'sifre5473', '2024-04-17';

--Scaler Valued Fuction 
CREATE FUNCTION dbo.fn_KullaniciAdUzunlugu (@kullanici_adi VARCHAR(100))
RETURNS VARCHAR(50)
AS
BEGIN
    DECLARE @uzunluk INT;
    SET @uzunluk = LEN(@kullanici_adi);
    
    IF @uzunluk <= 10
        RETURN 'K�sa';
    ELSE IF @uzunluk <= 20
        RETURN 'Orta';
    ELSE
        RETURN 'Uzun';
END;

SELECT kullanici_adi, dbo.fn_KullaniciAdUzunlugu(kullanici_adi) AS ad_uzunluk_sinifi
FROM Kullanicilar;

--Table Valued Function
CREATE FUNCTION dbo.fn_SonrakiKayitlar (
    @tarih DATE
)
RETURNS TABLE
AS
RETURN
(
    SELECT *
    FROM Kullanicilar
    WHERE kayit_tarihi >= @tarih
);

SELECT * FROM dbo.fn_SonrakiKayitlar('2023-01-01');

--Multi Statement Function
CREATE FUNCTION dbo.fn_SonrakiKullaniciBilgileri (
    @tarih DATE
)
RETURNS @SonrakiKullanicilar TABLE (
    kullanici_id INT,
    kullanici_adi VARCHAR(100)
)
AS
BEGIN
    INSERT INTO @SonrakiKullanicilar (kullanici_id, kullanici_adi)
    SELECT kullanici_id, kullanici_adi
    FROM Kullanicilar
    WHERE kayit_tarihi >= @tarih;

    RETURN;
END;

SELECT * FROM dbo.fn_SonrakiKullaniciBilgileri('2023-01-01');

--Trigger 
CREATE TRIGGER trg_KullaniciEkleme
ON Kullanicilar
AFTER INSERT
AS
BEGIN
    UPDATE Kullanicilar
    SET kayit_tarihi = GETDATE()
    WHERE kullanici_id IN (SELECT kullanici_id FROM inserted);
END;

INSERT INTO Kullanicilar (kullanici_adi, email, sifre)
VALUES ('kubrakrk', 'kubrakorkmaz@example.com', '�ifre2485');
