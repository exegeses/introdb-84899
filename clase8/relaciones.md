# Consultas con relaciones entre tablas
> Vamos a necesitar consultar datos provenientes de dos o más tablas
> Para lograrlo tenemos dos técnicas

1. Table Relation
2. Joins

## Table Relation
> Para lograr esta técnica debemos mencionar en el listado de tablas (después del **FROM**) todas las tablas necesarias separadas por comas
> Y luego mediante un filtro (**WHERE**) 
> igualamos la clave foránea de la tabla principal con la clave primaria de la segunda tabla

    SELECT campoTabla1, campoTabla1, campoTabla2  
      FROM tabla1, tabla2  
      WHERE tabla1.claveForanea = tabla2.clavePrimaria;  

    SELECT campoTabla1, campoTabla1, campoTabla2, camporTabla3  
      FROM tabla1, tabla2, tabla3  
      WHERE tabla1.claveForanea = tabla2.clavePrimaria  
        AND tabla1.claveForanea = tabla3.clavePrimaria;  

> Ejemplo práctico:

    SELECT producto, precio, marca  
      FROM productos, marcas  
      WHERE productos.idMarca = marcas.idMarca;  

    SELECT producto, precio, categoria  
      FROM productos, categorias  
      WHERE productos.idCategoria = categorias.idCategoria;  

    SELECT producto, precio, marca, categoria  
      FROM productos, marcas, categorias  
      WHERE productos.idMarca = marcas.idMarca  
        AND productos.idCategoria = categorias.idCategoria;  

    SELECT titulo, anio, editorial  
      FROM libros, editoriales  
      WHERE libros.idEditorial = editoriales.idEditorial;  

    SELECT titulo, anio, genero  
      FROM libros, generos  
      WHERE libros.idGenero = generos.idGenero;  

    SELECT titulo, genero, anio, editorial  
      FROM libros, generos, editoriales  
      WHERE libros.idGenero = generos.idGenero  
        AND libros.idEditorial = editoriales.idEditorial;  

## Joins
> Para lograr de esta técnica debemos mencionar después del **FROM** únicamente una tabla
> Sólo mencionamos la tabla principal
> luego mediante la palabra reservada **JOIN** mencionamos la tabla secundaria
> Finalmente utilizamos la palabra reservada **ON** para igualar la clave foránea de la tabla principal con la clave primaria de la segunda tabla 
> (podríamos decir que cada **JOIN** tiene un **ON**)

    SELECT campoTabla1, campoTabla1, campoTabla2  
      FROM tabla1  
      JOIN tabla2  
        ON tabla1.claveForanea = tabla2.clavePrimaria;  

> ejemplo práctico:

    SELECT producto, precio, marca  
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca;  

    SELECT producto, precio, categoria  
      FROM productos  
      JOIN categorias  
        ON productos.idCategoria = categorias.idCategoria;  

    SELECT producto, precio, marca, categoria  
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca  
      JOIN categorias  
        ON productos.idCategoria = categorias.idCategoria;  

    SELECT titulo, genero, editorial, anio  
      FROM libros  
      JOIN generos  
        ON libros.idGenero = generos.idGenero
      JOIN editoriales  
        ON libros.idEditorial = editoriales.idEditorial;  