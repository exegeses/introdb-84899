# Creación de tablas en SQL

> Para crear una tabla utilizamos el comando
> **CREATE TABLE**

> Sintaxis: 

    CREATE TABLE nombre  
    (
        nombreCampo tipoDato [modificadores],  
        nombreCampo2 tipoDato [modificadores],  
        nombreCampo3 tipoDato [modificadores],  
        nombreCampoX tipoDato [modificadores]  
    );

> Ejemplo práctico: 

    CREATE TABLE clientes  
    (  
        idCliente int auto_increment primary key,  
        nombre varchar(45) not null,  
        apellido varchar(45) not null,  
        telefono varchar(20) not null,  
        email varchar(50),  
        fechaAlta date not null 
    );  


## Eliminar una tabla

    DROP TABLE nombreTabla;  
