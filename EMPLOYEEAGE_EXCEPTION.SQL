SET SERVEROUTPUT ON;
DECLARE
    sal EMP.BasicSal%TYPE;
BEGIN

    SELECT BasicSal
    INTO sal
    FROM EMP
    WHERE Age = 50;

    DBMS_OUTPUT.PUT_LINE('Salary = ' || sal);

EXCEPTION

    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No Employee Found with Age 50');

    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('More than one employee with Age 50');

END;
/