CREATE DATABASE empresa;
USE empresa;

CREATE TABLE IF NOT EXISTS personas (
                        id_personas int NOT NULL auto_increment, 
                        ApyN varchar(50), 
                        email varchar(20), 
                        telefono varchar(20), 
                        dni int NOT NULL, 
                        PRIMARY KEY  (id_personas) 
                        );

CREATE TABLE  IF NOT EXISTS clientes (
                        id_clientes int NOT NULL auto_increment, 
                        tarjeta int, 
                        credito int, 
                        id_personas int,
                        PRIMARY KEY  (id_clientes),
                        FOREIGN KEY (id_personas) REFERENCES personas (id_personas) 
                        );
                    
CREATE TABLE IF NOT EXISTS facturas (
                        id_factura int NOT NULL auto_increment,
                        cod_fact varchar(20) NOT NULL, 
                        total int, 
                        id_clientes int,
                        PRIMARY KEY (id_factura),
                        FOREIGN KEY (id_clientes) REFERENCES clientes (id_clientes)
                        );

CREATE TABLE IF NOT EXISTS empleados (
                        id_empleado int NOT NULL auto_increment, 
                        categoria varchar(20), 
                        sueldo int, 
                        id_personas int,
                        PRIMARY KEY (id_empleado),
                        FOREIGN KEY (id_personas) REFERENCES personas (id_personas) 
                        );

INSERT INTO personas (dni, ApyN, telefono, email)
    VALUES  (5555555, 'ricardo fort', 11445566, 'unemadom@gmail.com'),
            (3789456 , 'juliano nose',  11223344,'banana@gmail.com'),
            (7777666, 'kerry kopel', 11778899, 'nose@gmail.com'),
            (8989898, 'adriel garcia', 11998899, 'tampocose@gmail.com'),
            (5555444, 'hollow knight', 1122456, 'albino@gmail.com');
    








/*CREATE TABLE IF NOT EXISTS productos (
                        id_prod int NOT NULL auto_increment,
                        precio int, 
                        stock int,
                        );















///* ALTER TABLE clientes ADD CONSTRAINT id_clientes PRIMARY KEY (id_clientes);
ALTER TABLE personas ADD CONSTRAINT dni PRIMARY KEY (dni);
ALTER TABLE empleados ADD CONSTRAINT id_empleado PRIMARY KEY (id_empleado);
ALTER TABLE facturas ADD CONSTRAINT n_Factura PRIMARY KEY (n_Factura);


ALTER TABLE clientes ADD CONSTRAINT dni FOREIGN KEY (dni) REFERENCES personas (dni);
ALTER TABLE facturas ADD CONSTRAINT id_clientes FOREIGN KEY (id_clientes) REFERENCES clientes (id_clientes);
ALTER TABLE empleados ADD CONSTRAINT dni FOREIGN KEY (id_clientes) REFERENCES personas (dni);






// ALTER TABLE nombre.tabla ADD CONSTRAINT nombre_campo PRIMARY KEY (nombre_campo); 
(crear la relacion / llave primaria)//
// ALTER TABLE nombre.tabla ADD CONSTRAINT nombre_campo FOREIGN KEY (nombre_campo);
(llave secundaria)//