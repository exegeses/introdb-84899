# Modificación de registros en Cinthia el
> Para modificar los datos dentro de un registro, dentro de una tabla, utilizamos el comando **UPDATE**
> Debemos especificar mediante un filtro cuál es el registro que queremos modificar

> Sintaxis: 

    UPDATE nombreTabla   
        SET  
            columna = valor  
      WHERE colPrimarykey = valorID;  

    UPDATE nombreTabla   
        SET  
            columna = valor,  
            columna2 = valor2    
      WHERE colPrimarykey = valorID;  

            
> Ejemplo práctico:

    UPDATE clientes  
        SET  
            apellido = 'Giménez'  
      WHERE idCliente = 3;  

    UPDATE proveedores  
       SET  
            razonSocial = "Insumos Industriales SRL",    
            email = "insumos@industriales.com"  
      WHERE idProveedor = 13;  


> Caso práctico:
> suponiendo que tenemos una tabla llamada "productos"
> Y en dicha tabla tenemos una columna llamada "precio"
> Y también otra columna llamada "idMarca"

    tabla: productos
        |
         - columnas:  precio, idMarca

> Si quisiéramos incrementar el precio de todos los productos de una marca específica, el código sería:

    UPDATE productos    
        SET  
            precio = precio * 1.05  
        WHERE idMarca = 5;  


---
> Safe Update: MySQL Workbench cuenta con un módulo seguro para modificaciones y para bajas.
> Si yo me olvido de insertar el filtro **WHERE** me daría error. Pero cuidado que esto no es una característica de lenguaje SQL