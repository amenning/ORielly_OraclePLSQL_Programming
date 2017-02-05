SET SERVEROUTPUT ON
SET ECHO ON
SET TIME ON
SPOOL 6_3_RAISE_system_exception.log

DECLARE
    x INTEGER;
    y INTEGER;
BEGIN
    x := 0;
    IF x = 0
    THEN
        RAISE ZERO_DIVIDE;
    ELSE
        y := x / x;
    END IF;
EXCEPTION
    WHEN ZERO_DIVIDE
    THEN   
        DBMS_OUTPUT.PUT_LINE('Zero Divide Exception Raised.');
END;
/

SPOOL OFF
