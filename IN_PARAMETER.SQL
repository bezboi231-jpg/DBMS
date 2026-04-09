SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE salary_increase
(
    dno IN NUMBER,
    per IN NUMBER
)
IS
BEGIN

UPDATE EMP
SET BasicSal = BasicSal + (BasicSal * per/100)
WHERE Deptno = dno;

DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || 
' Employee(s) salary updated');

END;
/