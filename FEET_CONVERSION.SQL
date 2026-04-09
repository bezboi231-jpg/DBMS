SET SERVEROUTPUT ON;
DECLARE
    feet NUMBER;
    cm NUMBER;
    inch NUMBER;
    meter NUMBER;
BEGIN
    feet := &Feet;

    inch := feet * 12;
    cm := feet * 30.48;
    meter := feet * 0.3048;

    DBMS_OUTPUT.PUT_LINE('Inches = '|| inch);
    DBMS_OUTPUT.PUT_LINE('Centimeter = '|| cm);
    DBMS_OUTPUT.PUT_LINE('Meter = '|| meter);
END;
/