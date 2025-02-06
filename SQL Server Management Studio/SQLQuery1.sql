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
create table Portföy(
	portföy_id int not null,
	kullanici_id int not null,
	sirket_id int not null,
	miktar decimal(18,3) not null,
	satin_alinma_tarihi date,
	FOREIGN KEY (kullanici_id) REFERENCES Kullanicilar(kullanici_id),
	FOREIGN KEY (sirket_id) REFERENCES Sirketler(sirket_id)
);

create table Islemler(
	islemler_id int primary key ,
	kullanici_id int not null,
	sirket_id int not null,
	tarih date, 
	miktar decimal(18,3) not null,
	iþlem_tipi varchar(40) not null,
	birim_fiyat decimal(18,2) not null,
	FOREIGN KEY (kullanici_id) REFERENCES Kullanicilar(kullanici_id),
	FOREIGN KEY (sirket_id) REFERENCES Sirketler(sirket_id)
);

drop table Kullanicilar

drop table Islemler

drop table Portföy

drop table Sirketler

truncate table Kullanicilar


 
 INSERT INTO Kullanicilar(kullanici_id,kullanici_adi,email,sifre,kayit_tarihi)
 VALUES (138792,'hayrunnisaylt', 'hayrunnisayoltan@gmail.com','sifre7712','2024-01-14');

 INSERT INTO Kullanicilar(kullanici_id,kullanici_adi,email,sifre,kayit_tarihi)
 VALUES (138793,'emirbrt', 'emirbarut@gmail.com','sifre5134','2024-01-07');

  INSERT INTO Kullanicilar(kullanici_id,kullanici_adi,email,sifre,kayit_tarihi)
 VALUES (138794,'batur.51', 'batur.1313@gmail.com','sifre78426','2020-09-17');

  INSERT INTO Kullanicilar(kullanici_id,kullanici_adi,email,sifre,kayit_tarihi)
 VALUES (138795,'ömerky', 'omerkaya@gmail.com','sifre6598','2016-11-14');

  INSERT INTO Kullanicilar(kullanici_id,kullanici_adi,email,sifre,kayit_tarihi)
 VALUES (138796,'ertuðrulorkc', 'ertugrulorakci@gmail.com','sifre5667','2023-06-22');

 ALTER TABLE Kullanicilar
 DROP COLUMN kullanici_id;

 DELETE FROM Kullanicilar
 WHERE kullanici_id = 138795;




 INSERT INTO Sirketler(sirket_id,sirket_adi,sirket_kodu,halkaarz_fiyati,halkaarz_tarihi)
 VALUES (246713,'Türk Hava Yollarý', 'THY',3.000, '1990-12-10');

 INSERT INTO Sirketler(sirket_id,sirket_adi,sirket_kodu,halkaarz_fiyati,halkaarz_tarihi)
 VALUES (246714,'Türkiye Petrol Rafinerileri A.Þ.', 'TUPRS',2.000, '1991-05-30');

 INSERT INTO Sirketler(sirket_id,sirket_adi,sirket_kodu,halkaarz_fiyati,halkaarz_tarihi)
 VALUES (246715,'Aselsan Elektronik A.Þ. ', 'ASELS',4.000, '1990-07-01');

 INSERT INTO Sirketler(sirket_id,sirket_adi,sirket_kodu,halkaarz_fiyati,halkaarz_tarihi)
 VALUES (246716,'Ýzdemir Enerj, Elektrik Üretim A.Þ.', 'IZENR',19.00, '2023-07-08');

 INSERT INTO Sirketler(sirket_id,sirket_adi,sirket_kodu,halkaarz_fiyati,halkaarz_tarihi)
 VALUES (246717,'Mavi Giyim San. ve Tic. A.Þ.', 'MAVI',43.00, '2017-06-08');




 INSERT INTO Portföy(portföy_id,kullanici_id,sirket_id,miktar,satin_alinma_tarihi)
 VALUES (319303,138792, 246714,120, '2012-08-13');

  INSERT INTO Portföy(portföy_id,kullanici_id,sirket_id,miktar,satin_alinma_tarihi)
 VALUES (319303,138792, 246713,100, '2012-06-10');

  INSERT INTO Portföy(portföy_id,kullanici_id,sirket_id,miktar,satin_alinma_tarihi)
 VALUES (319304,138793, 246714,150, '2022-11-09');

  INSERT INTO Portföy(portföy_id,kullanici_id,sirket_id,miktar,satin_alinma_tarihi)
 VALUES (319305,138794, 246715,200, '2016-03-24');

  INSERT INTO Portföy(portföy_id,kullanici_id,sirket_id,miktar,satin_alinma_tarihi)
 VALUES (319306,138795, 246716,140, '2024-05-04');

  INSERT INTO Portföy(portföy_id,kullanici_id,sirket_id,miktar,satin_alinma_tarihi)
 VALUES (319307,138796, 246717,220, '2023-10-17');

  DELETE FROM Portföy
 WHERE portföy_id = 319307;

INSERT INTO Islemler (islemler_id, kullanici_id,sirket_id,tarih,miktar,iþlem_tipi,birim_fiyat)
VALUES (498021, 138792, 246717, '2012-03-15', 90, 'satýþ', 48.05);

INSERT INTO Islemler (islemler_id, kullanici_id,sirket_id,tarih,miktar,iþlem_tipi,birim_fiyat)
VALUES (498022, 138792, 246714, '2012-08-13', 120, 'alýþ', 100.13);

INSERT INTO Islemler (islemler_id, kullanici_id,sirket_id,tarih,miktar,iþlem_tipi,birim_fiyat)
VALUES (498023, 138792, 246713, '2012-06-10', 100, 'alýþ', 299);

INSERT INTO Islemler (islemler_id, kullanici_id,sirket_id,tarih,miktar,iþlem_tipi,birim_fiyat)
VALUES (498024, 138793, 246714, '2022-11-09', 150, 'alýþ', 185.40);

INSERT INTO Islemler (islemler_id, kullanici_id,sirket_id,tarih,miktar,iþlem_tipi,birim_fiyat)
VALUES (498025, 138794, 246715, '2016-03-24', 200, 'alýþ', 57.95);

INSERT INTO Islemler (islemler_id, kullanici_id,sirket_id,tarih,miktar,iþlem_tipi,birim_fiyat)
VALUES (498026, 138795, 246716, '2024-05-04', 140, 'alýþ', 26.60);

INSERT INTO Islemler (islemler_id, kullanici_id,sirket_id,tarih,miktar,iþlem_tipi,birim_fiyat)
VALUES (498027, 138796, 246717, '2023-10-17', 220, 'alýþ', 81.05);

 DELETE FROM Islemler
 WHERE islemler_id = 498021;

UPDATE Sirketler
SET halkaarz_fiyati = 25.50 
WHERE sirket_id = 246716; 

SELECT DISTINCT kullanici_id FROM Portföy;

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
ORDER BY NEWID(); -- SQL Server'da rasgele sýralama için

SELECT sirket_adi, FLOOR(halkaarz_fiyati) AS yuvarlanmis_fiyat
FROM Sirketler;

SELECT MAX(kayit_tarihi) AS son_kayit_tarihi
FROM Kullanicilar;

SELECT MIN(halkaarz_fiyati) AS en_dusuk_fiyat
FROM Sirketler;

 --Where Þartý Ýle Tablo Birleþtirme
 SELECT sirket_adi AS s_adi , portföy_id AS p_id
 FROM Sirketler s, Portföy p
 WHERE s.sirket_id = p.sirket_id

select * from Sirketler
select * from Portföy
select * from Sirketler,Portföy where Sirketler.sirket_id=Portföy.sirket_id

--Inner Join Ýle Tablo Birleþtirme
SELECT p.portföy_id, p.kullanici_id,p.sirket_id ,i.islemler_id
FROM Portföy p
INNER JOIN Ýslemler i ON p.kullanici_id = i.kullanici_id AND p.sirket_id = i.sirket_id;

--Left Join Ýle Tablo Birleþtirme
SELECT * FROM Sirketler s
LEFT JOIN Portföy p ON s.sirket_id = p.sirket_id;

--Rýght Join Ýle Tablo Birleþtirme
SELECT * FROM Sirketler s
RIGHT JOIN Portföy p ON s.sirket_id = p.sirket_id;

--Full Join Ýle Tablo Birleþtirme
SELECT * FROM Sirketler s
FULL JOIN Islemler i ON s.sirket_id = i.sirket_id;

--Cross Join Ýle Tablo Birleþtirme
SELECT * FROM Portföy p
CROSS JOIN Islemler i; 

--Intersect Kullanýmý
SELECT kullanici_id, sirket_id FROM Portföy
INTERSECT
SELECT kullanici_id, sirket_id FROM Islemler;

--Except Kullanýmý
SELECT kullanici_id, sirket_id FROM Portföy
EXCEPT
SELECT kullanici_id, sirket_id FROM Islemler

--Union ve Union All Kullanýmý
SELECT kullanici_id, sirket_id FROM Portföy
UNION
SELECT kullanici_id, sirket_id FROM Ýslemler

SELECT kullanici_id, sirket_id FROM Portföy
UNION ALL
SELECT kullanici_id, sirket_id FROM Islemler

--Subquery Kullanýmý
SELECT kullanici_id, sirket_id, miktar,
(SELECT SUM(miktar) FROM Portföy) AS toplam_miktar
FROM Portföy;

--GroupBy ve Having Yapýsý
SELECT sirket_id, AVG(miktar) AS miktar
FROM Portföy
GROUP BY sirket_id
HAVING AVG(miktar) > 120;

--Between Yapýsý
SELECT * FROM Ýslemler 
WHERE tarih BETWEEN '2020-01-01' AND '2024-01-01';

--Ýf Else Kullanýmý
DECLARE @kayit_tarihi date;

SELECT @kayit_tarihi = k.kayit_tarihi
FROM Kullanicilar k
JOIN Sirketler s ON k.kullanici_id = 138792; 

IF @kayit_tarihi >= '2020-01-01'
    PRINT 'Kullanýcý, son iki yýl içinde kayýt olmuþ';
ELSE
    PRINT 'Kullanýcý, son iki yýl içinde kayýt olmamýþ.';

--if Exists Kullanýmý
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
    PRINT 'Kullanýcý, belirli bir tarihten sonra kayýt olmuþ.';
ELSE
    PRINT 'Kullanýcý, belirli bir tarihten sonra kayýt olmamýþ.';

--Case Kullanýmý
SELECT
	CASE
		WHEN s.halkaarz_fiyati > 10.00 THEN 'Halka arz fiyatý 10.00 den büyük.'
		WHEN s.halkaarz_fiyati >= 10.00 THEN 'Halka arz fiyatý 10.00 veya daha az.'
	END AS fiyat_durumu 
FROM Kullanicilar k
JOIN Sirketler s ON k.kullanici_id = 138792;

--While Döngüsü Kullanýmý
DECLARE @kullanici_adi VARCHAR(40);

DECLARE kullanici_cursor CURSOR FOR
SELECT kullanici_adi
FROM Kullanicilar;

OPEN kullanici_cursor;
FETCH NEXT FROM kullanici_cursor INTO @kullanici_adi;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT 'Kullanýcý Adý: ' + @kullanici_adi;

    FETCH NEXT FROM kullanici_cursor INTO @kullanici_adi;
END

CLOSE kullanici_cursor;
DEALLOCATE kullanici_cursor;

--View Kullanýmý
CREATE VIEW KullaniciAdlari AS
SELECT kullanici_adi
FROM Kullanicilar;

SELECT*FROM KullaniciAdlari;

--Stored Procedure Kullanýmý
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

EXEC KullaniciEkle 'sýlakrhn', 'sýlakarahan@email.com', 'sifre5473', '2024-04-17';

--Scaler Valued Fuction 
CREATE FUNCTION dbo.fn_KullaniciAdUzunlugu (@kullanici_adi VARCHAR(100))
RETURNS VARCHAR(50)
AS
BEGIN
    DECLARE @uzunluk INT;
    SET @uzunluk = LEN(@kullanici_adi);
    
    IF @uzunluk <= 10
        RETURN 'Kýsa';
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
VALUES ('kubrakrk', 'kubrakorkmaz@example.com', 'þifre2485');
