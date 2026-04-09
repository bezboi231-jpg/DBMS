SET SERVEROUTPUT ON;
DECLARE
   ename VARCHAR2(20);
BEGIN

search_emp(101, ename);

DBMS_OUTPUT.PUT_LINE('Employee Name : '|| ename);

END;
/