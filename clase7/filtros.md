# Filtrado de registros

> Cuándo hacemos una consulta sin filtro obtenemos un listado de todos los registros que hay dentro de una tabla.
> Filtrar registros significa que mediante una condición vamos a obtener solamente aquellos registros que cumplan con dicha condición
> para implementar un filtro utilizamos la palabra reservada **WHERE**

    SELECT [*, campos]  
      FROM tablas  
      WHERE condicion/es  
      ORDER BY campos;

> Obtener un listado de registros de la marca "JBL"

    SELECT producto, precio    
      FROM productos  
      WHERE idMarca = 6;  

> Obener un listado de registros con un precio hasta 1000000

    SELECT producto, precio    
      FROM productos  
      WHERE precio <= 1000000;

> Obtener los registros con un precio entre 100000 y 1000000

    SELECT producto, precio    
      FROM productos  
      WHERE precio >= 100000
        AND precio <= 1000000;

> Obtener un listado de clientes con ficha de alta anterior a junio de 2024

    SELECT * FROM clientes  
      WHERE fechaAlta < '2024-06-01'  
      ORDER BY fechaAlta DESC;  

> Obtener un listado de clientes del mes de mayo de 2024

    select * from clientes  
      WHERE fechaAlta < '2024-06-01'  
        AND fechaAlta > '2024-04-30';

> uso de BETWEEN

    SELECT producto, precio    
      FROM productos  
      WHERE precio BETWEEN 100000 AND 1000000;

    SELECT * FROM clientes   
      WHERE fechaAlta BETWEEN '2024-05-01'   
        AND '2024-05-31';  

> Funciones de fecha: 
> Tenemos varias funciones de fecha que podemos utilizar. 
> En este caso vamos a usar MONTH() y YEAR()

    SELECT * FROM clientes  
      WHERE MONTH(fechaAlta) = 5  
        AND YEAR(fechaAlta) = 2024;  

> Obtener un listado de registros de las marcas "JBL" y "BOSS"

    SELECT producto, precio    
      FROM productos  
      WHERE idMarca = 6  
        OR idMarca = 7;  

> función IN()  

    SELECT producto, precio    
      FROM productos  
      WHERE idMarca IN(6,7);  

    SELECT * from clientes  
      WHERE apellido IN('lópez', 'pérez');
