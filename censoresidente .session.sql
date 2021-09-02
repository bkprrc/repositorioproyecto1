CREATE  TABLE parqueadero
(
    id_parqueadero SERIAL,
    num_parqueadero VARCHAR,
    matri_parqueadero BIGINT,
    coef_parqueadero FLOAT
    CONSTRAINT PK_parqueadero PRIMARY KEY (id_parqueadero)
)

INSERT INTO parqueadero  
(num_parqueadero, matri_parqueadero, coef_parqueadero)
 VALUES ('D01','1477828390','24.45')

--selects (read)
 SELECT num_parqueadero FROM parqueadero WHERE num_parqueadero = 'D01'
 UPDATE parqueadero SET num_parqueadero = 'D04' WHERE num_parqueadero = 'D01'
 DELETE FROM parqueadero WHERE num_parqueadero= 'D01' 

CREATE TABLE mascota
(
    id_mascota SERIAL,
    raza_mascota VARCHAR,
    nombre_mascota VARCHAR,
    vacuna_mascota VARCHAR,
    especie_mascota VARCHAR,
    id_residente INTEGER,
    CONSTRAINT PK_mascota PRIMARY KEY (id_mascota),
    CONSTRAINT FK_PK_residente FOREIGN KEY (id_residente) REFERENCES residente(id_residente)
)

INSERT INTO mascota  
(raza_mascota, nombre_mascota, vacuna_mascota, especie_mascota, id_residente)
 VALUES ('Frespuder','Milu','si','perro','1')

 --selects (read)
 SELECT nombre_mascota FROM mascota WHERE nombre_mascota = 'Milu'
 UPDATE mascota SET nombre_mascota = 'Mil' WHERE nombre_mascota = 'Milu'
 DELETE FROM mascota WHERE nombre_mascota = 'Milu' 


SELECT * FROM residente 

CREATE TABLE residente
(
    id_residente SERIAL,
    nombre_residente VARCHAR,
    apellido_residente VARCHAR,
    edad INTEGER,
    religion VARCHAR,
    id_representante INTEGER,
    lugar_trabajo VARCHAR,
    EPS VARCHAR,
    tel_residente VARCHAR,
    vacuna VARCHAR,
    condicion_salud VARCHAR,
    correo_residente VARCHAR,
    estado_civil VARCHAR,
    CONSTRAINT PK_residente PRIMARY KEY (id_residente)
)

INSERT INTO residente  
(nombre_residente, apellido_residente, edad, religion, id_representante, lugar_trabajo, EPS, tel_residente, vacuna, condicion_salud, correo_residente, estado_civil)
 VALUES ('Alexander','Corrales Granados','46','Adventista', '1877290140','ALMOTORES KIA SAMECO','salud total','3162422831','NO','buena','Anlexyjesus@gmail.com','casado')

 --selects (read)
 SELECT apellido_residente FROM residente WHERE nombre_residente = 'Corrales Granados' 
 UPDATE residente SET apellido_residente = 'Cañon Garcia' WHERE apellido_residente = 'Corrales Granados'
 DELETE FROM residente WHERE apellido_residente = 'Corrales Granados' 

--------------------

INSERT INTO residente (id_residente,nombre_residente,apellido_residente,edad,religion,id_representante,
lugar_trabajo,EPS,tel_residente,vacuna,condicion_salud,correo_residente,estado_civil)
 VALUES ('94418008','Alexander','Corrales Granados','46','Adventista','N/A','ALMOTORES KIA SAMECO',
 'salud total','3162422831','NO','buena','Anlexyjesus@gmail.com','casado'),('38460748','Paula Andrea','Cañon Garcia','40','Adventista','N/A','FUNSEFS',
 'salud total','3164265697','NO','buena','Anlexyjesus@hotmail.com','casada')
-------------------

SELECT * FROM vehiculo  

CREATE TABLE vehiculo 
(
    id_vehiculo SERIAL,
    tipo_de_vehiculo VARCHAR,
    placa VARCHAR,
    color VARCHAR,
    marca VARCHAR,
    modelo VARCHAR,
    id_residente INTEGER
    CONSTRAINT PK_vehiculo PRIMARY KEY (id_vehiculo)
)

INSERT INTO vehiculo 
(tipo_de_vehiculo, placa, color, marca, modelo, id_residente)
 VALUES ('CAMIONETA', '23JK19', 'negro', 'TOYOTA', '2014', '178626527')

 --selects (read)
 SELECT marca FROM vehiculo WHERE marca = 'TOYOTA' 
 UPDATE vehiculo SET marca = 'MAZDA' WHERE marca = 'TOYOTA'
 DELETE FROM vehiculo WHERE marca = 'TOYOTA' 



SELECT * FROM apartamento 

CREATE TABLE apartamento 
(
    id_apartamento SERIAL,
    matricula_apartamento VARCHAR,
    num_apartamento VARCHAR,
    bloque VARCHAR,
     coeficiente INTEGER
    CONSTRAINT PK_vehiculo PRIMARY KEY (id_vehiculo)
)

INSERT INTO apartamento 
(matricula_apartamento, num_apartamento, bloque, coeficiente)
 VALUES ('19884639', '102', '7', '356,23')

 --selects (read)
 SELECT num_aparatamento FROM aparatamento WHERE num_apartamento = '102' 
 UPDATE apartamento SET num_apartamento = '104' WHERE num_apartamento = '102'
 DELETE FROM aparatamento WHERE num_apartamento  = '102' 


 SELECT * FROM propietario 

CREATE TABLE propietario 
(
    id_propietario SERIAL,
    tipo_id_propietario VARCHAR,
    num_identificacion VARCHAR,
    tel_propietario BIGINT,
    ocupacion VARCHAR,
    edad SMALLINT,
    nombre_propietario VARCHAR,
    apellido_propietario VARCHAR,
    vacuna BOOLEAN,
    razon_social VARCHAR,
    correo_propietario VARCHAR
    CONSTRAINT PK_propietario  PRIMARY KEY (id_propietario)
)

--Inserts (create)
INSERT INTO propietario 
(num_identificacion, tel_propietario, ocupacion, edad, nombre_propietario, apellido_propietario, vacuna, razon_social, correo_propietario)
 VALUES ('198372900', '315009820', 'FISIO TERAPEUTA', 'Frojolito', 'Gomes', 'NO', 'DOMI', 'Frijol.gomes@gmail.com')

 --selects (read)
 SELECT num_identificacion FROM propietario WHERE num_identificacion = '198372900' 
 UPDATE propietario SET num_identificacion = '1928374920' WHERE num_identificacion = '198372900'
 DELETE FROM propietario WHERE num_identificacion = '198372900' 


CREATE  TABLE aparatamento_propietario
(
    id_aparatamento_propietario SERIAL,
    id_aparatamento INTEGER,
    id_propietario INTEGER,
    CONSTRAINT PK_aparatamento_propietario PRIMARY KEY (id_aparatamento_propietario)
    CONSTRAINT FK_PK_aparatamento FOREIGN KEY (id_aparatamento) REFERENCES aparatamento(id_aparatamento),
    CONSTRAINT FK_PK_propietario FOREIGN KEY (id_propietario) REFERENCES propietario(id_propietario)
)


CREATE  TABLE parqueadero_propietario
(
    id_parqueadero_propietario SERIAL,
    id_parqueadero INTEGER,
    id_propietario INTEGER,
    CONSTRAINT PK_parqueadero_propietario PRIMARY KEY (id_parqueadero_propietario)
    CONSTRAINT FK_PK_parqueadero FOREIGN KEY (id_parqueadero) REFERENCES parqueadero(id_parqueadero),
    CONSTRAINT FK_PK_propietario FOREIGN KEY (id_propietario) REFERENCES propietario(id_propietario)
)


