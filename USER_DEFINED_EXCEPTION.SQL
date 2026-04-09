SET SERVEROUTPUT ON;
DECLARE

CURSOR emp_cursor IS
SELECT * FROM EMP
WHERE Deptno = &Dept_No;

rec EMP%ROWTYPE;

NO_DEPT_FOUND EXCEPTION;

count1 NUMBER := 0;

BEGIN

OPEN emp_cursor;

LOOP

FETCH emp_cursor INTO rec;

EXIT WHEN emp_cursor%NOTFOUND;

INSERT INTO EMP_BACKUP
VALUES rec.*;

count1 := count1 + 1;

END LOOP;

IF count1 = 0 THEN
    RAISE NO_DEPT_FOUND;
END IF;

DBMS_OUTPUT.PUT_LINE(count1 || 
' Records Inserted into Backup Table');

CLOSE emp_cursor;

EXCEPTION

WHEN NO_DEPT_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('No Records Found for Given Department');

END;
/