DECLARE
    total_amount number := 250;
    discount number := 0;
BEGIN
    CASE
    WHEN total_amount > 200
    then
    discount := 0.2 * total_amount;
    total_amount := total_amount - discount;
    WHEN total_amount > 100
    then
    discount := 0.1 * total_amount;
    total_amount := total_amount - discount;
    else
    discount := 0.05 * total_amount;
    total_amount := total_amount - discount;
    end CASE;
    
    dbms_output.put_line(discount);
    dbms_output.put_line(total_amount);
END;