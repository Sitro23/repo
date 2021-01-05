CREATE VIEW kwerenda1 AS
SELECT * FROM Kategorie
WHERE nazwa IN ('Akcja', 'Romans', 'Poradnik');

CREATE VIEW kwerenda2 AS
SELECT * FROM Ksiazki
WHERE rok_wydania BETWEEN 2017 AND 2019;

CREATE VIEW kwerenda3 AS
SELECT id_czytelnik, login, telefon
FROM czytelnicy
ORDER BY id_czytelnik ASC, telefon DESC;

CREATE VIEW kwerenda4 AS
SELECT * FROM Wypozyczenia
LIMIT 2, 3;

CREATE VIEW kwerenda5 AS
SELECT MIN(data_urodzenia), MAX(data_urodzenia) FROM czytelnicy

CREATE VIEW kwerenda6 AS
SELECT id_ksiazka, COUNT(*) AS Liczba_modeli
FROM Ksiazki
GROUP BY id_ksiazka

CREATE VIEW kwerenda7 AS
SELECT tytul, COUNT(*) AS LiczbaModeli
FROM Ksiazki
WHERE rok_wydania <= 2020
GROUP BY rok_wydania
ORDER BY LiczbaModeli DESC

CREATE VIEW kwerenda8 AS
SELECT  Ksiazki.tytul, Ksiazki.rok_wydania, Ksiazki.id_autor,
Autorzy.imie, Autorzy.nazwisko, Autorzy.id_autor
FROM Autorzy LEFT JOIN Ksiazki
ON Ksiazki.id_autor = Autorzy.id_autor
WHERE Ksiazki.rok_wydania = 2019;

CREATE VIEW kwerenda9 AS
SELECT Czytelnicy.id_czytelnik, Czytelnicy.login, Czytelnicy.email, Czytelnicy.telefon,
            Wypozyczenia.id_czytelnik, Wypozyczenia.data_wypozyczenia, Wypozyczenia.data_oddania
FROM Czytelnicy INNER JOIN Wypozyczenia
ON Czytelnicy.id_czytelnik =  Wypozyczenia.id_czytelnik
ORDER BY Czytelnicy.login, Czytelnicy.email, Wypozyczenia.data_wypozyczenia ASC, Wypozyczenia.data_oddania DESC;

CREATE VIEW kwerenda10 AS
Select Pracownicy.login, Pracownicy.haslo, Pracownicy.id_rola, Role.nazwa, Role.id_rola
FROM Pracownicy INNER JOIN Role
ON Pracownicy.id_rola = Role.id_rola

-- kwerenda1: Kwerenda wybiera wszystkie pola z tabeli Kategorie gdzie nazwa to "Akcja,Romans lub Poradnik"
-- kwerenda2: Kwerenda wybiera wszystkie pola z tabeli Ksiazki gdzie rok wydania znajduje się pomiędzy 2017 a 2019 rokem.
-- kwerenda3: Kwerenda wybiera id_czytelnik,login oraz telefon z tabeli czytelnicy oraz wyświetla id_czyelnika malejąco a telefon rosnąco
-- kwerenda4: Kwerenda wybiera wszystkie pola z tabeli wypozyczenia maksymalnie 2 do 3 pól 
-- kwerenda5: Kwerenda sprawdza minimalny oraz maksymalny rok urodzenia z tabeli czytelnicy
-- kwerenda6: Kwerenda sprawdza ile jest danych książek z tabeli Ksiazki i grupuje je według id_ksiazka
-- kwerenda7: Kwerenda sprawdza ile jest danych tytyułów z tabeli ksiązki, wyśietla tylko te które mają rok wydania mniejszy bądz równy roku 2020, grupuje je według roku_wydania oraz wyśietla malejącą Liczbe modeli
-- kwerenda8: Kwerenda wybiera tytul,rok_wydania,id_autor z tabeli autorzy oraz imie,nazwisko,id_autor z tabeli ksiazki lewo stronie, gdzie Ksiazki.id_autor = Autorzy.id_autor oraz rok wydania ksiazki to 2019 rok
-- kwerenda9: Kwerenda wybiera id_czytelnik,login,email,telefon z tabeli czytelnicy oraz id_czytelnik,data_wypozyczenia,data_oddania z tabeli wypozyczenia gdzie Ksiazki.id_autor = Autorzy.id_autor oraz wyświetla login,emial,data_wypozyczenia malejąco a data_odadania rosnąco
-- kwerenda10: Kwerenda wybiera Login,haslo,id_rola z tabeli Pracownicy oraz nazwa i id_rola z tabeli Role gdzie Pracownicy.id_rola = Role.id_rola

