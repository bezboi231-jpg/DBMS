set serveroutput on;
DECLARE
 num NUMBER:=&num;
 sq NUMBER;
 cb NUMBER;
BEGIN
 sq:=num*num;
 cb:=num*num*num;

 DBMS_OUTPUT.PUT_LINE('Square='||sq);
 DBMS_OUTPUT.PUT_LINE('Cube='||cb);
END;
/