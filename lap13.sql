set serveroutput on;
DECLARE
 CURSOR c IS
 SELECT * FROM EMP
 WHERE Gender='Male'
 AND Deptname='HR';
BEGIN
 FOR r IN c LOOP
 DBMS_OUTPUT.PUT_LINE(r.EID||' '||r.EName);
 END LOOP;
END;
/