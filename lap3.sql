set serveroutput on;
DECLARE
 pname VARCHAR2(20):='&Product_Name';
 qty NUMBER:=&Quantity;
 price NUMBER:=&Price;
 dis NUMBER:=&Discount_Percentage;
 total NUMBER;
 discount NUMBER;
BEGIN
 total:=qty*price;
 discount:=total*dis/100;

 DBMS_OUTPUT.PUT_LINE('Total='||total);
 DBMS_OUTPUT.PUT_LINE('Discount='||discount);
END;
/