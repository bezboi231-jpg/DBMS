SET SERVEROUTPUT ON;
DECLARE
    pname VARCHAR2(20);
    qty NUMBER;
    price NUMBER;
    discount NUMBER;
    total NUMBER;
    disc_amt NUMBER;
BEGIN
    pname := '&Product_Name';
    qty := &Quantity;
    price := &Price;
    discount := &Discount_Percentage;

    total := qty * price;
    disc_amt := (total * discount)/100;

    DBMS_OUTPUT.PUT_LINE('Product Name: '|| pname);
    DBMS_OUTPUT.PUT_LINE('Total Amount: '|| total);
    DBMS_OUTPUT.PUT_LINE('Discount Amount: '|| disc_amt);
END;
/