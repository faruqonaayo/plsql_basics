--CREATE OR REPLACE PROCEDURE ADD_CUSTOMER
--(
--    c_id IN NUMBER,
--    c_fname IN VARCHAR2,
--    c_lname IN VARCHAR2,
--    c_mname IN VARCHAR2,
--    c_add1 IN VARCHAR2,
--    c_add2 IN VARCHAR2,
--    c_city IN VARCHAR2,
--    c_country IN VARCHAR2,
--    c_date_added IN VARCHAR2,
--    c_region IN VARCHAR2
--)
--AS
--BEGIN
--    INSERT INTO CUSTOMER(customer_id, first_name, last_name, middle_name, address_line1, address_line2, city, country, date_added, region)
--    VALUES (c_id, c_fname, c_lname, c_mname, c_add1, c_add2, c_city, c_country, c_date_added, c_region);
--    COMMIT;
--    
--    DBMS_OUTPUT.PUT_LINE('Data Successfully Inserted');
--END ADD_CUSTOMER;


----CALLING A PROCEDURE
--BEGIN
--    ADD_CUSTOMER(
--    20, 'Simon', 'Stone', 'Blackie', '474 Sunview', NULL, 'Calgary', 'Canada', SYSDATE, 'NORTH'
--    );
--END;

SELECT COUNT(2) FROM CUSTOMER;