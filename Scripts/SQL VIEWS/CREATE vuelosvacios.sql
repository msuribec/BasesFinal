-- Seleccionar los vuelos(id) que no tengan pasajeros asignados (vuelos vacíos)
create view `vuelos vacios` as
select distinct f.idFlight from flight f 
left join voucher v on ( f.idFlight= v.Flight_idFlight)
where v.Flight_idFlight is NULL;
