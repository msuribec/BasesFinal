DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `findPriority`(IN id int(11) ,INOUT priority_list varchar(4000))
BEGIN
 DECLARE v_finished INTEGER DEFAULT 0;
        DECLARE v_idp varchar(100) DEFAULT "";
        DECLARE v_fnp varchar(100) DEFAULT "";
        DECLARE v_priority varchar(100) DEFAULT "";
    
 -- declare cursor for employee email
 DEClARE priority_cursor CURSOR FOR 
select p.idPassengers , p.`first name`,`airline`.`passengerPriority`( p.`age`,v.`Class`) 
from passengers p
inner join voucher v on (p.idPassengers = v.Passenger_idPassenger)
inner join flight f on (f.idFlight = v.Flight_idFlight)
where f.idFlight = id ;
 
 -- declare NOT FOUND handler
 DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET v_finished = 1;
 
 OPEN priority_cursor;
 get_priority: LOOP
 FETCH priority_cursor INTO v_idp, v_fnp , v_priority;
 IF v_finished = 1 THEN 
 LEAVE get_priority;
 END IF;
 
 -- build email list
 SET priority_list = CONCAT(v_idp,"/",v_fnp ,"/",v_priority ,";",priority_list);
 
 END LOOP get_priority;
 
 CLOSE priority_cursor;
 
END$$
DELIMITER ;
