-- seleccionar la lista de pasajaeros(id, first name, last name ) y el vuelo al que pertenecen , 
-- incluyendo la lista de pasajeros sin vuelo asignado
-- (simula un outer join ya que no existe en mysql)
SELECT  distinct Flight_idFlight as vuelo, GROUP_CONCAT(CONCAT(`first name`, _utf8' ', `last name` , _utf8';', idPassengers) SEPARATOR ', ') as pasajeros
FROM 
(select Flight_idFlight, `first name` , `last name` , idPassengers 
from passengers P
LEFT JOIN voucher V on (v.Passenger_idPassenger = p.idPassengers)
UNION
select Flight_idFlight, `first name` , `last name` , idPassengers 
from passengers P
RIGHT JOIN voucher V on (v.Passenger_idPassenger = p.idPassengers)
)   AS t 
group by `Flight_idFlight`;