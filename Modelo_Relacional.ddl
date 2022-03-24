-- Generado por Oracle SQL Developer Data Modeler 21.4.1.349.1605
--   en:        2022-03-24 12:05:06 COT
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE cargo (
    id_cargo     INTEGER NOT NULL,
    nombre_cargo VARCHAR2(50) NOT NULL
);

ALTER TABLE cargo ADD CONSTRAINT cargo_pk PRIMARY KEY ( id_cargo );

CREATE TABLE empleados (
    cc                    INTEGER NOT NULL,
    nombres               VARCHAR2(50),
    primer_apellido       VARCHAR2(50),
    segundo_apellido      VARCHAR2(50),
    fecha_de_contratacion DATE,
    edad                  INTEGER,
    sueldo                INTEGER,
    sede                  INTEGER,
    estrato               INTEGER,
    cargo                 INTEGER
);

ALTER TABLE empleados ADD CONSTRAINT empleados_pk PRIMARY KEY ( cc );

CREATE TABLE estrato (
    id_estrato     INTEGER NOT NULL,
    estrato_numero VARCHAR2(50) NOT NULL
);

ALTER TABLE estrato ADD CONSTRAINT estrato_pk PRIMARY KEY ( id_estrato );

CREATE TABLE sede (
    id_sede     INTEGER NOT NULL,
    nombre_sede VARCHAR2(50) NOT NULL
);

ALTER TABLE sede ADD CONSTRAINT sede_pk PRIMARY KEY ( id_sede );

ALTER TABLE empleados
    ADD CONSTRAINT empleados_cargo_fk FOREIGN KEY ( cargo )
        REFERENCES cargo ( id_cargo );

ALTER TABLE empleados
    ADD CONSTRAINT empleados_estrato_fk FOREIGN KEY ( estrato )
        REFERENCES estrato ( id_estrato );

ALTER TABLE empleados
    ADD CONSTRAINT empleados_sede_fk FOREIGN KEY ( sede )
        REFERENCES sede ( id_sede );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             4
-- CREATE INDEX                             0
-- ALTER TABLE                              7
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
