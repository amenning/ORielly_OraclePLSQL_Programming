SET SERVEROUTPUT ON
SET ECHO ON
SET TIME ON
SPOOL 3_1_Anonymous_Block.log

-- Execution section only; No Header section
BEGIN
    DBMS_OUTPUT.PUT_LINE('Hello world');
END;
/

SPOOL OFF
