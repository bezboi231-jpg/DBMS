SET SERVEROUTPUT ON;
DECLARE
    n NUMBER;
    i NUMBER := 1;
BEGIN
    n := &Number;

    WHILE i <= n LOOP
        DBMS_OUTPUT.PUT_LINE(i);
        i := i + 1;
    END LOOP;
END;
/