set serverout on;
DECLARE

CURSOR c1 IS
SELECT EName, Deptname, BasicSal
FROM EMP
ORDER BY BasicSal DESC;

v_name EMP.EName%TYPE;
v_dept EMP.Deptname%TYPE;
v_sal EMP.BasicSal%TYPE;

BEGIN

OPEN c1;

LOOP
FETCH c1 INTO v_name, v_dept, v_sal;

EXIT WHEN c1%NOTFOUND OR c1%ROWCOUNT > 5;

DBMS_OUTPUT.PUT_LINE(v_name || '  ' || v_dept || '  ' || v_sal);

END LOOP;

CLOSE c1;

END;
/
