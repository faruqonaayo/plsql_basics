DECLARE
    counter number;
BEGIN
    FOR counter IN REVERSE 10..20
    LOOP
    dbms_output.put_line('Counter is - ' || counter);
    end LOOP;
END;