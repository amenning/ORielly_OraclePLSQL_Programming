SET SERVEROUTPUT ON
SET ECHO ON
SET TIME ON
SPOOL 5_1_Simple_Loop.log

CREATE OR REPLACE PROCEDURE display_multiple_years (
    start_year_in IN PLS_INTEGER
   ,end_year_in IN PLS_INTEGER
)
IS
    l_current_year PLS_INTEGER := start_year_in;
BEGIN
    LOOP
        EXIT WHEN l_current_year > end_year_in;
        DBMS_OUTPUT.PUT_LINE('Current Year: ' || l_current_year);
        l_current_year := l_current_year +1;
    END LOOP;
END;
/

EXECUTE display_multiple_years(2010, 2020);

SPOOL OFF
