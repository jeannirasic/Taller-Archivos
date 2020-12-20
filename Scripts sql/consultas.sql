--Datos de la tarjeta dado el nombre de una obra--------------------------------------------------------------------------------
--SET serveroutput ON;

SELECT 
    pe.nombre_persona AS Artista, 
    pi.titulo_pieza AS Titulo, 
    pi.anio_creacion_pieza AS Año, 
    pi.tipo_pieza AS  Tipo,
    pi.medio_pieza AS Medio,
    pi.estilo_pieza AS Estilo,
    ( pi.alto_pieza || ' x ' || pi.ancho_pieza || ' x ' || pi.profundidad_pieza) As Tamaño,
    pi.precio_solicitado AS Precio
    FROM PERSONA pe, PIEZA pi
    WHERE pe.id_persona = pi.id_artista_pieza
    AND pi.titulo_pieza = 'Pintura 1'
    AND pe.nombre_persona = 'Juan Perez';


CREATE OR REPLACE PROCEDURE tarjeta(tit VARCHAR2, nom VARCHAR2) IS
    cursor_     SYS_REFCURSOR;
    artista     VARCHAR(500);
    titulo      VARCHAR(500);
    anio        NUMBER;
    tipo        VARCHAR(500);
    medio       VARCHAR(500);
    estilo      VARCHAR(500);
    tamanio     VARCHAR(500);
    precio      FLOAT;
BEGIN
    OPEN cursor_ FOR    
        SELECT pe.nombre_persona, 
        pi.titulo_pieza, 
        pi.anio_creacion_pieza, 
        pi.tipo_pieza,
        pi.medio_pieza,
        pi.estilo_pieza,
        ( pi.alto_pieza || ' x ' || pi.ancho_pieza || ' x ' || pi.profundidad_pieza),
        pi.precio_solicitado
        FROM PERSONA pe, PIEZA pi
        WHERE pe.id_persona = pi.id_artista_pieza
        AND pi.titulo_pieza = tit
        AND pe.nombre_persona = nom;
    LOOP
        FETCH cursor_ INTO artista, titulo, anio, tipo, medio, estilo, tamanio, precio;
        EXIT WHEN cursor_%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(artista || '     ' || titulo || '     ' || anio || '     ' || tipo || '     ' || medio || '     ' || estilo || '     ' || tamanio || '     ' || precio); 
    END LOOP;
    CLOSE cursor_;
END;
/

EXEC tarjeta('Pintura 1', 'Juan Perez');

    
--Reporte de ventas por anio----------------------------------------------------------------------------------------------------
SELECT 
    EXTRACT(YEAR FROM fecha_venta) AS Año,
    SUM(total_venta) AS Total,
    SUM(comision_venta) AS Comision
    FROM VENTA
    GROUP BY fecha_venta
    ORDER BY 1;

CREATE OR REPLACE PROCEDURE ventas_anio IS
    cursor_     SYS_REFCURSOR;
    anio        NUMBER;
    total       NUMBER;
    comision    NUMBER;
BEGIN
    OPEN cursor_ FOR    
        SELECT 
        EXTRACT(YEAR FROM fecha_venta) AS Año,
        SUM(total_venta) AS Total,
        SUM(comision_venta) AS Comision
        FROM VENTA
        GROUP BY fecha_venta
        ORDER BY 1;
    LOOP
        FETCH cursor_ INTO anio, total, comision;
        EXIT WHEN cursor_%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(anio || '     ' || total || '     ' || comision); 
    END LOOP;
    CLOSE cursor_;
END;
/

EXEC ventas_anio;



--Reporte de las compras por cliente--------------------------------------------------------------------------------------------
SELECT 
    p.nombre_persona AS Cliente,
    SUM(v.total_venta) AS Compras
    FROM PERSONA p, VENTA v
    WHERE p.id_persona = v.id_comprador_venta
    GROUP BY p.nombre_persona
    ORDER BY 2 DESC;

CREATE OR REPLACE PROCEDURE compras_cliente IS
    cursor_     SYS_REFCURSOR;
    cliente     VARCHAR2(500);
    compras     NUMBER;
BEGIN
    OPEN cursor_ FOR    
        SELECT 
        p.nombre_persona AS Cliente,
        SUM(v.total_venta) AS Compras
        FROM PERSONA p, VENTA v
        WHERE p.id_persona = v.id_comprador_venta
        GROUP BY p.nombre_persona
        ORDER BY 2 DESC;
    LOOP
        FETCH cursor_ INTO cliente, compras;
        EXIT WHEN cursor_%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(cliente || '     ' || compras); 
    END LOOP;
    CLOSE cursor_;
END;
/

EXEC compras_cliente;


--Reporte de las ventas generadas por artista-----------------------------------------------------------------------------------
SELECT 
    pe.nombre_persona AS Artista,
    SUM(dv.precio_venta) AS Ventas
    FROM PERSONA pe, PIEZA pi, DETALLE_VENTA dv
    WHERE pe.id_persona = pi.id_artista_pieza
    AND pi.id_pieza = dv.id_pieza_detalle
    GROUP BY pe.nombre_persona
    ORDER BY 2 DESC;

CREATE OR REPLACE PROCEDURE ventas_artista IS
    cursor_     SYS_REFCURSOR;
    artista     VARCHAR2(500);
    ventas       NUMBER;
BEGIN
    OPEN cursor_ FOR    
        SELECT 
        pe.nombre_persona AS Artista,
        SUM(dv.precio_venta) AS Ventas
        FROM PERSONA pe, PIEZA pi, DETALLE_VENTA dv
        WHERE pe.id_persona = pi.id_artista_pieza
        AND pi.id_pieza = dv.id_pieza_detalle
        GROUP BY pe.nombre_persona
        ORDER BY 2 DESC;
    LOOP
        FETCH cursor_ INTO artista, ventas;
        EXIT WHEN cursor_%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(artista || '     ' || ventas); 
    END LOOP;
    CLOSE cursor_;
END;
/

EXEC ventas_artista;


--Reporte de materiales que mas se usan-----------------------------------------------------------------------------------------
SELECT 
    medio_pieza AS Material,
    count(medio_pieza) AS Utilizado
    FROM pieza
    GROUP BY medio_pieza
    ORDER BY 2 DESC;
    
CREATE OR REPLACE PROCEDURE materiales IS
    cursor_     SYS_REFCURSOR;
    material    VARCHAR2(500);
    utilizado   NUMBER;
BEGIN
    OPEN cursor_ FOR    
        SELECT 
        medio_pieza AS Material,
        count(medio_pieza) AS Utilizado
        FROM pieza
        GROUP BY medio_pieza
        ORDER BY 2 DESC;
    LOOP
        FETCH cursor_ INTO material, utilizado;
        EXIT WHEN cursor_%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(material || '     ' || utilizado); 
    END LOOP;
    CLOSE cursor_;
END;
/

EXEC materiales;
    
--Segun el numero de una factura, obtener los datos necesarios para generar el documento----------------------------------------
SELECT
    pe.nombre_persona AS Cliente,
    v.nombre_cliente_venta AS Nombre,
    v.nit_venta AS Nit,
    v.direccion_venta AS Direccion,
    v.fecha_venta AS Fecha,
    v.total_venta AS Total,
    p.titulo_pieza AS Pieza,
    dv.precio_venta AS Subtotal
    FROM VENTA v, PIEZA p, DETALLE_VENTA dv, PERSONA pe
    WHERE v.id_venta = dv.id_venta_detalle
    AND dv.id_pieza_detalle = p.id_pieza
    AND v.id_comprador_venta = pe.id_persona
    AND v.id_venta = 5;
    
CREATE OR REPLACE PROCEDURE factura(numero NUMBER) IS
    cursor_     SYS_REFCURSOR;
    cliente     VARCHAR(500);
    nombre      VARCHAR(500);
    nit         VARCHAR(500);
    direccion   VARCHAR(500);
    fecha       DATE;
    total       FLOAT;
    pieza       VARCHAR(500);
    subtotal    FLOAT;
BEGIN
    OPEN cursor_ FOR    
        SELECT
        pe.nombre_persona AS Cliente,
        v.nombre_cliente_venta AS Nombre,
        v.nit_venta AS Nit,
        v.direccion_venta AS Direccion,
        v.fecha_venta AS Fecha,
        v.total_venta AS Total,
        p.titulo_pieza AS Pieza,
        dv.precio_venta AS Subtotal
        FROM VENTA v, PIEZA p, DETALLE_VENTA dv, PERSONA pe
        WHERE v.id_venta = dv.id_venta_detalle
        AND dv.id_pieza_detalle = p.id_pieza
        AND v.id_comprador_venta = pe.id_persona
        AND v.id_venta = numero;
    LOOP
        FETCH cursor_ INTO cliente, nombre, nit, direccion, fecha, total, pieza, subtotal;
        EXIT WHEN cursor_%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(cliente || '     ' || nombre || '     ' || nit || '     ' || direccion || '     ' || fecha || '     ' || total || '     ' || pieza || '     ' || subtotal); 
    END LOOP;
    CLOSE cursor_;
END;
/

EXEC factura(5);


