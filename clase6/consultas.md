# Consultas en SQL
> Podemos realizar consultas a:

1. Servidor
2. Base de datos
3. Tablas
4. Vistas

## Consultas a Servidor

  -- listar todas las bases de datos de un server  
  SHOW DATABASES;  
  
  -- ver cuál es la base de datos activa    
  SELECT DATABASE();  
  
  -- listar los usuarios conectados
  SELECT USER();
  
## Consultas a Base de Datos

    -- listar todas las tablas de una base de datos  
    SHOW TABLES;  

    SELECT TABLE_NAME FROM   
      information_schema.tables  
      WHERE table_schema = DATABASE();  

## Consultas a Tablas

    -- ver la estructura de una tabla  
    desc table_name;
    show columns from table_name;

    -- obtener grillas de resultados con los registros  
    SELECT * FROM table_name;  
    SELECT * FROM clientes;  
    SELECT * FROM marcas;  
    SELECT * FROM productos;  

> En estas consultas vamos a obtener la totalidad de registros y siempre se van a ver todas las columnas de una tabla

> Si queremos obtener la grilla de resultados que muestre únicamente algunas columnas, 
> vamos a reemplazar el símbolo de * (asterisco) por un listado de las columnas (separadas por comas) 

    -- obtener razón social y número de teléfono de la tabla proveedores  
    SELECT razonSocial, telefono  
      FROM proveedores;

    -- obtener apellido, nombre y teléfono de la tabla clientes  
    SELECT apellido, nombre, telefono  
      FROM clientes;
    
   -- obtener nombre del producto y precio 
   SELECT producto, precio   
   FROM productos;
   
### orden de los resultados
> cuando obtenemos una grilla de resultados estos siempre vienen ordenados de manera predeterminada
> podemos modificar el orden de los resultados con el modificador **ORDER BY**  

    SELECT * 
      FROM marcas
      ORDER BY idMarca;  

    select  
	    clientes.apellido,  
        clientes.nombre,  
        clientes.telefono  
    from clientes  
    order by clientes.apellido; 

    SELECT apellido, nombre, telefono  
      FROM clientes  
      ORDER BY apellido;  

    SELECT producto, precio     
      FROM productos    
      ORDER BY precio;  

    SELECT producto, precio       
      FROM productos    
      ORDER BY idMarca, precio;  

    -- obtener un listado desordenado
    SELECT * FROM clientes ORDER BY RAND();


### Resumen de la sintaxis

    SELECT [*, campos]  
      FROM tablas
      ORDER BY campos;