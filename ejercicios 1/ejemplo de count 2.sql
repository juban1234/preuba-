create database funciones;
use funciones;

-- ejemplo de funciones parabases de datos count

/*
select count(colum_name) 
from table_name 
where condicion
*/

create table estudiantes(
nombre varchar (45) key,
edad int default 0);

insert into estudiantes(nombre,edad)values('juan',5);
insert into estudiantes(nombre,edad)values('pepe',10);
insert into estudiantes(nombre,edad)values('jhoan',15);
insert into estudiantes(nombre,edad)values('maria',20);
insert into estudiantes(nombre,edad)values('jose',25);

select * from estudiantes;

-- sintaxis de count 
select count(*) as nombre_de_la_consulta from tabla_que_va_a_seleccionar where condicion;

-- ejemplos de count
select count(*) AS numero_estudiantes_mayores_10años from estudiantes WHERE edad >= 10;
select count(*) AS numero_estudiantes_entre_10_y_20_años from estudiantes WHERE edad >= 10 and edad <=20;
select count(*) AS numero_estudiantes_de_10_años from estudiantes WHERE edad = 10;


