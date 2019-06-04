<h1 style="text-align: center;">Proyecto bases de datos</h1>
<p style="text-align: center;">por : Mar&iacute;a Sof&iacute;a Uribe C. , Camila Barona , C.Isabel graciano V.</p>
<p>&nbsp;</p>
<h2>Descripci&oacute;n natural del proyecto</h2>
<h2>Manual t&eacute;cnico</h2>
<h3>Orden de carga de las clases&nbsp;</h3>
<ol>
<li>Timezone</li>
<li>Coordinates</li>
<li>Country</li>
<li>Plane</li>
<li>Airline</li>
<li>City</li>
<li>Passenger</li>
<li>Airport</li>
<li>Flight</li>
<li>Voucher</li>
</ol>
<h3>Funciones</h3>
<ol style="list-style-type: lower-alpha;">
<li><strong>passengerPriority:&nbsp;</strong>Funci&oacute;n que dependiendo de la edad y clase del pasajero devuelve una cadena de caracteres "ALTO", "MEDIO" o "BAJO" que significa la prioridad que tiene ese pasajero al abordar</li>
</ol>
<h3>Procedures</h3>
<ol>
<li><strong>findpriority:&nbsp;</strong>Procedure que mediante un cursor concatena los ids, nombres y prioridades de cada uno de los pasajeros de un vuelo dado.Recibe como par&aacute;metros el id del vuelo y la cadena de caracteres donde se guarda el resultado</li>
<li><strong>build_email_list:</strong> Procedure que mediante un cursor concatena los emails de cada pasajero de un vuelo dado.Recibe como par&aacute;metros el id del vuelo y la cadena de caracteres donde se guarda el resultado</li>
<li><strong>deleteAirline: </strong>Procedure &nbsp;que elimina una aerolinea dado un id.Recibe como par&aacute;metros el id de la aerolinea</li>
<li><strong>deleteAirport: </strong>Procedure &nbsp;que elimina un aeropuerto dado un id.Recibe como par&aacute;metros el id del aeropuerto</li>
<li><strong>deleCity:&nbsp;</strong>Procedure que elimina una ciudad dado un id.Recibe como par&aacute;metros el id de la ciudad</li>
<li><strong>deleteCoordinates:</strong></li>
<li><strong>deleteCountry:</strong></li>
<li><strong>deleteFlight:</strong></li>
<li><strong>deletePassengers:</strong></li>
<li><strong>deletePlane:</strong></li>
<li><strong>deleteTimezone:</strong></li>
<li><strong>deleteVoucher:</strong></li>
</ol>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
