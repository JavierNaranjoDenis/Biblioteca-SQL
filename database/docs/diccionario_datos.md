#Diccionario de Datos

#usuarios

| Campo | Tipo |
|---------|---------|
| id_usuario | INT |
| nombre | VARCHAR(100) |
| correo | VARCHAR(100) |
| telefono | VARCHAR(20) |

#libros

| Campo | Tipo |
|---------|---------|
| id_libro | INT |
| titulo | VARCHAR(150)|
| isbn | VARCHAR(50) |

#prestamos

| Campo | Tipo |
|---------|---------|
| id_prestamo | INT |
| id_usuario | INT |
| id_libro | INT |
| fecha_prestamo | DATE |
| fecha_devolucion | DATE |
