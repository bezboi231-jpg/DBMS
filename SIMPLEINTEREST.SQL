SET SERVEROUTPUT ON;
DECLARE
    p NUMBER;
    r NUMBER;
    n NUMBER;
    si NUMBER;
BEGIN
    p := &Principal;
    r := &Rate;
    n := &Years;

    si := (p * r * n)/100;

    DBMS_OUTPUT.PUT_LINE('Simple Interest = ' || si);
END;
/