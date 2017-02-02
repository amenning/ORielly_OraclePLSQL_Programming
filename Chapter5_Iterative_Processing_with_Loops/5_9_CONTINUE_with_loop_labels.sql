SET SERVEROUTPUT ON
SET ECHO ON
SET TIME ON
SPOOL 5_9_CONTINUE_with_loop_labels.log

BEGIN
    <<outer>>
    FOR outer_index IN 1 .. 5
    LOOP
        DBMS_OUTPUT.PUT_LINE('Outer index = ' || TO_CHAR(outer_index));

        <<inner>>
        FOR inner_index IN 1 .. 5
        LOOP
            DBMS_OUTPUT.PUT_LINE('    Inner index = ' || TO_CHAR(inner_index));
            CONTINUE outer;
        END LOOP inner;
    END LOOP outer;
END;
/

SPOOL OFF
