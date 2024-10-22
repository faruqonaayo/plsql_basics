DECLARE
    c_id customer.customer_id%TYPE := 11;
    c_name customer.first_name%TYPE;
    c_addr customer.country%TYPE;
BEGIN
    SELECT first_name, country INTO c_name, c_addr
    FROM customer
    WHERE customer_id = c_id;
    
    DBMS_OUTPUT.PUT_LINE('Name: ' || c_name);
    DBMS_OUTPUT.PUT_LINE('Country: ' || c_addr);
END;