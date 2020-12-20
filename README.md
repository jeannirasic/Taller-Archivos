# ¡Bienvenido al repositorio del taller de archivos!

![Base de datos](https://cdn.pixabay.com/photo/2017/06/12/04/21/database-2394312_960_720.jpg "Base de datos")

##### Acá encontrarás los siguiente:

* Diagramas entidad-relación del ejemplo presentado (carpeta de diagramas)
    * Modelo conceptual
    * Modelo lógico
* Scripts (carpeta scripts SQL)
    * **Modelo físico:** script que contiene la creación de tablas, creación de triggers y eliminación de tablas
    * **Inserciones:** script que contiene la inserción de todos los datos en las tablas
    * **Consultas:** script que contiene las diferentes consultas y los procedimientos almacenados correspondientes a los reportes
    * **Eliminaciones:** script que contiene la demostración del trigger de eliminación y la eliminación en cascada
* Presentación de la teoría  (carpeta presentacion)

## Tablas del ejemplo
---
La base de datos del ejemplo es de una galería de arte en la cual existen artistas, coleccionistas, vendedores y clientes. En esta galería se exhiben diferentes obras de arte para lo cuál se realizan exposiciones. Las exposiciones pueden ser individuales (un solo artista) o colectivas (muchos artistas). Cada cliente tiene un vendedor que lo ayuda con la compra de las obras de arte que desee adquirir y este obtiene una comisión por ello. A continuación se listan las tablas que hay en la base de datos y una pequeña descripción:

#### Tabla TIPO_PERSONA
Esta tabla almacena los cuartro tipos de persona o roles existentes en la galería, los cuales son: artista, coleccionista, vendedor y cliente.

| Nombre | Tipo de dato | Descripción |
| --------- | --------- | --------- |
| id_tipo_persona | NUMBER | Llave primaria que identifica el tipo de persona |
| nombre_tipo_persona | VARCHAR2(20) | Cadena que almacena el nombre del tipo de persona |

#### Tabla PERSONA
Esta tabla almacena la información de todas las personas que están involucradas con la galería de arte.

| Nombre | Tipo de dato | Descripción |
| --------- | --------- | --------- |
| id_persona | NUMBER | Llave primaria que identifica a la persona |
| dpi_persona | VARCHAR2(13) | Cadena que almacena el dpi de la persona |
| nit_persona | VARCHAR2(15) | Cadena que almacena el nit de la persona |
| nombre_persona | VARCHAR2(50) | Cadena que almacena el nombre de la persona |
| sexo_persona | CHAR(1) | Caracter que identifica el sexo persona |
| edad_persona | NUMBER | Número que identifica la edad de la persona |
| correo_persona | VARCHAR2(50) | Cadena que almacena el correo de la persona |
| telefono_persona | VARCHAR2(8) | Cadena que almacena el número de teléfono de la persona |
| direccion_persona | VARCHAR2(200) | Cadena que almacena la dirección de la persona |
| conocido_artista | CHAR(1) | Caracter que identifica si el artista es conocido o no |
| id_tipo_persona_persona | NUMBER | Llave foránea que identifica el tipo de persona |
| vendedor_cliente | NUMBER | Llave foránea recursiva que identifica el vendedor asignado a un cliente |


#### Tabla EXPOSICION
Esta tabla almacena la información de las exposiciones que tiene la galería de arte. 

| Nombre | Tipo de dato | Descripción |
| --------- | --------- | --------- |
| id_exposicion | NUMBER | Llave primaria que identifica a la exposición |
| tipo_exposicion | VARCHAR2(11) | Cadena que almacena el tipo de exposición (individual o colectiva) |
| tema_exposicion | VARCHAR2(200) | Cadena que almacena el nombre del tema de la exposición |
| id_artista | NUMBER | Llave foránea opcional que almacena el identificador del artista en una exposición individual |
| fecha_exposicion | DATE | Fecha en la que se realizará la exposición |

#### Tabla INVITACION
Esta tabla almacena la información de las invitaciones realizadas a cada una de las exposiciones de la galería de arte. 

| Nombre | Tipo de dato | Descripción |
| --------- | --------- | --------- |
| id_invitacion | NUMBER | Llave primaria que identifica la invitación realizada |
| id_exposicion_invitacion | NUMBER | Llave foránea que identifica la exposición a la que se invitó |
| id_persona_invitacion | NUMBER | Llave foránea que identifica a la persona que se invitó |

#### Tabla PIEZA
Esta tabla almacena la información de todas las obras de arte de la galería. 

| Nombre | Tipo de dato | Descripción |
| --------- | --------- | --------- |
| id_pieza | NUMBER | Llave primaria que identifica a la pieza de arte |
| precio_solicitado | FLOAT | Número que almacena el precio de la pieza de arte |
| estado_pieza | VARCHAR2(10) | Cadena que almacena el estado de la pieza de arte |
| fecha_ingreso_pieza | DATE | Fecha en la que ingresó la pieza de arte a la galería |
| titulo_pieza | VARCHAR2(200) | Cadena que almacena el título de la pieza de arte |
| anio_creacion_pieza | NUMBER | Número que almacena el año en el que se creó la pieza de arte |
| tipo_pieza | VARCHAR2(100) | Cadena que almacena el tipo de la pieza de arte |
| medio_pieza | VARCHAR2(100) | Cadena que almacena el medio artístico de la pieza de arte |
| estilo_pieza | VARCHAR2(100) | Cadena que almacena el estilo de la pieza de arte |
| id_artista_pieza | NUMBER | Llave foránea que identifica el artista de la pieza de arte |
| id_coleccionista_pieza | NUMBER | Llave foránea que identifica el coleccionista de la pieza de arte |
| ancho_pieza | FLOAT | Número que almacena el ancho de la pieza de arte |
| alto_pieza | FLOAT | Número que almecena el alto de la pieza de arte |
| profundidad_pieza | FLOAT | Número que almacena la profundidad de la pieza de arte |
| id_exposicion_pieza | NUMBER | Llave foránea que identifica la exposición en la que está la pieza de arte |

#### Tabla VENTA
Esta tabla almacena la información de las ventas realizadas en las exposiciones de la galería de arte.

| Nombre | Tipo de dato | Descripción |
| --------- | --------- | --------- |
| id_venta | NUMBER | Llave primaria que identifica a la venta |
| fecha_venta | DATE | Fecha en la que se realizó la venta |
| total_venta | FLOAT | Número que almacena el total de la venta |
| nombre_cliente_venta | VARCHAR2(50) | Cadena que almacena el nombre del cliente |
| nit_venta | VARCHAR2(15) | Cadena que almacena el nit del cliente |
| direccion_venta | VARCHAR2(200) | Cadena que almacena la dirección del cliente |
| id_comprador_venta | NUMBER | Llave foránea que identifica al cliente |
| comision_venta | FLOAT | Número que almacena la comisión del vendedor |

#### Tabla DETALLE_VENTA
Esta tabla almacena el detalle de las ventas realizadas en las exposiciones de la galería de arte.

| Nombre | Tipo de dato | Descripción |
| --------- | --------- | --------- |
| id_detalle_venta | NUMBER | Llave primaria que identifica el detalle de la venta |
| id_venta_detalle | NUMBER | Llave foránea que identifica la venta a la que pertenece el detalle |
| precio_venta | FLOAT | Número que almacena el precio al que se vendió la pieza de arte |
| id_pieza_detalle | NUMBER | Llave foránea que almacena el identificador de la pieza de arte |

## Triggers
---
Se crearon dos triggers que actualizan el campo del total en la venta al momento de agregar o eliminar piezas de arte de su respectivo detalle.

#### Trigger SUMAR_TOTAL
Este trigger toma el campo de precio de la fila que fue insertada en el detalle y lo suma al total del registro de la venta correspondiente.
```SQL
CREATE OR REPLACE TRIGGER SUMAR_TOTAL
AFTER INSERT ON DETALLE_VENTA
FOR EACH ROW 
BEGIN
    UPDATE VENTA 
        SET total_venta = (total_venta + :NEW.precio_venta)
        WHERE VENTA.id_venta = :NEW.id_venta_detalle;
END;
/
```

#### Trigger RESTAR_TOTAL
Este trigger toma el campo de precio de la fila que será eliminada en el detalle y lo resta al total del registro de la venta correspondiente. A este trigger se le agregó la transacción autónoma con el fin de que no sea dependiente y no se ejecute al momento de eliminar un registro de cualquier tabla que esté asociada. Así mismo, se le agregó la parte de la excepción para evitar que las transacciones de eliminación en estas tablas caigan en un [Deadlock](http://innovaskynet.blogspot.com/2014/09/como-detectar-bloqueos-en-oracle.html#:~:text=Un%20Deadlock%20es%20cuando%20un,base%20de%20datos%20de%20Oracle.).
```SQL
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
```

## Consultas y procedimientos almacenados
---
Se realizaron 6 consultas y procedimientos almacenados que resumen los datos que fueron insertados en la base de datos. 

#### Datos de la tarjeta dado el nombre de una obra
Esta muesta la tarjeta con todos los datos que se pone en la galería de arte para cada obra al ingresar el nombre de la obra y el artista.

```SQL
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
```

```SQL
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
```

#### Reporte de ventas por año
Esta muestra un resumen de las ventas que se han realizado en la galería de arte anualmente.

```SQL
SELECT 
    EXTRACT(YEAR FROM fecha_venta) AS Año,
    SUM(total_venta) AS Total,
    SUM(comision_venta) AS Comision
    FROM VENTA
    GROUP BY fecha_venta
    ORDER BY 1;
```
```SQL
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
```

#### Reporte de las compras por cliente
Esta muestra la cantidad gastada en la galería por cliente.

```SQL
SELECT 
    p.nombre_persona AS Cliente,
    SUM(v.total_venta) AS Compras
    FROM PERSONA p, VENTA v
    WHERE p.id_persona = v.id_comprador_venta
    GROUP BY p.nombre_persona
    ORDER BY 2 DESC;
```

```SQL
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
```

#### Reporte de las ventas generadas por artista
Esta muestra un resumen de cantidad que ha ganado cada artista con las ventas de sus piezas de arte.

```SQL
SELECT 
    pe.nombre_persona AS Artista,
    SUM(dv.precio_venta) AS Ventas
    FROM PERSONA pe, PIEZA pi, DETALLE_VENTA dv
    WHERE pe.id_persona = pi.id_artista_pieza
    AND pi.id_pieza = dv.id_pieza_detalle
    GROUP BY pe.nombre_persona
    ORDER BY 2 DESC;
```

```SQL
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
```

#### Reporte de los materiales que más se usan
Esta muestra un resumen de los materiales más utilizados en las piezas de arte de la galería.

```SQL
SELECT 
    medio_pieza AS Material,
    count(medio_pieza) AS Utilizado
    FROM pieza
    GROUP BY medio_pieza
    ORDER BY 2 DESC;
```

```SQL
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
```

#### Según el numero de una factura, obtener los datos necesarios para generar el documento
Esta muestra todos los detalles de la factura de una venta específica. 

```SQL
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
```

```SQL
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
```



[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)


   [dill]: <https://github.com/joemccann/dillinger>
   [git-repo-url]: <https://github.com/joemccann/dillinger.git>
   [john gruber]: <http://daringfireball.net>
   [df1]: <http://daringfireball.net/projects/markdown/>
   [markdown-it]: <https://github.com/markdown-it/markdown-it>
   [Ace Editor]: <http://ace.ajax.org>
   [node.js]: <http://nodejs.org>
   [Twitter Bootstrap]: <http://twitter.github.com/bootstrap/>
   [jQuery]: <http://jquery.com>
   [@tjholowaychuk]: <http://twitter.com/tjholowaychuk>
   [express]: <http://expressjs.com>
   [AngularJS]: <http://angularjs.org>
   [Gulp]: <http://gulpjs.com>

   [PlDb]: <https://github.com/joemccann/dillinger/tree/master/plugins/dropbox/README.md>
   [PlGh]: <https://github.com/joemccann/dillinger/tree/master/plugins/github/README.md>
   [PlGd]: <https://github.com/joemccann/dillinger/tree/master/plugins/googledrive/README.md>
   [PlOd]: <https://github.com/joemccann/dillinger/tree/master/plugins/onedrive/README.md>
   [PlMe]: <https://github.com/joemccann/dillinger/tree/master/plugins/medium/README.md>
   [PlGa]: <https://github.com/RahulHP/dillinger/blob/master/plugins/googleanalytics/README.md>

