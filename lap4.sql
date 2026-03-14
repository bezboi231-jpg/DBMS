set serveroutput on;
DECLARE
CURSOR c1 IS
SELECT Eid, BasicSal
FROM EMP
WHERE Deptno = 20;

v_eid EMP.Eid%TYPE;
v_sal EMP.BasicSal%TYPE;

BEGIN

OPEN c1;

IF c1%ISOPEN THEN
DBMS_OUTPUT.PUT_LINE('Cursor Opened');
END IF;

LOOP
FETCH c1 INTO v_eid, v_sal;

EXIT WHEN c1%NOTFOUND;

UPDATE EMP
SET BasicSal = BasicSal * 1.05
WHERE Eid = v_eid;

INSERT INTO emp_update
VALUES(v_eid, v_sal, v_sal*1.05, SYSDATE);

END LOOP;

CLOSE c1;

END;
/
