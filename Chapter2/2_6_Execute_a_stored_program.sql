SET SERVEROUTPUT ON
SET ECHO ON
SET TIME ON
SPOOL 2_6_Execute_a_stored_program.log

BEGIN
    DBMS_OUTPUT.PUT_LINE('There are ' || wordcount(CHR(9)) || 'words in a tab');
END;
/

VARIABLE words NUMBER
CALL wordcount('some text') INTO :words;
PRINT :words

SPOOL OFF
