DECLARE
-- Declaring my global variables
    user_age number := 21;
    user_id constant number default 000912607;
    user_name VARCHAR2(20) := 'Faruq';
BEGIN
/* This block defines all the operations in the
database we are currently printing our variables to
the console */     

    user_name := 'Faruq Ayomide';
    dbms_output.put_line('Welcome ' || user_name);
    dbms_output.put_line(user_age);
    dbms_output.put_line(user_id);
    
    
    -- CHILD BLOCK OR LOCAL
    DECLARE
         -- Declaring my local variables
        user_school VARCHAR2(20) := 'SAIT';
    BEGIN
        dbms_output.put_line(user_school);
    END;
    

END;
