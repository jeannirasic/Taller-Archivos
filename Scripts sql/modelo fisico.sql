CREATE TABLE TIPO_PERSONA(
    id_tipo_persona NUMBER PRIMARY KEY,
    nombre_tipo_persona VARCHAR2(20) NOT NULL
);

CREATE TABLE PERSONA(
    id_persona NUMBER PRIMARY KEY,
    dpi_persona VARCHAR2(13) NOT NULL,
    nit_persona VARCHAR2(15) NOT NULL,
    nombre_persona VARCHAR2(50) NOT NULL,
    sexo_persona CHAR(1) NOT NULL,
    edad_persona NUMBER NOT NULL,
    correo_persona VARCHAR2(50) NOT NULL,
    telefono_persona VARCHAR2(8) NOT NULL,
    direccion_persona VARCHAR2(200) NOT NULL,
    conocido_artista CHAR(1) NULL,
    id_tipo_persona_persona NUMBER NOT NULL,
    CONSTRAINT fk_id_tipo_persona_persona FOREIGN KEY (id_tipo_persona_persona) REFERENCES TIPO_PERSONA(id_tipo_persona) ON DELETE CASCADE,
    vendedor_cliente NUMBER NULL,
    CONSTRAINT fk_vendedor_cliente FOREIGN KEY(vendedor_cliente) REFERENCES PERSONA(id_persona) ON DELETE CASCADE
);

CREATE TABLE EXPOSICION(
    id_exposicion NUMBER PRIMARY KEY,
    tipo_exposicion VARCHAR2(11) NOT NULL,
    tema_exposicion VARCHAR2(200) NULL,
    id_artista NUMBER NULL,
    CONSTRAINT fk_id_artista FOREIGN KEY(id_artista) REFERENCES PERSONA(id_persona) ON DELETE CASCADE,
    fecha_exposicion DATE NOT NULL
);

CREATE TABLE INVITACION(
    id_invitacion NUMBER PRIMARY KEY,
    id_exposicion_invitacion NUMBER NOT NULL,
    CONSTRAINT fk_id_exposicion_invitacion FOREIGN KEY(id_exposicion_invitacion) REFERENCES EXPOSICION(id_exposicion) ON DELETE CASCADE,
    id_persona_invitacion NUMBER NOT NULL,
    CONSTRAINT fk_id_persona_invitacion FOREIGN KEY (id_persona_invitacion) REFERENCES PERSONA(id_persona) ON DELETE CASCADE
);

CREATE TABLE PIEZA(
    id_pieza NUMBER PRIMARY KEY,
    precio_solicitado FLOAT NOT NULL,
    estado_pieza VARCHAR2(10) NOT NULL,
    fecha_ingreso_pieza DATE NOT NULL,
    titulo_pieza VARCHAR2(200) NOT NULL,
    anio_creacion_pieza NUMBER NOT NULL,
    tipo_pieza VARCHAR2(100) NOT NULL,
    medio_pieza VARCHAR2(100) NOT NULL,
    estilo_pieza VARCHAR2(100) NOT NULL,
    id_artista_pieza NUMBER NOT NULL,
    CONSTRAINT fk_id_artista_pieza FOREIGN KEY (id_artista_pieza) REFERENCES PERSONA(id_persona) ON DELETE CASCADE,
    id_coleccionista_pieza NUMBER NULL,
    CONSTRAINT fk_id_coleccionista_pieza FOREIGN KEY (id_coleccionista_pieza) REFERENCES PERSONA(id_persona) ON DELETE CASCADE,
    ancho_pieza FLOAT NOT NULL,
    alto_pieza FLOAT NOT NULL,
    profundidad_pieza FLOAT NOT NULL,
    id_exposicion_pieza NUMBER NOT NULL,
    CONSTRAINT fk_id_exposicion_pieza FOREIGN KEY (id_exposicion_pieza) REFERENCES EXPOSICION(id_exposicion) ON DELETE CASCADE
);

CREATE TABLE VENTA(
    id_venta NUMBER PRIMARY KEY,
    fecha_venta DATE NOT NULL,
    total_venta FLOAT NOT NULL,
    nombre_cliente_venta VARCHAR2(50) NOT NULL,
    nit_venta VARCHAR2(15) NOT NULL,
    direccion_venta VARCHAR2(200) NOT NULL,    
    id_comprador_venta NUMBER NOT NULL,
    CONSTRAINT fk_comprador_venta FOREIGN KEY(id_comprador_venta) REFERENCES PERSONA(id_persona) ON DELETE CASCADE,
    comision_venta FLOAT NOT NULL
);

CREATE TABLE DETALLE_VENTA(
    id_detalle_venta NUMBER PRIMARY KEY,
    id_venta_detalle NUMBER NOT NULL,
    CONSTRAINT fk_id_venta_detalle FOREIGN KEY (id_venta_detalle) REFERENCES VENTA(id_venta) ON DELETE CASCADE,
    precio_venta FLOAT NOT NULL,
    id_pieza_detalle NUMBER NOT NULL,
    CONSTRAINT fk_id_pieza_detalle FOREIGN KEY (id_pieza_detalle) REFERENCES PIEZA(id_pieza) ON DELETE CASCADE
);

--TRIGGERS SUMA Y RESTA AL TOTAL------------------------------------------------------------------------------------------------

CREATE OR REPLACE TRIGGER SUMAR_TOTAL
AFTER INSERT ON DETALLE_VENTA
FOR EACH ROW 
BEGIN
    UPDATE VENTA 
        SET total_venta = (total_venta + :NEW.precio_venta)
        WHERE VENTA.id_venta = :NEW.id_venta_detalle;
END;
/

CREATE OR REPLACE TRIGGER RESTAR_TOTAL 
BEFORE DELETE ON DETALLE_VENTA
FOR EACH ROW 
DECLARE
   PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN
    UPDATE VENTA 
        SET total_venta = (total_venta - :OLD.precio_venta)
        WHERE VENTA.id_venta = :OLD.id_venta_detalle;
    COMMIT;
    
    EXCEPTION WHEN OTHERS THEN NULL;
END;
/


--ELIMINACION DE TABLAS COMPLETAS-----------------------------------------------------------------------------------------------
DROP TABLE DETALLE_VENTA;
DROP TABLE VENTA;
DROP TABLE PIEZA;
DROP TABLE INVITACION;
DROP TABLE EXPOSICION;
DROP TABLE PERSONA;
DROP TABLE TIPO_PERSONA;




    
    
    
    
    
    
    
    