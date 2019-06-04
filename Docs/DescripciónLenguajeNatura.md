El problema de la vida real el cual abordamos en nuestro proyecto final es la necesidad de los aeropuertos locales e 
internacionales de almacenar, procesar y consultar la información respectiva a vuelos, pasajeros, aviones, aerolineas y demás.

Por ende disponemos de la creación de una base de datos para el almacenamiento y el buen ordenamiento de la información, de la
siguiente manera: Un pasajero se reconoce por tener un id, first name, last name, email, travel id, telefono, edad y un country id
al cual pertenece. País se identifica con un id, un nombre, ISO2 e ISO3 y así mismo encontramos la ciudad en la cuál se encuentra el 
aeropuerto con un id, nombre y un id del pais. El aeropuerto posee como información un id, nombre, IATA, ICAO que son identificadores
determinados por la organización internacional de vuelos, el id de la ciudad donde se encuentra, las coordenadas de geolocalización, y 
su respectiva zona horaria. Las coordenas se componen de un id, latitud, longitud y altitud. Dentro de la información que guarda un 
aeropuerto disponemos de vuelos que se componen de id, id del avión, id de la aerolinea, id del origen y destino del vuelo, paradas o 
escalas que realiza y la fecha en la cual se realiza. Así mismo, los pasajeros disponen de tiquetes para identificar su vuelo, dentro de
este encontramos un id del tiquete, la clase en la cual viaja, el numero del asiento, el id del pasajero y el id del vuelo. 
