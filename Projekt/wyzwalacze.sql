-- Procedura wybiera wszystkie pola z tabeli ksiazki
CREATE PROCEDURE proc01 ()
SELECT * FROM ksiazki; 



--Funkcja która twórzy tabelke wypełnią napisem Hello World
CREATE FUNCTION hello (s CHAR(20)) RETURNS CHAR(50) DETERMINISTIC RETURN CONCAT('Hello, ',s,'!')
--wynik:SELECT hello('world');
--+----------------+
--| hello('world') |
--+----------------+
--| Hello, world!  |
--+----------------+
