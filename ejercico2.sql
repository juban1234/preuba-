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