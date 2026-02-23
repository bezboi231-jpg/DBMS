set serveroutput on;
DECLARE
 feet NUMBER:=&Feet;
 cm NUMBER;
 inch NUMBER;
 meter NUMBER;
BEGIN
 inch:=feet*12;
 cm:=feet*30.48;
 meter:=feet*0.3048;

 DBMS_OUTPUT.PUT_LINE('Inches='||inch);
 DBMS_OUTPUT.PUT_LINE('CM='||cm);
 DBMS_OUTPUT.PUT_LINE('Meter='||meter);
END;
/