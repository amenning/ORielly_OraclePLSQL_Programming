SET SERVEROUTPUT ON
SET ECHO ON
SET TIME ON
SPOOL 4_7_ASSIGNMENT_USING_CASE_EXPRESSION.log

DECLARE
    salary NUMBER := 20000;
    employee_id NUMBER := 36325;
    bonus_amount NUMBER;
BEGIN
    bonus_amount :=
        CASE 
            WHEN salary >= 10000 AND salary <= 20000 THEN 1500
            WHEN salary > 20000 AND salary <= 40000 THEN 1000
            WHEN salary > 40000 THEN 500
            ELSE 0
        END * 10;
    DBMS_OUTPUT.PUT_LINE(bonus_amount);
END;
/

SPOOL OFF
