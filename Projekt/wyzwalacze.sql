CREATE PROCEDURE proc01 ()
SELECT * FROM ksiazki; 




DROP PROCEDURE IF EXISTS HelloWorld;

delimiter //
//
CREATE procedure HelloWorld(out jakis_tekst VARCHAR(30))
BEGIN

set jakis_tekst = 'Hello World';

END
//

delimiter ;

CALL HelloWorld(@out);
Select @out;