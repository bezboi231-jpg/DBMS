Set serverout on;
DECLARE
BEGIN
    UPDATE EMP
    SET BasicSal = BasicSal * 1.10
    WHERE Deptno = 10;

    IF SQL%ROWCOUNT > 0 THEN
        DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' Employee record(s) updated.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('No employee found in Department 10.');
    END IF;

END;
/
