SET SERVEROUTPUT ON
SET ECHO ON
SET TIME ON
SPOOL 7_3_DECLARE.log

DECLARE
    -- Simple declaration of numeric variables
    l_total_count NUMBER;

    -- Declaration of number that rounds to the nearest hundreth (cent):
    l_dollar_amount NUMBER (10,2);

    -- A single datetime value, assigned a default value of the database
    -- server's system clock.  Also, it can never by NULL.
    l_right_now DATE NOT NULL DEFAULT SYSDATE;

    -- Using the assignment operator for the default value specification
    l_favorite_flavor VARCHAR2(100) := 'Anything with chocolate, actually';
BEGIN
    NULL;
END;
/

SPOOL OFF
