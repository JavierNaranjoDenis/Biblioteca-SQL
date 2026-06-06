CREATE DATABASE biblioteca;

USE biblioteca;

CREATE TABLE usuarios(
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100),
    telefono VARCHAR(20)
);

CREATE TABLE autores(
    id_autor INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100)
);

CREATE TABLE categorias(
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100)
);

CREATE TABLE libros(
    id_libro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(150),
    isbn VARCHAR(50),
    id_autor INT,
    id_categoria INT,

    FOREIGN KEY(id_autor)
    REFERENCES autores(id_autor),

    FOREIGN KEY(id_categoria)
    REFERENCES categorias(id_categoria)
);

CREATE TABLE prestamos(
    id_prestamo INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    id_libro INT,
    fecha_prestamo DATE,
    fecha_devolucion DATE,

    FOREIGN KEY(id_usuario)
    REFERENCES usuarios(id_usuario),

    FOREIGN KEY(id_libro)
    REFERENCES libros(id_libro)
);
