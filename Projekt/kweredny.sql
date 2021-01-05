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
