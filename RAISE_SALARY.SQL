SET SERVEROUTPUT ON;
DECLARE
BEGIN

UPDATE EMP
SET BasicSal = BasicSal + (BasicSal * 0.10)
WHERE Deptno = 10;

IF SQL%ROWCOUNT > 0 THEN
   DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || 
   ' Employee(s) salary updated successfully');
ELSE
   DBMS_OUTPUT.PUT_LINE('No Employee Found in Dept 10');
END IF;

END;
/