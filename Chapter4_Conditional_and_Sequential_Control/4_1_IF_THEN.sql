SET SERVEROUTPUT ON
SET ECHO ON
SET TIME ON
SPOOL 4_1_IF_THEN.log

DECLARE
    g_salary NUMBER;
BEGIN
    g_salary := 50000;

    IF g_salary > 40000
    THEN
         DBMS_OUTPUT.PUT_LINE(g_salary + 500);
    END IF;
END;
/

SPOOL OFF
