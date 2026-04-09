SET SERVEROUTPUT ON;
CREATE OR REPLACE FUNCTION square_fun
(
   num NUMBER
)
RETURN NUMBER
IS
   result NUMBER;
BEGIN

result := num * num;

RETURN result;

END;
/