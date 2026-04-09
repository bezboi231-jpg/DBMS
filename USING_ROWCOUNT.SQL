SET SERVEROUTPUT ON;
DECLARE

CURSOR emp_cursor IS
SELECT EName, Deptname, BasicSal
FROM EMP
ORDER BY BasicSal DESC;

v_name EMP.EName%TYPE;
v_dept EMP.Deptname%TYPE;
v_sal EMP.BasicSal%TYPE;

BEGIN

OPEN emp_cursor;

LOOP

FETCH emp_cursor INTO v_name, v_dept, v_sal;

EXIT WHEN emp_cursor%ROWCOUNT > 5 OR emp_cursor%NOTFOUND;

DBMS_OUTPUT.PUT_LINE
(v_name || ' ' || v_dept || ' ' || v_sal);

END LOOP;

CLOSE emp_cursor;

END;
/