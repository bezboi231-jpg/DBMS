SET SERVEROUTPUT ON;
DECLARE

CURSOR emp_cursor IS
SELECT EID, BasicSal
FROM EMP
WHERE Deptno = 20
FOR UPDATE;

v_id EMP.EID%TYPE;
v_old EMP.BasicSal%TYPE;
v_new EMP.BasicSal%TYPE;

BEGIN

OPEN emp_cursor;

IF emp_cursor%ISOPEN THEN
   LOOP

   FETCH emp_cursor INTO v_id, v_old;

   EXIT WHEN emp_cursor%NOTFOUND;

   v_new := v_old + (v_old * 0.05);

   UPDATE EMP
   SET BasicSal = v_new
   WHERE CURRENT OF emp_cursor;

   INSERT INTO emp_update
   VALUES(v_id, v_old, v_new, SYSDATE);

   END LOOP;

   DBMS_OUTPUT.PUT_LINE
   (emp_cursor%ROWCOUNT || ' Employees Updated');

ELSE
   DBMS_OUTPUT.PUT_LINE('Cursor Not Open');
END IF;

CLOSE emp_cursor;

END;
/