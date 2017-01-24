SET SERVEROUTPUT ON
SET ECHO ON
SET TIME ON
SPOOL 4_4_SIMPLE_CASE.log

DECLARE
    g_salary NUMBER;
BEGIN
    g_salary := 50000;

    CASE g_salary
    WHEN 20000 THEN
        DBMS_OUTPUT.PUT_LINE('Bonus = ' || 500);
    WHEN 30000 THEN
        DBMS_OUTPUT.PUT_LINE('Bonus = ' || 1000);
    WHEN 40000 THEN
        DBMS_OUTPUT.PUT_LINE('Bonus = ' || 1500);
    /* The following is the implicit ELSE if none is specified
    ELSE
        RAISE CASE_NOT_FOUND;
    */
    END CASE;
END;
/

SPOOL OFF
