SET SERVEROUTPUT ON
SET ECHO ON
SET TIME ON
SPOOL 6_1_EXCEPTION_INIT.log

CREATE OR REPLACE PROCEDURE display_multiple_months (
    start_month_in IN PLS_INTEGER
   ,end_month_in IN PLS_INTEGER
)
IS
    l_current_month PLS_INTEGER := start_month_in;
    l_month_name VARCHAR(32);
    invalid_month EXCEPTION;
    PRAGMA EXCEPTION_INIT (invalid_month, -1843);    
BEGIN
    LOOP
        EXIT WHEN l_current_month > end_month_in;
        SELECT TO_CHAR(TO_DATE(l_current_month, 'MM'), 'MONTH') 
            INTO l_month_name
        FROM DUAL;
        DBMS_OUTPUT.PUT_LINE('Current Month: ' || l_month_name);
        l_current_month := l_current_month +1;
    END LOOP;
EXCEPTION
    WHEN invalid_month
        THEN DBMS_OUTPUT.PUT_LINE('Exception handled!');
END;
/

EXECUTE display_multiple_months(1, 15);

SPOOL OFF
