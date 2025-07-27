-- Consultas

-- 1
-- Nombre de las mascotas y el nombre completo del dueño
SELECT m.nombre AS Mascota, d.nombre_completo AS Dueno
FROM Mascota m
    INNER JOIN Dueno d ON m.cedula_dueno = d.cedula;

-- 2
-- Cantidad de mascotas por especie
SELECT e.tipo AS Especie, COUNT(*) AS Cantidad
FROM Mascota m
    JOIN Especie e ON m.id_especie = e.id_especie
GROUP BY
    m.id_especie;

-- 3
-- Nombre y raza de las mascotas
SELECT nombre AS NombreMascota, raza AS Raza FROM Mascota;

-- 4
-- Edad promedio de las mascotas
SELECT AVG(edad) AS EdadPromedioMascotas FROM Mascota;

-- 5
-- Precio del servicio más caro
SELECT MAX(precio_base) AS PrecioServicioMasCaro FROM Servicio;

-- 6
-- Servicios con su precio redondeado
SELECT nombre, ROUND(precio_base, 0) AS PrecioRedondeado
FROM Servicio;

-- 7
-- Nombre de las mascotas y si están vacunadas
SELECT nombre, IF(vacunada = TRUE, 'Sí', 'No') AS EstaVacunada
FROM Mascota;

-- 8
-- Nombre y raza de las mascotas concatenados como una etiqueta
SELECT CONCAT(nombre, ' - ', raza) AS MascotaEtiqueta FROM Mascota;

-- 9
-- Etiqueta Nombre-Raza-Especie
SELECT m.nombre, CONCAT(
        m.nombre, '-', UPPER(LEFT(m.raza, 1)), '-', UPPER(LEFT(e.tipo, 1))
    ) AS Etiqueta
FROM Mascota m
    JOIN Especie e ON m.id_especie = e.id_especie;

-- 10
-- Mascotas con su dirección
SELECT m.nombre AS Mascota, d.direccion AS Direccion
FROM Mascota m
    JOIN Dueno d ON m.cedula_dueno = d.cedula;

-- 11
-- Dueños con al menos una mascota vacunada
SELECT DISTINCT
    d.cedula,
    d.nombre_completo,
    d.telefono,
    d.direccion
FROM Dueno d
    JOIN Mascota m ON d.cedula = m.cedula_dueno
WHERE
    m.vacunada = TRUE;

-- 12
-- Tabla con las mascotas que no están vacunadas
CREATE TABLE MascotasNoVacunadas AS
SELECT id_mascota, nombre, cedula_dueno
FROM Mascota
WHERE
    vacunada = FALSE;

-- 13
-- Contar el total de servicios registrados
SELECT COUNT(*) AS TotalServicios FROM Servicio;

-- 14
-- Cantidad de cada raza
SELECT raza, COUNT(*) AS Cantidad FROM Mascota GROUP BY raza;

-- 15
-- Nombre de las mascotas y su edad ordenadas de mayor a menor edad
SELECT nombre, edad FROM Mascota ORDER BY edad DESC;