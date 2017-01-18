SET SERVEROUTPUT ON
SET ECHO ON
SET TIME ON
SPOOL 3_2_Full_Anonymous_Example.log

-- Anonymous Block (i.e. no Header section)
DECLARE
    l_right_now VARCHAR2(9);
BEGIN
    l_right_now := SYSDATE;
    DBMS_OUTPUT.PUT_LINE(l_right_now);
EXCEPTION
    WHEN VALUE_ERROR
    THEN
        DBMS_OUTPUT.PUT_LINE('I bet l_right_now is too small ' 
            || 'for the default date format!');
END;
/

SPOOL OFF
