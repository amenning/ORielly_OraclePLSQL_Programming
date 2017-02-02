SET SERVEROUTPUT ON
SET ECHO ON
SET TIME ON
SPOOL 5_7_Simple_Loop_Made_Like_Cursor.log

CREATE OR REPLACE PROCEDURE display_multiple_years (
    start_year_in IN PLS_INTEGER
   ,end_year_in IN PLS_INTEGER
)
IS
    CURSOR l_cursor IS
        SELECT year
        FROM (
            SELECT ROWNUM year
            FROM DUAL
            CONNECT BY LEVEL <= 3000
        )
        WHERE year BETWEEN start_year_in AND end_year_in;
    l_cursor_rec l_cursor%ROWTYPE;
BEGIN
    OPEN l_cursor; 
    LOOP
        FETCH l_cursor INTO l_cursor_rec;
        EXIT WHEN l_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Current Year: ' || l_cursor_rec.year);
    END LOOP;
    CLOSE l_cursor;
END display_multiple_years;
/

EXECUTE display_multiple_years(2010, 2020);

SPOOL OFF
