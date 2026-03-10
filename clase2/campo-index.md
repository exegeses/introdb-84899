# Marcado de Campos como Índice en SQL (MySQL)

Marcar un campo como índice en SQL es, en esencia, crear una **"guía rápida"** para que el servidor encuentre los datos sin tener que leer toda la tabla fila por fila.

Aquí te explico qué sucede "bajo el capót" y por qué es tan importante:

---

## 1. El concepto: El índice de un libro
Imagina que tienes un libro de 1,000 páginas sobre medicina (Vademécum). Si quieres buscar qué dice sobre la **"Aspirina"**:

* **Sin índice:** Tendrías que leer desde la página 1 hasta encontrar la palabra (esto se llama *Full Table Scan*).
* **Con índice:** Vas a las últimas páginas, buscas la "A" de Aspirina, ves que dice "página 452" y saltas directamente allí.

> En MySQL, un índice es una estructura de datos (normalmente un **B-Tree**) que guarda el valor del campo y un puntero hacia la ubicación física del registro.

---

## 2. ¿Qué ganas al usar índices?
* **Velocidad de lectura:** Las consultas con `SELECT`, `WHERE`, `JOIN` y `ORDER BY` pasan de tardar segundos a milisegundos.
* **Eficiencia:** El servidor utiliza menos CPU y memoria porque no tiene que procesar miles de filas innecesarias.
* **Integridad:** Algunos índices, como el `UNIQUE`, aseguran que no haya valores duplicados en una columna.

---

## 3. El "costo" oculto
No todo es felicidad; los índices tienen un precio:
1. **Espacio en disco:** El índice es un archivo adicional, por lo que la base de datos pesará más.
2. **Lentitud en escritura:** Cada vez que haces un `INSERT`, `UPDATE` o `DELETE`, MySQL debe actualizar también el índice. Si pones índices en todas las columnas, las inserciones se volverán lentas.

---

## 4. Tipos comunes en MySQL

<img src="tipos-de-indices.png">
