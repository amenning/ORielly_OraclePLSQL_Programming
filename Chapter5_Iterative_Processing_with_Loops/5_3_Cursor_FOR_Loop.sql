SET SERVEROUTPUT ON
SET ECHO ON
SET TIME ON
SPOOL 5_3_Cursor_FOR_Loop.log

CREATE OR REPLACE PROCEDURE display_multiple_years (
    start_year_in IN PLS_INTEGER
   ,end_year_in IN PLS_INTEGER
)
IS
BEGIN
    FOR l_cursor IN (
        SELECT year 
        FROM ( 
            SELECT ROWNUM year 
            FROM DUAL 
            CONNECT BY LEVEL <= 3000
        )
        WHERE year BETWEEN start_year_in AND end_year_in
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE('Current Year: ' || l_cursor.year);
    END LOOP;
END display_multiple_years;
/

EXECUTE display_multiple_years(2010, 2020);

SPOOL OFF
