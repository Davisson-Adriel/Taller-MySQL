-- Consultas

-- 1
-- Mostrar el nombre de las mascotas y el nombre completo del dueño
SELECT m.nombre AS Mascota, d.nombre_completo AS Dueno
FROM Mascota m
INNER JOIN Dueno d ON m.cedula_dueno = d.cedula;

-- 2
-- Mostrar la cantidad de mascotas por especie
SELECT e.tipo AS Especie, COUNT(*) AS Cantidad
FROM Mascota m
JOIN Especie e ON m.id_especie = e.id_especie
GROUP BY m.id_especie;

-- 3
-- Mostrar el nombre y raza de las mascotas
SELECT nombre AS NombreMascota, raza AS Raza
FROM Mascota;

-- 4
-- Mostrar la edad promedio de las mascotas
SELECT AVG(edad) AS EdadPromedioMascotas
FROM Mascota;

-- 5
-- Mostrar el precio del servicio más caro
SELECT MAX(precio_base) AS PrecioServicioMasCaro
FROM Servicio;

-- 6
-- Mostrar los servicios con su precio redondeado
SELECT nombre, ROUND(precio_base, 0) AS PrecioRedondeado
FROM Servicio;

-- 7
-- Mostrar el nombre de las mascotas y si están vacunadas
SELECT nombre, IF(vacunada = TRUE, 'Sí', 'No') AS EstaVacunada
FROM Mascota;

-- 8
-- Mostrar el nombre y raza de las mascotas concatenados como una etiqueta
SELECT CONCAT(nombre, ' - ', raza) AS MascotaEtiqueta
FROM Mascota;

-- 9
-- Mostrar el nombre de las mascotas y la longitud de su nombre
SELECT nombre, LENGTH(nombre) AS LongitudNombre
FROM Mascota;

-- 10
-- Mostrar el inicio de la dirección de los dueños y la dirección sin espacios al inicio o final
SELECT SUBSTRING(direccion, 1, 10) AS InicioDireccion, TRIM(direccion) AS DireccionLimpia
FROM Dueno;

-- 11
-- Mostrar el nombre de las mascotas en mayúsculas y la raza en minúsculas
SELECT UPPER(nombre) AS NombreMayuscula, LOWER(raza) AS RazaMinuscula
FROM Mascota;

-- 12
-- Crear una tabla con las mascotas que no están vacunadas
CREATE TABLE MascotasNoVacunadas AS
SELECT id_mascota, nombre, cedula_dueno
FROM Mascota
WHERE vacunada = FALSE;

-- 13
-- Contar el total de servicios registrados
SELECT COUNT(*) AS TotalServicios
FROM Servicio;

-- 14
-- Mostrar el nombre de las mascotas y su especie
SELECT m.nombre, (SELECT tipo FROM Especie e WHERE e.id_especie = m.id_especie) AS TipoEspecie
FROM Mascota m;

-- 15
-- Mostrar el nombre de las mascotas y su edad ordenadas de mayor a menor edad
SELECT nombre, edad
FROM Mascota
ORDER BY edad DESC;