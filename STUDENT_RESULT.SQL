SET SERVEROUTPUT ON;
DECLARE
    rno NUMBER;
    s1 NUMBER;
    s2 NUMBER;
    s3 NUMBER;
    s4 NUMBER;
    s5 NUMBER;
    total NUMBER;
    per NUMBER;
    grade VARCHAR2(5);
BEGIN
    rno := &Rollno;

    SELECT Sub1,Sub2,Sub3,Sub4,Sub5
    INTO s1,s2,s3,s4,s5
    FROM RESULT
    WHERE Rollno = rno;

    total := s1+s2+s3+s4+s5;
    per := total/5;

    IF per >= 75 THEN
        grade := 'Dist';
    ELSIF per >= 60 THEN
        grade := 'First';
    ELSIF per >= 50 THEN
        grade := 'Second';
    ELSE
        grade := 'Fail';
    END IF;

    DBMS_OUTPUT.PUT_LINE('Total = '|| total);
    DBMS_OUTPUT.PUT_LINE('Percentage = '|| per);
    DBMS_OUTPUT.PUT_LINE('Grade = '|| grade);

END;
/