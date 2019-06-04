DELIMITER $$
CREATE DEFINER=`root`@`localhost` TRIGGER `voucher_BEFORE_INSERT` BEFORE INSERT ON `voucher` FOR EACH ROW BEGIN
DECLARE id INT DEFAULT 0;
DECLARE cap INT DEFAULT 0;
DECLARE pasajeros INT DEFAULT 0;
SET id=NEW.Flight_idFlight;
select count(idVoucher)  from 
flight f inner join voucher vo on (f.idFlight = vo.Flight_idFlight)
where f.idFlight = id 
into pasajeros;

select pl.Capacity  from 
plane pl inner join flight f on (pl.idplane = f.plane_idPlane) 
where f.idFlight = id
into cap;
IF cap = pasajeros
  THEN
   SIGNAL SQLSTATE '02000' SET MESSAGE_TEXT = 'Warning: this flight is at maximum capacity';
  END IF;
END
DELIMITER ;