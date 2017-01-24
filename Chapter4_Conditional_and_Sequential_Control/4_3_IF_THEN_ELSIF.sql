SET SERVEROUTPUT ON
SET ECHO ON
SET TIME ON
SPOOL 4_3_IF_THEN_ELSIF.log

DECLARE
    g_salary NUMBER;
BEGIN
    g_salary := 50000;

    IF NVL(g_salary, 0) <= 20000
    THEN
         DBMS_OUTPUT.PUT_LINE('Bonus = ' || 500);
    ELSIF NVL(g_salary, 0) BETWEEN 20000 AND 40000
    THEN
         DBMS_OUTPUT.PUT_LINE('Bonus = ' || 1000);
    ELSIF NVL(g_salary, 0) > 40000
    THEN
         DBMS_OUTPUT.PUT_LINE('Bonus = ' || 1500);
    ELSE
         DBMS_OUTPUT.PUT_LINE('Bonus = ' || 0);
    END IF;
END;
/

SPOOL OFF
