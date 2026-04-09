SET SERVEROUTPUT ON;
DECLARE
    n NUMBER;
    i NUMBER := 1;
BEGIN
    n := &Number;

    LOOP
        EXIT WHEN i > n;
        DBMS_OUTPUT.PUT_LINE(i);
        i := i + 1;
    END LOOP;
END;
/