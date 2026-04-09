SET SERVEROUTPUT ON;
DECLARE
    id NUMBER;
    sal NUMBER;
    hra NUMBER;
    da NUMBER;
    medical NUMBER := 500;
    pf NUMBER;
    gross NUMBER;
BEGIN
    id := &EID;

    SELECT salary INTO sal
    FROM EMPLOYEE
    WHERE EMP_ID = id;

    hra := sal * 0.15;
    da := sal * 0.50;
    pf := sal * 0.10;

    gross := sal + hra + da + medical - pf;

    DBMS_OUTPUT.PUT_LINE('Gross Salary = '|| gross);

END;
/