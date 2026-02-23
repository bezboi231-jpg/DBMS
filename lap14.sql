set serverout on;
DECLARE
 id NUMBER:=&EID;
BEGIN
 DELETE FROM EMP
 WHERE EID=id;

 DBMS_OUTPUT.PUT_LINE('Employee Deleted');
END;
/