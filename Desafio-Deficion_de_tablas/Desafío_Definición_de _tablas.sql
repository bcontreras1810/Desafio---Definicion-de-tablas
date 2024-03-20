--descargamos el material de apoyo
--Creamos la base de datos desde DBeaver
--importamos la data CSV (material de apoyo)
--abrimos la base de datos en la terminal.
--cambiamos el nombre de la columna 1 por el nombre de id_peliculas
ALTER TABLE reparto RENAME COLUMN "1" TO id_peliculas;

--cambiamos el nombre de la comna tom hanks por actores
ALTER TABLE reparto RENAME COLUMN "Tom Hanks" TO actores;

--inserto la nueva fila con la informacion que tenia en la columna 
INSERT INTO reparto (id_peliculas, actores) VALUES (1, 'Tom Hansk');

--le agrege una primary key a id de la tabla peliulas
ALTER TABLE peliculas ADD PRIMARY KEY (id);

--altero la tabla reparto para establecer una relación entre dos tablas con las columnas de id y id_peliculas.
ALTER TABLE reparto ADD constraint fk_id foreign key (id_peliculas) references peliculas (id);

-- Obtener el ID de la película “Titanic”.

SELECT id 
FROM public.peliculas where "Pelicula" = 'Titanic';

--Listar a todos los actores que aparecen en la película "Titanic".

SELECT actores 
FROM public.reparto WHERE "id_peliculas" = (SELECT "id" FROM public.peliculas WHERE "Pelicula" = 'Titanic');

--Consultar en cuántas películas del top 100 participa Harrison Ford.

select count(*)
from public.reparto
where "actores" = 'Harrison Ford'

--Indicar las películas estrenadas entre los años 1990 y 1999 ordenadas por título de manera ascendente.

select "Pelicula"
from public.peliculas where "Año estreno" >= 1990 AND "Año estreno" <= 1999
order by "Pelicula";

--Hacer una consulta SQL que muestre los títulos con su longitud, la longitud debe ser nombrado para la consulta como “longitud_titulo”

select "Pelicula", length("Pelicula")
as longitud_titulo
from public.peliculas;

--Consultar cual es la longitud más grande entre todos los títulos de las películas

select max(length("Pelicula"))
as longitud_maxima_titulo
from public.peliculas;


