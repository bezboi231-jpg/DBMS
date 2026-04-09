SET SERVEROUTPUT ON;
DECLARE
    ename EMP.EName%TYPE;
    salary EMP.BasicSal%TYPE;
BEGIN

    ename := '&Employee_Name';

    SELECT BasicSal
    INTO salary
    FROM EMP
    WHERE EName = ename;

    DBMS_OUTPUT.PUT_LINE('Basic Salary = ' || salary);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee Not Found');

END;
/