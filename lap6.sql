set serveroutput on;
DECLARE

CURSOR c1 IS
SELECT EName, BasicSal
FROM EMP
ORDER BY BasicSal DESC;

i NUMBER := 0;

BEGIN

FOR rec IN c1 LOOP

i := i + 1;

EXIT WHEN i > 3;

DBMS_OUTPUT.PUT_LINE(rec.EName || '  ' || rec.BasicSal);

END LOOP;

END;
/
