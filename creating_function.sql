CREATE OR REPLACE FUNCTION find_salescount
(
    p_sales_date IN DATE
)
RETURN NUMBER
    AS
        counter number := 0;
    BEGIN
        SELECT COUNT(*) INTO counter
        FROM sales
        WHERE sales_date = p_sales_date;
        
        DBMS_OUTPUT.PUT_LINE(counter);
        RETURN counter;
END find_salescount;