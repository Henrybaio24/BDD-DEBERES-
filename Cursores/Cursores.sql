create database Cursore;
use Cursore;

create table Persona
(
	id int not null auto_increment,
    nombre varchar (10),
    edad int,
    primary key (id)
);


insert into Persona (nombre, edad)values('Maria', 18);
insert into Persona (nombre, edad)values('Juan', 11);
insert into Persona (nombre, edad)values('Lucas', 19);
insert into Persona (nombre, edad)values('Eduardo', 23);
insert into Persona (nombre, edad)values('Gabriela', 21);


/*FUNCION PARA CALCULAR EL PROMEDIO DE LAS EDADES*/
delimiter $
create function getPromedio() returns int /*Creamos la funcion para sacar el promedio y retornamos un valor entero*/
deterministic
reads sql data
begin /*Inicializamos*/
	declare suma int; /*Declaramos las variables*/
    declare total int; /*Declaramos las variables*/
    declare _edad int; /*Declaramos las variables*/
    declare i int; /*Declaramos las variables*/
    declare c1 cursor for select edad from Persona; /*Declaramos el cursor para la consulta que querramos hacer*/
    
    
    set suma = 0; /*Inicializamos las variables*/
    set i = 1; /*Inicializamos las variables*/
    set total = 0; /*Inicializamos las variables*/
    
    select count(*) into total from Persona;/*Contar todos los registros de la tabla persona y guardamos en total*/
    
	open c1; /*Abrimos nuestro cursor*/
    while i<= total do
		fetch c1 into _edad;
        set suma = suma + _edad;
        set i = i+1;
	end while;
    close c1;/*Cerramos nuestro cursor*/
    
    return suma / total; /*Retornamos la suma y el total que vendria hacer el promedio*/
    
    end /*Cerramos la Inicializacion*/
    $
    
    select * from Persona;
    
    
  
    





