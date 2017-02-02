SET SERVEROUTPUT ON
SET ECHO ON
SET TIME ON
SPOOL 5_6_REVERSE_Numeric_FOR_Loop.log

CREATE OR REPLACE PROCEDURE display_multiple_years (
    start_year_in IN PLS_INTEGER
   ,end_year_in IN PLS_INTEGER
)
IS
BEGIN
    FOR l_current_year IN REVERSE start_year_in .. end_year_in
    LOOP
        DBMS_OUTPUT.PUT_LINE('Current Year: ' || l_current_year);
    END LOOP;
END display_multiple_years;
/

EXECUTE display_multiple_years(2010, 2020);

SPOOL OFF
