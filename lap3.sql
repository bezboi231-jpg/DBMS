Set serveroutput on;
DECLARE
BEGIN
    UPDATE EMP
    SET BasicSal = BasicSal * 1.05
    WHERE Deptno = 20;

    IF SQL%ROWCOUNT = 0 THEN
        DBMS_OUTPUT.PUT_LINE('No employee found in Department 20');
    ELSE
        INSERT INTO emp_update
        SELECT Eid, BasicSal/1.05, BasicSal, SYSDATE
        FROM EMP
        WHERE Deptno = 20;

        DBMS_OUTPUT.PUT_LINE('Salary Updated Successfully');
    END IF;
END;
/

