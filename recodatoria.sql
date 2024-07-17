create database ejemplo;
use ejemplo;

-- crear una tabla
create table ejemplo1(
nombre char(20),
fecha date);

-- mostrar las bases de datos
show databases;

-- borrar la base de datos 
drop database ejemplo;

/* muestreme las tablas 
creadas*/
show tables;

create table poblacion(
nombre varchar(30),
cant int not null);

insert into poblacion(nombre,cant) values('colombia',3224244);
insert into poblacion values('peru', 241234);
insert into poblacion (cant)values(32535);
insert into poblacion(nombre,cant) values('tolima',5356363),('calarca',56363),('salento',35663);

-- valores por defecto
create table ciudad(
id int auto_increment primary key,
nombre varchar(30),
poblacion int default 5000);

insert into ciudad(nombre,poblacion)
values ('armenia',default);

insert into ciudad(nombre,poblacion)
values ('filandia',575756);

select * from ciudad; 

desc ciudad;

-- ejercicio 

create table producto(
id int auto_increment primary key,
nombre varchar(50),
stock int not null);

insert into producto(nombre,stock) values('piña',21);
insert into producto(nombre,stock) values('papitas',1);
insert into producto(nombre,stock) values('tomate',8);


create table partido1(
equipos1 varchar(30),
goles int default 0);

insert into partido1(equipos1,goles)values ('barselona',default);
insert into partido1(equipos1,goles)values ('paingo',5),('colombia',1);

desc partido1;
desc producto;
show tables;

select * from partido1; 

-- crear clave primary compuesta

create table persona(
tipoDoc char (2),
Doc char(10),
nombre char (30),
primary key (tipoDoc,Doc));

desc persona;

create table clave(
id int auto_increment,
nombre char (30),
doc char(10),
primary key (id,nombre,doc));

desc clave;

insert into clave(nombre,doc) values('juan','afgrgrg');

-- indices

create table indice1(
id int,
nombre varchar(20),
index (nombre));

desc indice1;

-- indice 2 con key 

create table indice2(
id int,
nombre varchar(20),
key (nombre));

-- indice 3 unique

create table indice3(
id int,
nombre varchar(20),
unique (nombre));

desc indice3;

-- claves foreanas

create table persona2(
id_persona int auto_increment primary key,
nombre varchar(45),
fecha date
) engine=InnoDB;

create table telefono2(
numero varchar (20),
persona_id int not null,
key (numero),
foreign key(persona_id)references persona2 (id_persona)
on delete cascade on update cascade
)engine=InnoDB;

-- prueva 1

create table cliente (
id_cliente int auto_increment primary key,
nombre varchar(45),
fecha date
) engine=InnoDB;

create table adminin(
numero varchar (20),
admin_id int not null,
key (numero),
foreign key(admin_id)references cliente (id_cliente)
on delete cascade 
)engine=InnoDB;

-- ejemplo 3

create table personas3(
id_persona3 int auto_increment primary key,
nombre varchar (45),
fecha date)engine=InnoDB;

create table telefono3(
numero varchar(20),
person3_id int not null,
key(numero),
foreign key (person3_id)references personas3(id_persona3)
on delete restrict on update cascade)engine=InnoDB;

-- ejemplo 4

create table usuario2(
id_usuario2 int auto_increment primary key,
nombre varchar (45),
telefono varchar(30),
fecha date)engine=InnoDB;

create table adminn2(
nombre varchar(20),
usuario2_id int not null,
key(nombre),
foreign key (usuario2_id)references usuario2(id_usuario2)
on delete restrict on update cascade)engine=InnoDB;