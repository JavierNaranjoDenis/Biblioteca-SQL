SELECT
u.nombre,
COUNT(*) AS total_prestamos
FROM prestamos p
INNER JOIN usuarios u
ON p.id_usuario=u.id_usuario
GROUP BY u.nombre;

SELECT
l.titulo,
COUNT(*) AS veces_prestado
FROM prestamos p
INNER JOIN libros l
ON p.id_libro=l.id_libro
GROUP BY l.titulo;
