SET SERVEROUTPUT ON;
DECLARE

CURSOR dept_cursor IS
SELECT DISTINCT Deptno FROM EMP;

CURSOR emp_cursor(dno NUMBER) IS
SELECT EName, BasicSal
FROM EMP
WHERE Deptno = dno;

v_gross NUMBER;
v_total NUMBER;

BEGIN

FOR d IN dept_cursor LOOP

DBMS_OUTPUT.PUT_LINE('Department : ' || d.Deptno);

v_total := 0;

FOR e IN emp_cursor(d.Deptno) LOOP

v_gross := e.BasicSal 
         + (e.BasicSal * 0.50)
         + (e.BasicSal * 0.15)
         + 500
         - (e.BasicSal * 0.10);

DBMS_OUTPUT.PUT_LINE
(e.EName || ' Basic Salary : ' || e.BasicSal 
|| ' Gross Salary : ' || v_gross);

v_total := v_total + v_gross;

END LOOP;

DBMS_OUTPUT.PUT_LINE
('Total Gross Salary : ' || v_total);

DBMS_OUTPUT.PUT_LINE('---------------------');

END LOOP;

END;
/