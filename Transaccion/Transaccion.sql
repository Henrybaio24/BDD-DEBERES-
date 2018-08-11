create database Transaccion;
use Transaccion;

create table Persona 
(
	id int not null auto_increment,
    nombre varchar (20),
    apellido varchar(15),
    direccion varchar(50),
    cedula varchar(10),
    primary key (id)
);

create table Empresa
(
	id int not null auto_increment,
	nombre varchar (20),
	direccion varchar (20),
	ciudad varchar (15),
    primary key (id)
);

insert into Persona (nombre, apellido, direccion, cedula)values('Juan','Alvarez','La Magdalena','1724229006');
insert into Persona (nombre, apellido, direccion, cedula)values('Andres','Alvear','La Mena','1724229406');
insert into Persona (nombre, apellido, direccion, cedula)values('Adrian','Agreda','San Roque','1724250006');

insert into Empresa (nombre, direccion, ciudad)values('Pintuco','La Magdalena Alta','Quito');


select * from Persona; 

select * from Empresa;




/*TRANSACCIONES*/

/*Comienzo de la Transaccion*/
start transaction; 
/*Operacion que se quiere hacer INSERT */
insert into Persona (nombre, apellido, direccion, cedula)
values('Maria','Taco','La Ronda','1744129006');

insert into Empresa (nombre, direccion, ciudad)
values('Pintulac','La Gatazo','Quito');
/*Permite cancelar instrucciones hechas al inicio*/
rollback;
/*Con esto se demuestra que la transaccion sea permanente*/
commit;



/*Comienzo de la Transaccion*/
start transaction; 
/*Operacion que se quiere hacer UPDATE*/
update Persona set nombre='Alex' where id = 2;
/*Permite cancelar instrucciones hechas al inicio*/
rollback;
/*Con esto se demuestra que la transaccion sea permanente*/
commit;




/*Comienzo de la Transaccion*/
start transaction; 
/*Operacion que se quiere hacer DELETE*/
delete from Persona where id = 2;
delete from Empresa where id = 1;
/*Permite cancelar instrucciones hechas al inicio*/
rollback;
/*Con esto se demuestra que la transaccion sea permanente*/
commit;





