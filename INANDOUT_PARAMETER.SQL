SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE search_emp
(
   id IN NUMBER,
   name OUT VARCHAR2
)
IS
BEGIN

SELECT EName
INTO name
FROM EMP
WHERE EID = id;

EXCEPTION

WHEN NO_DATA_FOUND THEN
   name := 'Employee Not Found';

END;
/