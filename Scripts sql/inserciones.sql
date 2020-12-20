--TIPO PERSONA------------------------------------------------------------------------------------------------------------------
INSERT INTO TIPO_PERSONA VALUES(1, 'Artista');
INSERT INTO TIPO_PERSONA VALUES(2, 'Coleccionista');
INSERT INTO TIPO_PERSONA VALUES(3, 'Vendedor');
INSERT INTO TIPO_PERSONA VALUES(4, 'Cliente');

SELECT * FROM TIPO_PERSONA;

--PERSONA-----------------------------------------------------------------------------------------------------------------------
INSERT INTO PERSONA(id_persona, dpi_persona, nit_persona, nombre_persona, sexo_persona, edad_persona, correo_persona, telefono_persona, direccion_persona, conocido_artista, id_tipo_persona_persona) 
VALUES(1, '3001267360101', '1608452-1', 'Juan Perez', 'M', 25, 'juanperez@gmail.com', '12345671', 'Cuidad', '1', 1);
INSERT INTO PERSONA(id_persona, dpi_persona, nit_persona, nombre_persona, sexo_persona, edad_persona, correo_persona, telefono_persona, direccion_persona, conocido_artista, id_tipo_persona_persona) 
VALUES(2, '3001267360102', '1608452-2', 'Pablo Juarez', 'M', 30, 'pablojuarez@gmail.com', '12345672', 'Cuidad', '0', 1);
INSERT INTO PERSONA(id_persona, dpi_persona, nit_persona, nombre_persona, sexo_persona, edad_persona, correo_persona, telefono_persona, direccion_persona, conocido_artista, id_tipo_persona_persona) 
VALUES(3, '3001267360103', '1608452-3', 'Luis Lopez', 'M', 28, 'luislopez@gmail.com', '12345673', 'Cuidad', '1', 1);
INSERT INTO PERSONA(id_persona, dpi_persona, nit_persona, nombre_persona, sexo_persona, edad_persona, correo_persona, telefono_persona, direccion_persona, conocido_artista, id_tipo_persona_persona) 
VALUES(4, '3001267360104', '1608452-4', 'Maria Paz', 'F', 21, 'mariapaz@gmail.com', '12345674', 'Cuidad', '0', 2);
INSERT INTO PERSONA(id_persona, dpi_persona, nit_persona, nombre_persona, sexo_persona, edad_persona, correo_persona, telefono_persona, direccion_persona, conocido_artista, id_tipo_persona_persona) 
VALUES(5, '3001267360105', '1608452-5', 'Alejandra Ruiz', 'F', 28, 'aleruiz@gmail.com', '12345675', 'Cuidad', '1', 2);

INSERT INTO PERSONA(id_persona, dpi_persona, nit_persona, nombre_persona, sexo_persona, edad_persona, correo_persona, telefono_persona, direccion_persona, id_tipo_persona_persona) 
VALUES(6, '3001267360106', '1608452-6', 'Oscar Ruiz', 'M', 25, 'oscarruiz@gmail.com', '12345676', 'Cuidad', 3);
INSERT INTO PERSONA(id_persona, dpi_persona, nit_persona, nombre_persona, sexo_persona, edad_persona, correo_persona, telefono_persona, direccion_persona, id_tipo_persona_persona) 
VALUES(7, '3001267360107', '1608452-7', 'Pablo Meza', 'M', 33, 'pablomeza@gmail.com', '12345677', 'Cuidad', 3);
INSERT INTO PERSONA(id_persona, dpi_persona, nit_persona, nombre_persona, sexo_persona, edad_persona, correo_persona, telefono_persona, direccion_persona, id_tipo_persona_persona) 
VALUES(8, '3001267360108', '1608452-8', 'Jose Paz', 'M', 22, 'josepaz@gmail.com', '12345678', 'Cuidad', 3);
INSERT INTO PERSONA(id_persona, dpi_persona, nit_persona, nombre_persona, sexo_persona, edad_persona, correo_persona, telefono_persona, direccion_persona, id_tipo_persona_persona) 
VALUES(9, '3001267360109', '1608452-9', 'Marta Lopez', 'F', 26, 'martalopez@gmail.com', '12345679', 'Cuidad', 3);
INSERT INTO PERSONA(id_persona, dpi_persona, nit_persona, nombre_persona, sexo_persona, edad_persona, correo_persona, telefono_persona, direccion_persona, id_tipo_persona_persona) 
VALUES(10, '3001267360110', '1608451-0', 'Julia Juarez', 'F', 21, 'juliajuarez@gmail.com', '12345610', 'Cuidad', 3);

INSERT INTO PERSONA(id_persona, dpi_persona, nit_persona, nombre_persona, sexo_persona, edad_persona, correo_persona, telefono_persona, direccion_persona, id_tipo_persona_persona, vendedor_cliente) 
VALUES(11, '3001267360111', '1608451-1', 'Elias Rodriguez', 'M', 25, 'eliasr@gmail.com', '12345611', 'Cuidad', 4, 6);
INSERT INTO PERSONA(id_persona, dpi_persona, nit_persona, nombre_persona, sexo_persona, edad_persona, correo_persona, telefono_persona, direccion_persona, id_tipo_persona_persona, vendedor_cliente) 
VALUES(12, '3001267360112', '1608451-2', 'Mark Beas', 'M', 33, 'markb@gmail.com', '12345612', 'Cuidad', 4, 6);
INSERT INTO PERSONA(id_persona, dpi_persona, nit_persona, nombre_persona, sexo_persona, edad_persona, correo_persona, telefono_persona, direccion_persona, id_tipo_persona_persona, vendedor_cliente) 
VALUES(13, '3001267360113', '1608451-3', 'Manuel Gomez', 'M', 40, 'manuelgomez@gmail.com', '12345613', 'Cuidad', 4, 7);
INSERT INTO PERSONA(id_persona, dpi_persona, nit_persona, nombre_persona, sexo_persona, edad_persona, correo_persona, telefono_persona, direccion_persona, id_tipo_persona_persona, vendedor_cliente) 
VALUES(14, '3001267360114', '1608451-4', 'Martin Giron', 'M', 60, 'martingiron@gmail.com', '12345614', 'Cuidad', 4, 7);
INSERT INTO PERSONA(id_persona, dpi_persona, nit_persona, nombre_persona, sexo_persona, edad_persona, correo_persona, telefono_persona, direccion_persona, id_tipo_persona_persona, vendedor_cliente) 
VALUES(15, '3001267360115', '1608451-5', 'Mateo Fernandez', 'M', 55, 'mateofer@gmail.com', '12345615', 'Cuidad', 4, 8);
INSERT INTO PERSONA(id_persona, dpi_persona, nit_persona, nombre_persona, sexo_persona, edad_persona, correo_persona, telefono_persona, direccion_persona, id_tipo_persona_persona, vendedor_cliente) 
VALUES(16, '3001267360116', '1608451-6', 'Elisa Juarez', 'F', 33, 'elisajuarez@gmail.com', '12345616', 'Cuidad', 4, 8);
INSERT INTO PERSONA(id_persona, dpi_persona, nit_persona, nombre_persona, sexo_persona, edad_persona, correo_persona, telefono_persona, direccion_persona, id_tipo_persona_persona, vendedor_cliente) 
VALUES(17, '3001267360117', '1608451-7', 'Magali Paz', 'F', 44, 'magalipaz@gmail.com', '12345617', 'Cuidad', 4, 9);
INSERT INTO PERSONA(id_persona, dpi_persona, nit_persona, nombre_persona, sexo_persona, edad_persona, correo_persona, telefono_persona, direccion_persona, id_tipo_persona_persona, vendedor_cliente) 
VALUES(18, '3001267360118', '1608451-8', 'Marta Juarez', 'F', 20, 'martajuarez@gmail.com', '12345618', 'Cuidad', 4, 9);
INSERT INTO PERSONA(id_persona, dpi_persona, nit_persona, nombre_persona, sexo_persona, edad_persona, correo_persona, telefono_persona, direccion_persona, id_tipo_persona_persona, vendedor_cliente) 
VALUES(19, '3001267360119', '1608451-9', 'Miriam Herrera', 'F', 28, 'miriamherrera@gmail.com', '12345619', 'Cuidad', 4, 10);
INSERT INTO PERSONA(id_persona, dpi_persona, nit_persona, nombre_persona, sexo_persona, edad_persona, correo_persona, telefono_persona, direccion_persona, id_tipo_persona_persona, vendedor_cliente) 
VALUES(20, '3001267360120', '1608452-0', 'Monica Sanchez', 'F', 35, 'monicasanchez@gmail.com', '12345620', 'Cuidad', 4, 10);

SELECT * FROM PERSONA;

--EXPOSICION--------------------------------------------------------------------------------------------------------------------
INSERT INTO EXPOSICION(id_exposicion, tipo_exposicion, id_artista, fecha_exposicion) 
VALUES('1', 'individual', 1, '27/sep/2014');
INSERT INTO EXPOSICION(id_exposicion, tipo_exposicion, tema_exposicion, fecha_exposicion) 
VALUES('2', 'colectiva', 'Visitas marinas del Atlantico', '27/sep/2015');
INSERT INTO EXPOSICION(id_exposicion, tipo_exposicion, id_artista, fecha_exposicion) 
VALUES('3', 'individual', 2, '27/sep/2016');
INSERT INTO EXPOSICION(id_exposicion, tipo_exposicion, tema_exposicion, fecha_exposicion) 
VALUES('4', 'colectiva', 'Fauna silvestre Guatemalteca', '27/sep/2017');
INSERT INTO EXPOSICION(id_exposicion, tipo_exposicion, id_artista, fecha_exposicion) 
VALUES('5', 'individual', 3, '27/sep/2018');
INSERT INTO EXPOSICION(id_exposicion, tipo_exposicion, tema_exposicion, fecha_exposicion) 
VALUES('6', 'colectiva', 'Ambiente urbano', '27/sep/2019');

SELECT * FROM EXPOSICION;

--INVITACION--------------------------------------------------------------------------------------------------------------------
INSERT INTO INVITACION VALUES(1, 1, 11);
INSERT INTO INVITACION VALUES(2, 2, 11);
INSERT INTO INVITACION VALUES(3, 3, 11);
INSERT INTO INVITACION VALUES(4, 4, 11);
INSERT INTO INVITACION VALUES(5, 5, 11);
INSERT INTO INVITACION VALUES(6, 6, 11);
INSERT INTO INVITACION VALUES(7, 1, 12);
INSERT INTO INVITACION VALUES(8, 2, 12);
INSERT INTO INVITACION VALUES(9, 3, 12);
INSERT INTO INVITACION VALUES(10, 4, 12);
INSERT INTO INVITACION VALUES(11, 5, 12);
INSERT INTO INVITACION VALUES(12, 6, 12);
INSERT INTO INVITACION VALUES(13, 1, 13);
INSERT INTO INVITACION VALUES(14, 2, 13);
INSERT INTO INVITACION VALUES(15, 3, 13);
INSERT INTO INVITACION VALUES(16, 4, 13);
INSERT INTO INVITACION VALUES(17, 5, 13);
INSERT INTO INVITACION VALUES(18, 6, 13);
INSERT INTO INVITACION VALUES(19, 1, 14);
INSERT INTO INVITACION VALUES(20, 2, 14);
INSERT INTO INVITACION VALUES(21, 3, 14);
INSERT INTO INVITACION VALUES(22, 4, 14);
INSERT INTO INVITACION VALUES(23, 5, 14);
INSERT INTO INVITACION VALUES(24, 6, 14);
INSERT INTO INVITACION VALUES(25, 1, 15);
INSERT INTO INVITACION VALUES(26, 2, 15);
INSERT INTO INVITACION VALUES(27, 3, 15);
INSERT INTO INVITACION VALUES(28, 4, 15);
INSERT INTO INVITACION VALUES(29, 5, 15);
INSERT INTO INVITACION VALUES(30, 6, 15);
INSERT INTO INVITACION VALUES(31, 1, 16);
INSERT INTO INVITACION VALUES(32, 2, 16);
INSERT INTO INVITACION VALUES(33, 3, 16);
INSERT INTO INVITACION VALUES(34, 4, 16);
INSERT INTO INVITACION VALUES(35, 5, 16);
INSERT INTO INVITACION VALUES(36, 6, 16);
INSERT INTO INVITACION VALUES(37, 1, 17);
INSERT INTO INVITACION VALUES(38, 2, 17);
INSERT INTO INVITACION VALUES(39, 3, 17);
INSERT INTO INVITACION VALUES(40, 4, 17);
INSERT INTO INVITACION VALUES(41, 5, 17);
INSERT INTO INVITACION VALUES(42, 6, 17);
INSERT INTO INVITACION VALUES(43, 1, 18);
INSERT INTO INVITACION VALUES(44, 2, 18);
INSERT INTO INVITACION VALUES(45, 3, 18);
INSERT INTO INVITACION VALUES(46, 4, 18);
INSERT INTO INVITACION VALUES(47, 5, 18);
INSERT INTO INVITACION VALUES(48, 6, 18);
INSERT INTO INVITACION VALUES(49, 1, 19);
INSERT INTO INVITACION VALUES(50, 2, 19);
INSERT INTO INVITACION VALUES(51, 3, 19);
INSERT INTO INVITACION VALUES(52, 4, 19);
INSERT INTO INVITACION VALUES(53, 5, 19);
INSERT INTO INVITACION VALUES(54, 6, 19);
INSERT INTO INVITACION VALUES(55, 1, 20);
INSERT INTO INVITACION VALUES(56, 2, 20);
INSERT INTO INVITACION VALUES(57, 3, 20);
INSERT INTO INVITACION VALUES(58, 4, 20);
INSERT INTO INVITACION VALUES(59, 5, 20);
INSERT INTO INVITACION VALUES(60, 6, 20);

SELECT * FROM INVITACION;

--PIEZA-------------------------------------------------------------------------------------------------------------------------
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(1, 1000, 'vendida', '1/sep/2014', 'Pintura 1', 2000, 'Pintura', 'Oleo', 'Contemporaneo', 1, 100, 100, 0, 1);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(2, 5000, 'exhibida', '2/sep/2014', 'Escultura 1', 2005, 'Escultura', 'Marmol', 'Impresionista', 1, 100, 100, 100, 1);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(3, 1000, 'exhibida', '3/sep/2014', 'Collage 1', 2003, 'Collage', 'Mixto', 'Folk', 1, 100, 100, 0, 1);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(4, 1000, 'exhibida', '1/sep/2014', 'Pintura 2', 2000, 'Pintura', 'Acuarela', 'Contemporaneo', 1, 100, 100, 0, 1);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(5, 5000, 'exhibida', '2/sep/2014', 'Escultura 2', 2005, 'Escultura', 'Marmol', 'Impresionista', 1, 100, 100, 100, 1);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(6, 1000, 'exhibida', '3/sep/2014', 'Collage 2', 2003, 'Collage', 'Mixto', 'Folk', 1, 100, 100, 0, 1);   
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(7, 1000, 'vendida', '1/sep/2015', 'Pintura 3', 2000, 'Pintura', 'Acrilico', 'Contemporaneo', 1, 100, 100, 0, 2);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(8, 5000, 'exhibida', '2/sep/2015', 'Escultura 3', 2005, 'Escultura', 'Marmol', 'Impresionista', 1, 100, 100, 100, 2);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(9, 1000, 'exhibida', '3/sep/2015', 'Collage 3', 2003, 'Collage', 'Mixto', 'Folk', 1, 100, 100, 0, 2);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(10, 1000, 'exhibida', '1/sep/2017', 'Pintura 4', 2000, 'Pintura', 'Oleo', 'Contemporaneo', 1, 100, 100, 0, 4);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(11, 5000, 'vendida', '2/sep/2017', 'Escultura 4', 2005, 'Escultura', 'Marmol', 'Impresionista', 1, 100, 100, 100, 4);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(12, 1000, 'exhibida', '3/sep/2017', 'Collage 4', 2003, 'Collage', 'Mixto', 'Folk', 1, 100, 100, 0, 4);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(13, 1000, 'exhibida', '1/sep/2019', 'Pintura 5', 2000, 'Pintura', 'Oleo', 'Contemporaneo', 1, 100, 100, 0, 6);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(14, 5000, 'exhibida', '2/sep/2019', 'Escultura 5', 2005, 'Escultura', 'Marmol', 'Impresionista', 1, 100, 100, 100, 6);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(15, 1000, 'vendida', '3/sep/2019', 'Collage 5', 2003, 'Collage', 'Mixto', 'Folk', 1, 100, 100, 0, 6);

INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(16, 1000, 'vendida', '1/sep/2016', 'Pintura 1', 2000, 'Pintura', 'Oleo', 'Contemporaneo', 2, 100, 100, 0, 3);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(17, 5000, 'exhibida', '2/sep/2016', 'Escultura 1', 2005, 'Escultura', 'Marmol', 'Impresionista', 2, 100, 100, 100, 3);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(18, 1000, 'exhibida', '3/sep/2016', 'Collage 1', 2003, 'Collage', 'Mixto', 'Folk', 2, 100, 100, 0, 3);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(19, 1000, 'exhibida', '1/sep/2016', 'Pintura 2', 2000, 'Pintura', 'Acuarela', 'Contemporaneo', 2, 100, 100, 0, 3);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(20, 5000, 'exhibida', '2/sep/2016', 'Escultura 2', 2005, 'Escultura', 'Marmol', 'Impresionista', 2, 100, 100, 100, 3);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(21, 1000, 'exhibida', '3/sep/2016', 'Collage 2', 2003, 'Collage', 'Mixto', 'Folk', 2, 100, 100, 0, 3);   
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(22, 1000, 'vendida', '1/sep/2015', 'Pintura 3', 2000, 'Pintura', 'Acrilico', 'Contemporaneo', 2, 100, 100, 0, 2);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(23, 5000, 'exhibida', '2/sep/2015', 'Escultura 3', 2005, 'Escultura', 'Marmol', 'Impresionista', 2, 100, 100, 100, 2);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(24, 1000, 'exhibida', '3/sep/2015', 'Collage 3', 2003, 'Collage', 'Mixto', 'Folk', 2, 100, 100, 0, 2);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(25, 1000, 'exhibida', '1/sep/2017', 'Pintura 4', 2000, 'Pintura', 'Oleo', 'Contemporaneo', 2, 100, 100, 0, 4);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(26, 5000, 'vendida', '2/sep/2017', 'Escultura 4', 2005, 'Escultura', 'Marmol', 'Impresionista', 2, 100, 100, 100, 4);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(27, 1000, 'exhibida', '3/sep/2017', 'Collage 4', 2003, 'Collage', 'Mixto', 'Folk', 2, 100, 100, 0, 4);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(28, 1000, 'exhibida', '1/sep/2019', 'Pintura 5', 2000, 'Pintura', 'Oleo', 'Contemporaneo', 2, 100, 100, 0, 6);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(29, 5000, 'exhibida', '2/sep/2019', 'Escultura 5', 2005, 'Escultura', 'Marmol', 'Impresionista', 2, 100, 100, 100, 6);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(30, 1000, 'vendida', '3/sep/2019', 'Collage 5', 2003, 'Collage', 'Mixto', 'Folk', 2, 100, 100, 0, 6);

INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(31, 1000, 'vendida', '1/sep/2018', 'Pintura 1', 2000, 'Pintura', 'Oleo', 'Contemporaneo', 3, 100, 100, 0, 5);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(32, 5000, 'exhibida', '2/sep/2018', 'Escultura 1', 2005, 'Escultura', 'Marmol', 'Impresionista', 3, 100, 100, 100, 5);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(33, 1000, 'exhibida', '3/sep/2018', 'Collage 1', 2003, 'Collage', 'Mixto', 'Folk', 3, 100, 100, 0, 5);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(34, 1000, 'exhibida', '1/sep/2018', 'Pintura 2', 2000, 'Pintura', 'Acuarela', 'Contemporaneo', 3, 100, 100, 0, 5);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(35, 5000, 'exhibida', '2/sep/2018', 'Escultura 2', 2005, 'Escultura', 'Marmol', 'Impresionista', 3, 100, 100, 100, 5);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(36, 1000, 'exhibida', '3/sep/2018', 'Collage 2', 2003, 'Collage', 'Mixto', 'Folk', 3, 100, 100, 0, 5);   
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(37, 1000, 'vendida', '1/sep/2015', 'Pintura 3', 2000, 'Pintura', 'Acrilico', 'Contemporaneo', 3, 100, 100, 0, 2);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(38, 5000, 'exhibida', '2/sep/2015', 'Escultura 3', 2005, 'Escultura', 'Marmol', 'Impresionista', 3, 100, 100, 100, 2);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(39, 1000, 'exhibida', '3/sep/2015', 'Collage 3', 2003, 'Collage', 'Mixto', 'Folk', 3, 100, 100, 0, 2);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(40, 1000, 'exhibida', '1/sep/2017', 'Pintura 4', 2000, 'Pintura', 'Oleo', 'Contemporaneo', 3, 100, 100, 0, 4);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(41, 5000, 'vendida', '2/sep/2017', 'Escultura 4', 2005, 'Escultura', 'Marmol', 'Impresionista', 3, 100, 100, 100, 4);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(42, 1000, 'exhibida', '3/sep/2017', 'Collage 4', 2003, 'Collage', 'Mixto', 'Folk', 3, 100, 100, 0, 4);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(43, 1000, 'exhibida', '1/sep/2019', 'Pintura 5', 2000, 'Pintura', 'Oleo', 'Contemporaneo', 3, 100, 100, 0, 6);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(44, 5000, 'exhibida', '2/sep/2019', 'Escultura 5', 2005, 'Escultura', 'Marmol', 'Impresionista', 3, 100, 100, 100, 6);
INSERT INTO PIEZA(id_pieza, precio_solicitado, estado_pieza, fecha_ingreso_pieza, titulo_pieza, anio_creacion_pieza, tipo_pieza, medio_pieza, estilo_pieza, id_artista_pieza, 
    ancho_pieza, alto_pieza, profundidad_pieza, id_exposicion_pieza) 
    VALUES(45, 1000, 'exhibida', '3/sep/2019', 'Collage 5', 2003, 'Collage', 'Mixto', 'Folk', 3, 100, 100, 0, 6);
    
SELECT * FROM PIEZA;

--VENTA-------------------------------------------------------------------------------------------------------------------------
INSERT INTO VENTA VALUES(1, '27/sep/2014', 0, 'Elias Rodriguez', '1608451-1', 'Ciudad', 11, 90);
INSERT INTO VENTA VALUES(2, '27/sep/2015', 0, 'Mark Beas', '1608451-2', 'Ciudad', 12, 270);
INSERT INTO VENTA VALUES(3, '27/sep/2016', 0, 'Manuel Gomez', '1608451-3', 'Ciudad', 13, 90);
INSERT INTO VENTA VALUES(4, '27/sep/2017', 0, 'Martin Giron', '1608451-4', 'Ciudad', 14, 1470);
INSERT INTO VENTA VALUES(5, '27/sep/2018', 0, 'Mateo Fernandez', '1608451-5', 'Ciudad', 15, 90);
INSERT INTO VENTA VALUES(6, '27/sep/2019', 0, 'Elisa Juarez', '1608451-6', 'Ciudad', 16, 1470);
INSERT INTO VENTA VALUES(7, '27/sep/2018', 0, 'Mateo Fernandez', '1608451-5', 'Ciudad', 15, 90);

SELECT * FROM VENTA;

--DETALLE_VENTA-----------------------------------------------------------------------------------------------------------------
INSERT INTO DETALLE_VENTA VALUES(1, 1, 900, 1);

INSERT INTO DETALLE_VENTA VALUES(2, 2, 900, 7);
INSERT INTO DETALLE_VENTA VALUES(3, 2, 900, 22);
INSERT INTO DETALLE_VENTA VALUES(4, 2, 900, 37);

INSERT INTO DETALLE_VENTA VALUES(5, 3, 900, 16);

INSERT INTO DETALLE_VENTA VALUES(6, 4, 4900, 11);
INSERT INTO DETALLE_VENTA VALUES(7, 4, 4900, 26);
INSERT INTO DETALLE_VENTA VALUES(8, 4, 4900, 41);

INSERT INTO DETALLE_VENTA VALUES(9, 5, 900, 31);

INSERT INTO DETALLE_VENTA VALUES(10, 6, 4900, 15);
INSERT INTO DETALLE_VENTA VALUES(11, 6, 4900, 30);

INSERT INTO DETALLE_VENTA VALUES(12, 7, 4900, 15);
INSERT INTO DETALLE_VENTA VALUES(13, 7, 4900, 30);

SELECT * FROM DETALLE_VENTA;

