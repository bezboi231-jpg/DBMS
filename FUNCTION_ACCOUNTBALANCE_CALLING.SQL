SET SERVEROUTPUT ON;
DECLARE
   balance NUMBER;
BEGIN

balance := get_balance(1001);

DBMS_OUTPUT.PUT_LINE('Balance = ' || balance);

END;
/