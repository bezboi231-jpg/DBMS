set serveroutput on;
DECLARE
 n NUMBER:=&Number;
 i NUMBER:=1;
BEGIN
 LOOP
  EXIT WHEN i>n;
  DBMS_OUTPUT.PUT_LINE(i);
  i:=i+1;
 END LOOP;
END;
/