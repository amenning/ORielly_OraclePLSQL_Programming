SET SERVEROUTPUT ON
SET ECHO ON
SET TIME ON
SPOOL 3_4_Scope_Demo.log

CREATE OR REPLACE PACKAGE scope_demo
IS 
    g_global NUMBER;

    PROCEDURE set_global (number_in IN NUMBER);
END scope_demo;
/

CREATE OR REPLACE PACKAGE BODY scope_demo
IS
    PROCEDURE set_global (number_in IN NUMBER)
    IS 
        l_salary NUMBER := 10000;
        l_count  PLS_INTEGER;
    BEGIN
        <<local_block>>
        DECLARE
            l_inner NUMBER;
        BEGIN
            SELECT 1 
            INTO l_count
            FROM DUAL;
        END local_block;

        g_global := number_in;
    END set_global;
END scope_demo;  
/

--Use new package
DECLARE 
    g_value NUMBER;
BEGIN
    scope_demo.set_global(34);    

    SELECT scope_demo.g_global 
    INTO g_value
    FROM DUAL;

    DBMS_OUTPUT.PUT_LINE(g_value);
END;
/

SPOOL OFF
