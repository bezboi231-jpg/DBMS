set serverout on;
DECLARE

CURSOR c1(p_dept NUMBER) IS
SELECT EName, BasicSal
FROM EMP
WHERE Deptno = p_dept;

v_total NUMBER := 0;

BEGIN

FOR rec IN c1(10) LOOP
DBMS_OUTPUT.PUT_LINE('Employee: ' || rec.EName || 
                     ' Salary: ' || rec.BasicSal);

v_total := v_total + rec.BasicSal;

END LOOP;

DBMS_OUTPUT.PUT_LINE('Total Salary of Dept 10 = ' || v_total);

END;
/

