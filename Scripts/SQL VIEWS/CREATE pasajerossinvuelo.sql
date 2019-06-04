-- seleccionar los ids de los pasajeros que no tienen vuelos asignados 
create view `pasajerossinvuelo` as 
select p.idPassengers from flight f inner join voucher v on (f.idFlight = v.Flight_idFlight)
RIGHT join passengers p on (p.idPassengers = v.Passenger_idPassenger)
WHERE v.Passenger_idPassenger IS NULL;
