# consultas a través de una tabla pivot
select producto, precio, razonSocial, telefono
from productos
join productos_proveedores
  on productos.idProducto = productos_proveedores.idProducto
join proveedores
  on productos_proveedores.idProveedor = proveedores.idProveedor;

select titulo, nombre, anio
from libros
join libros_autores
  on libros.idLibro = libros_autores.idLibro
join autores
  on libros_autores.idAutor = autores.idAutor;

select titulo, nombre, anio, genero
from libros
join libros_autores
  on libros.idLibro = libros_autores.idLibro
join autores
  on libros_autores.idAutor = autores.idAutor
join generos
  on libros.idGenero = generos.idGenero;