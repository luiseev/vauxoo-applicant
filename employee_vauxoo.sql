-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee_hobby (
    id INT, 
    name VARCHAR(30),
    description VARCHAR(100),
    PRIMARY KEY(id)
);

CREATE TABLE employee_department (
    id INT, 
    name VARCHAR(30),
    description VARCHAR(100),
    PRIMARY KEY(id)
);

CREATE TABLE employee (
    id INT, 
    id_boss INT,
    id_dep INT, 
    first_name VARCHAR(30), 
    last_name VARCHAR(30),
    PRIMARY KEY(id),
    FOREIGN KEY (id_dep) REFERENCES employee_department(id)
);

CREATE TABLE employees_hobbies_rel (
    id_emp INT,
    id_hobby INT,
    PRIMARY KEY (id_emp, id_hobby),
    FOREIGN KEY (id_emp) REFERENCES employee(id),
    FOREIGN KEY (id_hobby) REFERENCES employee_hobby(id)
);

INSERT INTO employee_department VALUES(1,'Talento Humano','Departamento encargado del control del capital humano de la empresa');
INSERT INTO employee_department VALUES(2,'Contabilidad y Finanzas', 'Departamento encargado del manejo de las finanzas de la empresa');
INSERT INTO employee_department VALUES(3, 'Ventas', ' Departamento encargado de las ventas de los productos de la empresa');
INSERT INTO employee_department VALUES(4, 'Soporte Tecnico', 'Departamento encargado del soporte interno al usuario');
INSERT INTO employee_department VALUES(5, 'Sistemas', 'Departamento encargado del desarrollo y mantenimiento de sistemas de información');
INSERT INTO employee_department VALUES(6, 'Almacen', 'Departamento encargado del manejo de los productos en almacen');

INSERT INTO employee VALUES(1,NULL,1,'Pedro','Perez');
INSERT INTO employee VALUES(2,1,2,'Juan','Gonzalez');
INSERT INTO employee VALUES(3,1,3,'Maria','Martinez');
INSERT INTO employee VALUES(4,1,5,'Luis','Escobar');

INSERT INTO employee_hobby VALUES(1, 'Ping Pong', 'Jugar Ping Pong en las horas Libres');
INSERT INTO employee_hobby VALUES(2, 'Ajedrez', 'Jugar Ajedrez');
INSERT INTO employee_hobby VALUES(3, 'GYM', 'Ir al GYM');

INSERT INTO employees_hobbies_rel VALUES(1,1);
INSERT INTO employees_hobbies_rel VALUES(1,2);
INSERT INTO employees_hobbies_rel VALUES(2,3);
INSERT INTO employees_hobbies_rel VALUES(2,2);
INSERT INTO employees_hobbies_rel VALUES(3,3);
INSERT INTO employees_hobbies_rel VALUES(3,2);
INSERT INTO employees_hobbies_rel VALUES(4,1);
INSERT INTO employees_hobbies_rel VALUES(4,2);

-- ...
