SELECT * FROM Kategorie
WHERE nazwa IN ('Akcja', 'Romans', 'Poradnik');

SELECT * FROM Ksiazki
WHERE rok_wydania BETWEEN 2017 AND 2019;

SELECT id_czytelnik, login, telefon
FROM czytelnicy
ORDER BY id_czytelnik ASC, telefon DESC;

SELECT * FROM Wypozyczenia
LIMIT 2, 3;

SELECT MIN(data_urodzenia), MAX(data_urodzenia) FROM czytelnicy

SELECT id_ksiazka, COUNT(*) AS Liczba_modeli
FROM Ksiazki
GROUP BY id_ksiazka

SELECT tytul, COUNT(*) AS LiczbaModeli
FROM Ksiazki
WHERE rok_wydania <= 2020
GROUP BY rok_wydania
ORDER BY LiczbaModeli DESC

SELECT  Ksiazki.tytul, Ksiazki.rok_wydania, Ksiazki.id_autor,
Autorzy.imie, Autorzy.nazwisko, Autorzy.id_autor
FROM Autorzy LEFT JOIN Ksiazki
ON Ksiazki.id_autor = Autorzy.id_autor
WHERE Ksiazki.rok_wydania = 2019;

SELECT Czytelnicy.id_czytelnik, Czytelnicy.login, Czytelnicy.email, Czytelnicy.telefon,
            Wypozyczenia.id_czytelnik, Wypozyczenia.data_wypozyczenia, Wypozyczenia.data_oddania
FROM Czytelnicy INNER JOIN Wypozyczenia
ON Czytelnicy.id_czytelnik =  Wypozyczenia.id_czytelnik
ORDER BY Czytelnicy.login, Czytelnicy.email, Wypozyczenia.data_wypozyczenia ASC, Wypozyczenia.data_oddania DESC;


Select Pracownicy.login, Pracownicy.haslo, Pracownicy.id_rola, Role.nazwa, Role.id_rola
FROM Pracownicy INNER JOIN Role
ON Pracownicy.id_rola = Role.id_rola
