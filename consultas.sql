-- int not null 

create database prueva1;
use prueva1;

CREATE TABLE Cargo (
    id_cargo INT PRIMARY KEY,
    nom_cargo VARCHAR(100) NOT NULL
);

CREATE TABLE Departamento (
    id_dep int primary key,
    nom_dep VARCHAR(100) NOT NULL,
    ciudad_dep VARCHAR(100) NOT NULL,
    director_dep INT
);   

create table empleados(
    id_em INT PRIMARY KEY,
    nombre_em VARCHAR(100) NOT NULL,
    sex_em CHAR(1) NOT NULL,
    fecha_nac_em DATE NOT NULL,
    fecha_incorporacion_em DATE NOT NULL,
    salario_em float,
    cargo_em INT,
     id_jefe_em INT,
     fk_depertamento INT not null,
    FOREIGN KEY (fk_depertamento) REFERENCES Departamento(id_dep),
    FOREIGN KEY (cargo_em) REFERENCES Cargo(id_cargo)
    );
    

insert into Cargo (id_cargo,nom_cargo)values(1,'Gerente'),(2,'Director'),(3,'Jefe Ventas'),
(4,'Investigador'),(5,'Jefe Mercadeo'),(6,'Vendedor'),
(7,'Jefe Mecanicos'),(8,'Mecanico'),(9,'Asesor'),
(10,'Secretaria'),(11,'Tecnico');

insert into Departamento(id_dep,nom_dep,ciudad_dep,director_dep)values
(1000,'GERENCIA', 'CALI' ,31840269),
(1500,'PRODUCCIÓN', 'CALI' ,16211383),
(2000,'VENTAS' ,'CALI', 31178144),
(3000,'INVESTIGACION','CALI',16759060),
(3500,'MERCADEO','CALI',22222222),
(2100,'VENTAS','POPAYAN',31751219),
(2200,'VENTAS','BUGA',768782),
(2300,'VENTAS','CARTAGO',737689),
(4000,'MANTENIMIENTO','CALI',333333333),
(4100,'MANTENIMIENTO','POPAYAN',888888),
(4200,'MANTENIMIENTO','BUGA',11111111),
(4300,'MANTENIMIENTO','CARTAGO',444444);

INSERT INTO empleados (id_em  ,nombre_em,sex_em , fecha_nac_em , fecha_incorporacion_em , salario_em ,cargo_em ,id_jefe_em ,fk_depertamento ) VALUES
(31840269, 'María Rojas', 'F', '1959-01-15', '1990-05-16', 6250000.00, 1, NULL, '1000'),
(16211383, 'Luis Pérez', 'M', '1956-02-25', '2000-01-01', 5500000.00, 2, 31840269, '1500'),
(31178184, 'Rosa Anquiao', 'F', '1976-03-15', '1998-08-16', 3250000.00, 3, 31840269, '2000'),
(22222222, 'Dario Casas', 'M', '1967-11-05', '2005-07-16', 4500000.00, 4, 31840269, '3000'),
(17851219, 'Melissa Roa', 'F', '1966-06-19', '2001-03-16', 2250000.00, 5, 31178184, '2100'),
(76876877, 'Joaquín Rosas', 'M', '1968-07-07', '2002-06-18', 2950000.00, 6, 31178184, '2200'),
(73763789, 'Mario Llano', 'M', '1945-08-30', '1986-06-15', 3250000.00, 7, 31178184, '2300'),
(33333333, 'Elisa Rojas', 'F', '1980-09-28', '2004-06-01', 5000000.00, 8, 31840269, '4000'),
(88888888, 'Iván Duarte', 'M', '1956-08-12', '1998-05-16', 1050000.00, 9, 31840269, '4100'),
(22222221, 'Hernie Díaz', 'M', '1951-11-14', '1998-05-16', 1050000.00, 10, 31840269, '4200'),
(44444421, 'Abel Gómez', 'M', '1952-03-24', '1998-05-16', 1050000.00, 11, 31840269, '4300'),
(19707212, 'Josef Giraldo', 'M', '1967-12-30', '2000-01-16', 1250000.00, 11, 31840269, '4000'),
(11111112, 'Diana Solarte', 'F', '1959-11-15', '1993-11-16', 1200000.00, 10, 31840269, '3000'),
(55555555, 'Marcos Cortez', 'M', '1960-09-15', '1999-01-01', 1250000.00, 11, 31840269, '3000'),
(1130782, 'Antonio Gil', 'M', '1960-01-23', '2010-04-16', 8500000.00, 2, 31840269, '1500'),
(1313533, 'Marisol Pulido', 'F', '1966-08-05', '2014-01-16', 1200000.00, 2, 31840269, '4000'),
(1434082, 'Ana Moreno', 'F', '1960-09-05', '2000-08-16', 1300000.00, 2, 31840269, '3000'),
(1785120, 'Pedro Blanco', 'M', '1956-02-01', '2002-05-16', 1200000.00, 2, 31840269, '3000'),
(1785140, 'Jesús Alfineso', 'M', '1968-03-14', '2003-08-16', 8500000.00, 11, 31178184, '2100'),
(3333436, 'Carolina Ríos', 'F', '1971-09-15', '2005-01-02', 1200000.00, 2, 31840269, '1500'),
(33335537, 'Edith Muñoz', 'F', '1959-11-08', '2002-03-16', 800000.00, 6, 31178184, '2200'),
(113055, 'Julián Mora', 'M', '1980-07-03', '2008-10-16', 800000.00, 6, 31178184, '2300'),
(130666, 'Manuel Millán', 'M', '1960-12-08', '2004-06-01', 800000.00, 6, 31178184, '2300');

-- 1
select * from empleados;

-- 2
select * from Departamento;

-- 3
select * from empleados where cargo_em = 10;

-- 4
select nombre_em,salario_em from empleados;

-- 5
select * from empleados where cargo_em = 6 order by nombre_em ASC;

-- 6 
select nom_dep from Departamento;

-- 7
select nom_dep from Departamento order by nom_dep asc;

-- 8
select nom_dep from Departamento order by ciudad_dep asc;

-- 9
select nom_dep from Departamento order by ciudad_dep desc;

-- 10
SELECT e.nombre_em, c.nom_cargo FROM empleados e JOIN  Cargo c ON e.cargo_em = c.id_cargo  order by salario_em asc;

-- 11
SELECT e.nombre_em, c.nom_cargo FROM empleados e JOIN  Cargo c ON e.cargo_em = c.id_cargo order by cargo_em,salario_em asc;

-- 12
SELECT e.nombre_em, c.nom_cargo FROM empleados e JOIN  Cargo c ON e.cargo_em = c.id_cargo order by cargo_em desc;

-- 13
select nombre_em,salario_em from empleados where fk_depertamento = 2000 ;

-- 14 
select nombre_em,salario_em from empleados where fk_depertamento = 2000 order by salario_em asc;

-- 15 
SELECT nom_cargo FROM Cargo;

-- 16 
SELECT DISTINCT nom_cargo FROM Cargo ORDER BY nom_cargo ASC;

-- 17 
SELECT DISTINCT salario_em FROM empleados ORDER BY salario_em ASC;

-- 18
SELECT nombre_em, (salario_em + 500000) AS total_a_pagar FROM empleados WHERE fk_depertamento = 3000 ORDER BY nombre_em ASC;

-- 19
select nombre_em as empleados_con_sueldo_mayor_a_1000000 from empleados where salario_em > 1000000;

-- 20
select nombre_em as empleados_femeninos from empleados where   sex_em = "F" && salario_em <= 3500000;

-- 21 
SELECT  nombre_em AS Nombre_empleados, nom_cargo AS Cargo FROM empleados e JOIN Cargo c ON e.cargo_em = c.id_cargo;

-- 22
select nombre_em,salario_em from  empleados where  id_em > 19709802;

-- 23
select * from  empleados where salario_em < 1500000  && sex_em = "M"  ;
 
-- 24

SELECT e.nombre_em,c.nom_cargo, CASE WHEN e.nombre_em LIKE 'J%' THEN 'Grupo J' WHEN e.nombre_em LIKE '%Z' THEN 'Grupo Z' END AS Grupo FROM  empleados e 
JOIN Cargo c ON e.cargo_em = c.id_cargo WHERE e.nombre_em LIKE 'J%' OR e.nombre_em LIKE '%Z' ORDER BY   Grupo, e.nombre_em ASC;









