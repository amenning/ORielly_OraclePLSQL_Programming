SET SERVEROUTPUT ON
SET ECHO ON
SET TIME ON
SPOOL 7_3_DECLARE_CONTANTs.log

DECLARE
    -- The current year number; it's not going to change during my session.
    l_curr_year CONSTANT PLS_INTEGER := TO_NUMBER(TO_CHAR(SYSDATE, 'YYYY'));

    -- Using the DEFAULT keyword
    l_author CONSTANT VARCHAR2(100) DEFAULT 'Bill Pribyl';
BEGIN
    NULL;
END;
/

SPOOL OFF
