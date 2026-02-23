set serveroutput on;
DECLARE
 n NUMBER:=&Number;
BEGIN
 FOR i IN 1..n LOOP
 DBMS_OUTPUT.PUT_LINE(i);
 END LOOP;
END;
/