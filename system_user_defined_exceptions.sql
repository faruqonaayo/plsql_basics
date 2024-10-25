CREATE OR REPLACE PROCEDURE GET_CUSTOMER
(
    c_id IN CUSTOMER.CUSTOMER_ID%TYPE
) AS
    c_name CUSTOMER.FIRST_NAME%TYPE;
    c_country CUSTOMER.COUNTRY%TYPE;
    custom_zero_exception EXCEPTION;
BEGIN
    IF c_id <= 0 THEN
        RAISE custom_zero_exception;
    END IF;
    SELECT first_name, country INTO c_name, c_country
    FROM CUSTOMER
    WHERE customer_id = c_id;
    
    DBMS_OUTPUT.PUT_LINE('NAME: ' || c_name);
    DBMS_OUTPUT.PUT_LINE('COUNTRY: ' || c_country);
EXCEPTION
    WHEN custom_zero_exception THEN
        DBMS_OUTPUT.PUT_LINE('ID cannot be zero or less');
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No data found');
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('Too many rows');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Other Errors');
END;

--SELECT * FROM CUSTOMER;
----
--EXECUTE GET_CUSTOMER(0);
