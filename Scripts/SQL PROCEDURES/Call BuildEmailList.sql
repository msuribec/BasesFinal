SET @id = 1;
SET @email_list = "";
CALL `airline`.`build_email_list`(@id,@email_list);
SELECT @email_list;
