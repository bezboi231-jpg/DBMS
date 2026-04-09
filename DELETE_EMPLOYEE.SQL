SET SERVEROUTPUT ON;
DECLARE
    id NUMBER;
BEGIN
    id := &EID;

    DELETE FROM EMP
    WHERE EID = id;

    IF SQL%ROWCOUNT > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Record Deleted');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Record Not Found');
    END IF;

END;
/