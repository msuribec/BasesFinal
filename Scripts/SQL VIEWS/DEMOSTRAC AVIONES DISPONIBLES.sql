-- DEMOSTRACIÓN DE QUE LA CONSULTA DE AVIONES ESTÁ BIEN

-- traer aviones que no están siendo usados en vuelos AVIONES DISPONIBLES
select count( distinct p.idplane) from flight f 
right join plane p on ( f.plane_idPlane=  p.idplane)
where f.plane_idPlane is NULL;

-- numeroo de planes usados en vuelos
select  count(distinct plane_idPlane) from  flight;

-- numero total de aviones
select count(distinct idplane) from  plane;

