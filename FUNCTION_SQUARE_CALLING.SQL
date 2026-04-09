SET SERVEROUTPUT ON;
DECLARE
   res NUMBER;
BEGIN

res := square_fun(5);

DBMS_OUTPUT.PUT_LINE('Square = ' || res);

END;
/