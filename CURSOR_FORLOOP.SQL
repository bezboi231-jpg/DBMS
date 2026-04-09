SET SERVEROUTPUT ON;
DECLARE

CURSOR emp_cursor IS
SELECT EName, BasicSal
FROM EMP
ORDER BY BasicSal DESC;

counter NUMBER := 0;

BEGIN

FOR rec IN emp_cursor LOOP

counter := counter + 1;

EXIT WHEN counter > 3;

DBMS_OUTPUT.PUT_LINE
(rec.EName || ' ' || rec.BasicSal);

END LOOP;

END;
/