set serveroutput on;
DECLARE
 id NUMBER:=&EID;
 basic NUMBER;
 hra NUMBER;
 da NUMBER;
 pf NUMBER;
 medical NUMBER:=500;
 gross NUMBER;
BEGIN
 SELECT BasicSal INTO basic
 FROM EMP
 WHERE EID=id;

 hra:=basic*0.15;
 da:=basic*0.50;
 pf:=basic*0.10;

 gross:=basic+hra+da+medical-pf;

 DBMS_OUTPUT.PUT_LINE('Gross Salary='||gross);
END;
/