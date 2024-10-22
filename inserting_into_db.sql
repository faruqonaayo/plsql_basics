DECLARE
    c_id customer.customer_id%TYPE := 13;
    c_fname customer.first_name%TYPE := 'Faruq';
    c_lname customer.last_name%TYPE := 'Ayomide';
    c_mname customer.middle_name%TYPE := 'AK';
    c_add1 customer.address_line1%TYPE := '999 Sunview RD';
    c_add2 customer.address_line1%TYPE := NULL;
    c_city customer.city%TYPE := 'Calgary';
    c_country customer.country%TYPE := 'Canada';
    c_date_added customer.date_added%TYPE := SYSDATE;
    c_region customer.region%TYPE := 'West';

BEGIN
    INSERT INTO customer (customer_id, first_name, last_name, middle_name, address_line1, address_line2, city, country, date_added, region) 
    VALUES (c_id, c_fname, c_lname, c_mname, c_add1, c_add2, c_city, c_country, c_date_added, c_region);
    
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Data Added Successfully');
    
END;

SELECT * FROM CUSTOMER;