SET SERVEROUTPUT ON
SET ECHO ON
SET TIME ON
SPOOL 5_8_CONTINUE.log

BEGIN
    FOR l_index IN 1 .. 10
    LOOP
        CONTINUE WHEN MOD (l_index, 2) = 0;
        DBMS_OUTPUT.PUT_LINE('Loop index = ' || TO_CHAR(l_index));
    END LOOP;
END;
/

SPOOL OFF
