create database Multiusuario;
use Multiusuario;


create table Persona
(
	id int not null auto_increment,
    nombre varchar(10), 
    apellido varchar (10),
    fecha  timestamp default current_timestamp
	on 
	update current_timestamp,
    primary key (id)
);


insert into Persona (nombre, apellido, fecha)values('Juane', 'Alez', now());
insert into Persona (nombre, apellido, fecha)values('Joshe', 'Artiga', now());

select * from Persona;


/*El cambio*/

use Multiusuario;

update Persona set nombre = 'Juan', apellido = 'Alvez' where id = 1 and fecha = '2018-08-05 20:44:18';

select * from Persona;