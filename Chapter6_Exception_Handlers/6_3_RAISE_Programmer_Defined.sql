SET SERVEROUTPUT ON
SET ECHO ON
SET TIME ON
SPOOL 6_3_RAISE_Programmer_defined.log

DECLARE
    invalid_id EXCEPTION; -- All IDs must start with the letter 'X'.
    id_value VARCHAR(30);
BEGIN
    id_value := 'Y';
    IF SUBSTR (id_value, 1, 1) != 'X'
    THEN
        RAISE invalid_id;
    END IF;
EXCEPTION
    WHEN invalid_id
    THEN   
        DBMS_OUTPUT.PUT_LINE('Invalid Id Exception Raised.');
END;
/

SPOOL OFF
