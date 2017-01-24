SET SERVEROUTPUT ON
SET ECHO ON
SET TIME ON
SPOOL 4_5_CASE_WITH_RESULT_EXPRESSIONS.log

DECLARE
    g_salary NUMBER;
BEGIN
    g_salary := 50000;

    CASE TRUE
    WHEN g_salary <= 20000 
    THEN
        DBMS_OUTPUT.PUT_LINE('Bonus = ' || 500);
    WHEN g_salary BETWEEN 20000 AND 30000 
    THEN
        DBMS_OUTPUT.PUT_LINE('Bonus = ' || 1000);
    WHEN g_salary >= 30000 
    THEN
        DBMS_OUTPUT.PUT_LINE('Bonus = ' || 1500);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Bonus = ' || 0);
    END CASE;
END;
/

SPOOL OFF
