DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `build_email_list`(IN id int(11) ,INOUT email_list varchar(4000))
BEGIN
 DECLARE v_finished INTEGER DEFAULT 0;
        DECLARE v_email varchar(100) DEFAULT "";
 
 -- declare cursor for employee email
 DEClARE email_cursor CURSOR FOR 
 select email from passengers p
inner join voucher v on (p.idPassengers = v.Passenger_idPassenger)
inner join flight f on (f.idFlight = v.Flight_idFlight)
where f.idFlight = id;
 
 -- declare NOT FOUND handler
 DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET v_finished = 1;
 
 OPEN email_cursor;
 
 get_email: LOOP
 
 FETCH email_cursor INTO v_email;
 
 IF v_finished = 1 THEN 
 LEAVE get_email;
 END IF;
 
 -- build email list
 SET email_list = CONCAT(v_email,";",email_list);
 
 END LOOP get_email;
 
 CLOSE email_cursor;
 
END$$
DELIMITER ;
