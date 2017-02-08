SET SERVEROUTPUT ON
SET ECHO ON
SET TIME ON
SPOOL 7_1_Numbers.log

DECLARE
    salary NUMBER(9,2); -- fixed-point, seven to the left, two to the right
    raise_factor NUMBER; -- decimal floating-point
    weeks_to_pay NUMBER(2); -- integer
BEGIN
    salary := 1234567.89;
    raise_factor := 0.05;
    weeks_to_pay := 52;
    DBMS_OUTPUT.PUT_LINE('Salary: ' || salary);
    DBMS_OUTPUT.PUT_LINE('Raise Factor: ' || raise_factor);
    DBMS_OUTPUT.PUT_LINE('Weeks to pay: ' || weeks_to_pay);
END;
/

SPOOL OFF
