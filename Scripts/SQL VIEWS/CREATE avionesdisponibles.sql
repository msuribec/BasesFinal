-- Seleccionar aviones (id) que no están siendo usados en vuelos
create view `avionesdisponibles` as
select distinct p.idplane from flight f 
right join plane p on ( f.plane_idPlane=  p.idplane)
where f.plane_idPlane is NULL;
