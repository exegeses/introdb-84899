# alias en SQL
/*
    Podemos renombrar un enunciado de una columna utilizando un alias.
    No se va a renombrar de manera permanente sino que
    sólo se renombrará este enunciado para un reporte.
    Podemos implementar un alias mediante la palabra reservada **AS**
    (se puede omitir)
*/
select
        producto AS Producto,
        precio AS 'Precio Contado',
        precio * 1.05 AS 'Precio Lista',
        marca AS Marca,
        categoria AS Categoria
FROM productos
 JOIN marcas
  ON productos.idMarca = marcas.idMarca
 JOIN categorias
  ON productos.idCategoria = categorias.idCategoria;

select
    producto AS Producto,
    precio AS 'Precio Contado',
    precio * 1.05 AS 'Precio Lista',
    marca AS Marca,
    categoria AS Categoria,
    razonSocial AS Proveedor
FROM productos
JOIN marcas
ON productos.idMarca = marcas.idMarca
JOIN categorias
ON productos.idCategoria = categorias.idCategoria
JOIN productos_proveedores AS pp
ON productos.idProducto = pp.idProducto
JOIN proveedores
ON pp.idProveedor = proveedores.idProveedor;

/*
    obtener titulo, autor, genero, anio, editorial
*/
select
        titulo AS Título,
        nombre AS Autor,
        genero AS Género,
        anio AS Año,
        editorial AS Editorial
FROM libros AS l
JOIN libros_autores AS la
on l.idLibro = la.idLibro
JOIN autores AS a
on la.idAutor = a.idAutor
JOIN generos AS g
on l.idGenero = g.idGenero
JOIN editoriales AS e
on l.idEditorial = e.idEditorial;



