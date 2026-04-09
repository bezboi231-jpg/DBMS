SET SERVEROUTPUT ON;
DECLARE
    num NUMBER;
    sq NUMBER;
    cube NUMBER;
BEGIN
    num := &Number;

    sq := num * num;
    cube := num * num * num;

    DBMS_OUTPUT.PUT_LINE('Square = ' || sq);
    DBMS_OUTPUT.PUT_LINE('Cube = ' || cube);
END;
/