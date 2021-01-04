Create database Bibloteka;
use Bibloteka;

CREATE TABLE Kategorie
	(
		 id_kategoria INT PRIMARY KEY
		,nazwa VARCHAR(50)
	);
	
	CREATE TABLE Autorzy
	(
		 id_autor INT  PRIMARY KEY
		,imie VARCHAR(15)
		,nazwisko VARCHAR(30)
	);	
	
	CREATE TABLE Wydawnictwa
	(
		 id_wydawnictwo INT  PRIMARY KEY
		,nazwa VARCHAR(30)
	);		
	
	CREATE TABLE Ksiazki
    (
         id_ksiazka INT PRIMARY KEY
        ,isbn VARCHAR(13)
        ,id_kategoria INT 
        ,tytul VARCHAR(255)
        ,opis VARCHAR(500)
        ,id_autor INT 
        ,id_wydawnictwo INT 
        ,rok_wydania INT
    );   
	
	CREATE TABLE Czytelnicy
	(
		 id_czytelnik INT PRIMARY KEY
		,login VARCHAR(10)
		,haslo VARCHAR(20)
		,email VARCHAR(30)
		,telefon VARCHAR(20)
		,data_urodzenia DATE
	);
	
	CREATE TABLE Role
    (
         id_rola INT PRIMARY KEY
        ,nazwa NVARCHAR(25)
    );
	
	CREATE TABLE Pracownicy
    (
		 id_pracownik INT PRIMARY KEY
		,login VARCHAR(15)
		,haslo VARCHAR(25)
		,id_rola INT 
	);	
	
	CREATE TABLE Wypozyczenia
	(
		 id_wypozyczenie BIGINT PRIMARY KEY
		,id_czytelnik INT 
		,id_ksiazka INT 
		,data_wypozyczenia DATE
		,id_pracownik_wypozyczenie INT 
		,data_oddania DATE
		,id_pracownik_oddanie INT 
	);
