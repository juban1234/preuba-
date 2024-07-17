create database count;
use count;

-- ejemplo de la funcion count

CREATE TABLE empleados (
id INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50),
departamento VARCHAR(50),
salario DECIMAL(10, 2)
);

INSERT INTO empleados (nombre, departamento, salario) VALUES ('Juan', 'Ventas', 2500.00),
('María', 'Ventas', 2800.00), ('Pedro', 'Marketing', 3000.00), ('Elena', 'Marketing', 3200.00),
('Sofía', 'Ventas', 2700.00);

SELECT COUNT(*) AS total_empleados FROM empleados;

SELECT COUNT(*) AS total_ventas FROM empleados WHERE departamento = 'Ventas';