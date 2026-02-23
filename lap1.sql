set serveroutput on;
DECLARE
 p NUMBER:=&p;
 r NUMBER:=&r;
 t NUMBER:=&t;
 si NUMBER;
BEGIN
 si:=(p*r*t)/100;

 DBMS_OUTPUT.PUT_LINE('Principal Amount: '||'p_principal');
 DBMS_OUTPUT.PUT_LINE('Rate of Interest: '||'p_rate' || '%');
 DBMS_OUTPUT.PUT_LINE('Time Period: '||'p_time' || 'years');
 DBMS_OUTPUT.PUT_LINE('Simple Interest: '||si);
END;
/