SET @id = 1;
SET @priority_list = "";
CALL `airline`.`findPriority`(@id,@priority_list);
SELECT @priority_list;