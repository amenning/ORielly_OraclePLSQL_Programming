SET SERVEROUTPUT ON
SET ECHO ON
SET TIME ON
SPOOL 4_2_IF_THEN_ELSE.log

DECLARE
    g_salary NUMBER;
BEGIN
    g_salary := 50000;

    IF NVL(g_salary,0) <= 40000
    THEN
         DBMS_OUTPUT.PUT_LINE('Bonus = ' || 500);
    ELSE
         DBMS_OUTPUT.PUT_LINE('Bonus = ' || 1000);
    END IF;
END;
/

SPOOL OFF
