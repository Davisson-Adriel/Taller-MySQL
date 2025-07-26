CREATE DATABASE veterinaria;
USE veterinaria;

CREATE TABLE Dueno (
    cedula VARCHAR(10) PRIMARY KEY,
    nombre_completo VARCHAR(100) NOT NULL,
    telefono VARCHAR(10),
    direccion VARCHAR(150)
);

CREATE TABLE Especie (
    id_especie INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(100)
);

CREATE TABLE Servicio (
    id_servicio INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion TEXT,
    precio_base DECIMAL(10,3)
);

CREATE TABLE Mascota (
    id_mascota INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    id_especie INT,
    raza VARCHAR(100),
    edad INT,
    sexo ENUM('M', 'F'),
    vacunada BOOLEAN,
    cedula_dueno VARCHAR(10),
    FOREIGN KEY (cedula_dueno) REFERENCES Dueno(cedula),
    FOREIGN KEY (id_especie) REFERENCES Especie(id_especie)
);

CREATE TABLE Visita (
    id_visita INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE,
    id_mascota INT,
    id_servicio INT,
    FOREIGN KEY (id_mascota) REFERENCES Mascota(id_mascota),
    FOREIGN KEY (id_servicio) REFERENCES Servicio(id_servicio)
);

CREATE TABLE Tratamiento (
    id_tratamiento INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    observaciones TEXT,
    id_visita INT,
    FOREIGN KEY (id_visita) REFERENCES Visita(id_visita)
);
