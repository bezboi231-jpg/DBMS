SET SERVEROUTPUT ON;
DECLARE
    sname RESULT.Name%TYPE;
    total RESULT.Total%TYPE;
    per RESULT.Per%TYPE;
    grade RESULT.Grade%TYPE;
BEGIN

    sname := '&Student_Name';

    SELECT Total, Per, Grade
    INTO total, per, grade
    FROM RESULT
    WHERE Name = sname;

    DBMS_OUTPUT.PUT_LINE('Total = ' || total);
    DBMS_OUTPUT.PUT_LINE('Percentage = ' || per);
    DBMS_OUTPUT.PUT_LINE('Grade = ' || grade);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Student Not Found');

END;
/