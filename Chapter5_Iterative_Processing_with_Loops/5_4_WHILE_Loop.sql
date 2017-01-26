SET SERVEROUTPUT ON
SET ECHO ON
SET TIME ON
SPOOL 5_4_WHILE_Loop.log

CREATE OR REPLACE PROCEDURE display_multiple_years (
    start_year_in IN PLS_INTEGER
   ,end_year_in IN PLS_INTEGER
)
IS
    l_current_year PLS_INTEGER := start_year_in;
BEGIN
    WHILE (l_current_year <= end_year_in)
    LOOP
        DBMS_OUTPUT.PUT_LINE('Current Year: ' || l_current_year);
        l_current_year := l_current_year + 1;
    END LOOP;
END display_multiple_years;
/

EXECUTE display_multiple_years(2010, 2020);

SPOOL OFF
