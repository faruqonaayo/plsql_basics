DECLARE
    counter number := 0;
BEGIN
    WHILE counter < 20
    LOOP
    dbms_output.put_line('Counter is - ' || counter);
    counter := counter + 1;
    end LOOP;
END;