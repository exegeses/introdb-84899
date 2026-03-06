# Chequear estado de servidor MySQl

> 💡 Esta pequeña nota nos va explicar cómo chequear si nuestro servidor de MySQL está funcionando o está detenido
> Una vez que sepamos esto podremos tomar la decisión de detenerlo, iniciarlo o reiniciarlo cuando necesitemos

## Windows
> Para chequear que el servidor de base de datos está funcionando en Windows debemos utilizar el administrador de archivos

1. Pulsar la combinación de teclas WIN + R
2. Esto abrirá la ventana "ejecutar"
3. Vamos a escribir "services.msc" y pulsamos "OK"
4. Se abrirá la ventana del administrador de servicios
5. Buscamos el servicio llamado MySQL80
6. En la columna estado verificamos que este "en ejecución"

## macOS

1. Abrir Configuración de sistema
2. En el panel izquierdo vamos abajo de todo
3. Encontramos el servicio de MySQL
4. En el panel central tenemos la opción para iniciar o detener


## Debian

> para iniciar el servidor de base de datos de MySQL en debian
> puedo utilizar una terminal de comandos

1. Abrir la Terminal
2. Ejecutar el siguiente comando:

   systemctl start mysql

> para detener el servicio, ejecutar:

    systemctl stop mysql

> para verificar el estado del servicio, ejecutar

    systemctl status mysql

