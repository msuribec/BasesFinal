-- seleccionar los vuelos (id) que están llenos y la capacidad de su avión
Create view  `vuelosllenos` as
select f.idFlight , p.Capacity 
from plane p inner join flight f on (p.idplane = f.plane_idPlane)
where p.Capacity = (select count(idVoucher) from 
plane pl inner join flight f1 on (pl.idplane = f1.plane_idPlane) 
inner join voucher vo on (f1.idFlight = vo.Flight_idFlight)
where f1.idFlight = f.idFlight);
