# Consultas de coincidencia

> En algunos casos vamos a querer obtener registros que utilicen una palabra o parte de una palabra como filtro
> esto quiere decir que vamos a usar una palabra por ejemplo 'wireless' 
> O parte de una palabra por ejemplo 'wire'

    SELECT producto, precio, descripcion  
      FROM productos   
      WHERE descripcion = 'wireless';

> esta consulta no trae resultados porque está buscando que en la descripción diga únicamente 'wireless'
> si buscamos que contenga la palabra vamos a utilizar la palabra **LIKE** combinada con el símbolo de % (porcentaje)

    SELECT producto, precio, descripcion  
      FROM productos   
      WHERE descripcion LIKE '%wireless%';

> El símbolo de porcentaje funciona como un comodín que puede reemplazar uno, varios o incluso ningún carácter

> El símbolo de guión bajo (_) funciona como un comodín que puede reemplazar un solo carácter

