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
                              
                              DELIMITER // 
CREATE TRIGGER wyzwalacz1 
BEFORE INSERT ON ksiazki for each row 
BEGIN set new.opis="Wkrótce więcej inforamacji";END// 

DELIMITER $$
CREATE TRIGGER wyzywalacz2
BEFORE INSERT ON ksiazki for each row 
BEGIN if new.isbn>900000 then set new.isbn=9999999999;
END if;
END $$                              
                              
                              
                              
