set serveroutput on;
DECLARE
 n NUMBER:=&Number;
 i NUMBER:=1;
BEGIN
 WHILE i<=n LOOP
 DBMS_OUTPUT.PUT_LINE(i);
 i:=i+1;
 END LOOP;
END;
/