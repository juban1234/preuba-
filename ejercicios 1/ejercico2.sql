create database practica2;
use practica2;

create table gente(
nombre varchar (45) key,
fecha date default '2020-02-02',
edad int default 0);

insert into gente(nombre,fecha,edad) values ('shiro4','2008-11-01',15);

select * from gente;

insert into gente(nombre,fecha,edad) values ('maria',default,default);

-- para activar el update o delete.
set sql_safe_updates=0;

update gente set fecha= '2024-07-17';

update gente set edad=edad + 10;

update gente set edad =35 , fecha = '2012-12-12' where nombre = 'jose';

update gente set fecha = '2012-12-12' where edad > 30;

-- eliminar un regitro especificio
delete from gente where nombre = 'shiro';

-- eliminar barios registros con condiciones

delete from gente where edad >=35 and edad <= 50;

-- truncate se usa para borrar todos los registros
truncate gente;

SELECT   COUNT(*) AS gente FROM gente;

select count(*) AS gente from gente;

-- ejercicio de length, el length se usa para poder determinar el numero de caracteres especificos en un dato de una tabla
select substring(nombre, 1, 5) as primeros_5_caracteres,LENGTH(SUBSTRING(nombre, 1, 5)) as longitud_primeros_5 FROM gente;

-- ejercio de la funcion date ,el date se usaa para poder especificar las fechas
create table pedidos(
id int primary key,
fecha_pedido date,
total decimal(10,2));

insert into pedidos(id,fecha_pedido,total)values (1,'2024-12-12',8);

select id ,fecha_pedido,day(fecha_pedido) as diaDelPedido from pedidos;

-- ejercicio de AVG se usa para sacar el promedio de una tabla

create table empleados(
id_empleado int auto_increment primary key,
nombre varchar(30),
ventas int default 0 );

SELECT AVG(ventas) FROM empleados;

insert into empleados(nombre,ventas)values('juan',65),('pepe',default),('miguel',13);

-- ejemplo de date , la funcion date se usa para manipular datos de tipo fecha 

select * from

-- time


