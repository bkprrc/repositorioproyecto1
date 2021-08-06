CREATE  TABLE parqueadero
(
    id_parqueadero SERIAL,
    num_parqueadero VARCHAR,
    matri_parqueadero BIGINT,
    coef_parqueadero FLOAT
)

CREATE TABLE mascota
(
    id_mascota SERIAL,
    raza_mascota VARCHAR,
    nombre_mascota VARCHAR,
    vacuna_mascota VARCHAR,
    especie_mascota VARCHAR,
    id_residente INTEGER,
    CONSTRAINT FK_PK_residente FOREIGN KEY Pk_residente FOREIGN KEY (id_residente) REFERENCES residente(id_residente)
)

INSERT INTO mascota (raza_mascota,nombre_mascota,vacuna_mascota,especie_mascota,
id_residente) VALUES ('Frespuder','Milu','si','perro','1')


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

INSERT INTO residente (id_residente,nombre_residente,apellido_residente,edad,religion,id_representante,
lugar_trabajo,EPS,tel_residente,vacuna,condicion_salud,correo_residente,estado_civil)
 VALUES ('94418008','Alexander','Corrales Granados','46','Adventista','N/A','ALMOTORES KIA SAMECO',
 'salud total','3162422831','NO','buena','Anlexyjesus@gmail.com','casado')

--Inserts (create)
INSERT INTO parqueadero 
(num_parqueadero, matri_parqueadero, coef_parqueadero)
 VALUES ('D10', '370568945', '12.48')

 --selects (read)
 SELECT num_parqueadero FROM parqueadero 
 WHERE id_parqueadero = '1'
 