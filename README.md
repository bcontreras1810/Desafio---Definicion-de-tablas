<h1>Proyecto: Gestión de Base de Datos de Películas</h1>
  
  <h2>Descripción del Proyecto</h2>
  <p>Este proyecto consiste en la gestión de una base de datos de películas. A continuación se detallan los pasos realizados:</p>
  <ol>
    <li>Descargamos el material de apoyo.</li>
    <li>Creación de la base de datos desde DBeaver.</li>
    <li>Importación de los datos CSV del material de apoyo a la base de datos.</li>
    <li>Apertura de la base de datos en la terminal.</li>
    <li>Cambio del nombre de la columna 1 por el nombre de id_peliculas mediante el siguiente comando SQL:<br>
      <code>ALTER TABLE reparto RENAME COLUMN "1" TO id_peliculas;</code></li>
    <li>Cambio del nombre de la columna "Tom Hanks" por "actores" mediante el siguiente comando SQL:<br>
      <code>ALTER TABLE reparto RENAME COLUMN "Tom Hanks" TO actores;</code></li>
    <li>Inserción de una nueva fila con la información que había en la columna mediante el siguiente comando SQL:<br>
      <code>INSERT INTO reparto (id_peliculas, actores) VALUES (1, 'Tom Hanks');</code></li>
    <li>Agregado de una clave primaria (primary key) a la columna "id" de la tabla peliculas mediante el siguiente comando SQL:<br>
      <code>ALTER TABLE peliculas ADD PRIMARY KEY (id);</code></li>
    <li>Alteración de la tabla reparto para establecer una relación entre dos tablas con las columnas de "id" e "id_peliculas" mediante el siguiente comando SQL:<br>
      <code>ALTER TABLE reparto ADD constraint fk_id foreign key (id_peliculas) references peliculas (id);</code></li>
    <li>Obtención del ID de la película "Titanic" mediante el siguiente comando SQL:<br>
      <code>SELECT id FROM public.peliculas where "Pelicula" = 'Titanic';</code></li>
    <li>Listado de todos los actores que aparecen en la película "Titanic" mediante el siguiente comando SQL:<br>
      <code>SELECT actores FROM public.reparto WHERE "id_peliculas" = (SELECT "id" FROM public.peliculas WHERE "Pelicula" = 'Titanic');</code></li>
    <li>Consulta para determinar en cuántas películas del top 100 participa Harrison Ford mediante el siguiente comando SQL:<br>
      <code>SELECT count(*) FROM public.reparto WHERE "actores" = 'Harrison Ford';</code></li>
    <li>Consulta para indicar las películas estrenadas entre los años 1990 y 1999 ordenadas por título de manera ascendente mediante el siguiente comando SQL:<br>
      <code>SELECT "Pelicula" FROM public.peliculas WHERE "Año estreno" >= 1990 AND "Año estreno" <= 1999 ORDER BY "Pelicula";</code></li>
    <li>Consulta para mostrar los títulos con su longitud, donde la longitud se nombra como "longitud_titulo" mediante el siguiente comando SQL:<br>
      <code>SELECT "Pelicula", length("Pelicula") as longitud_titulo FROM public.peliculas;</code></li>
    <li>Consulta para determinar la longitud más grande entre todos los títulos de las películas mediante el siguiente comando SQL:<br>
      <code>SELECT max(length("Pelicula")) as longitud_maxima_titulo FROM public.peliculas;</code></li>
  </ol>
  <h2>Conclusión</h2>
  <p>En este proyecto, se ha realizado la importación y gestión de una base de datos de películas. Se utilizaron herramientas como DBeaver para la creación y manipulación de la base de datos, así como consultas SQL para realizar diversas operaciones como la modificación de columnas, inserción de datos y consultas para obtener información específica. Además, se ha demostrado la utilización de claves primarias y claves foráneas para establecer relaciones entre tablas.</p>
