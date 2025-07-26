
INSERT INTO Dueno VALUES
('0000000000', 'Fabian Pertuz', '3504062045', 'Transversal 103a-80'),
('1111111111', 'Dylan Acevedo', '3504062046', 'Calle 197 Versalles'),
('2222222222', 'Jeferson Lopez', '3504062047', 'Av. Pertuz 69'),
('3333333333', 'Carlos Mario', '3504062048', 'Calle Carlos 18'),
('1092940550', 'Kiko Colmenares', '3504062049', 'Camino del vago 22-56');

INSERT INTO Especie (tipo) VALUES
('Gato'),
('Perro'),
('Reptil'),
('Ave'),
('Dinosaurio');

INSERT INTO Servicio (nombre, descripcion, precio_base) VALUES
('Baño', 'Baño completo para mascotas', 15000.000),
('Corte de uñas', 'Corte de uñas y limpieza', 5000.000),
('Consulta médica', 'Revisión general con el veterinario', 25000.000),
('Desparasitación', 'Eliminación de parásitos internos y externos', 23000.000),
('Vacunación', 'Aplicación de vacunas programadas', 30000.000);

INSERT INTO Mascota (nombre, id_especie, raza, edad, sexo, vacunada, cedula_dueno) VALUES
('Firulais', 3 , 'Labrador', 5, 'M', TRUE, '0000000000'),
('Michi', 1 , 'Angora', 2, 'F', FALSE, '1092940550'),
('Rex', 5 , 'Pastor Alemán', 3, 'M', TRUE, '3333333333'),
('Pelusa', 5 , 'Siames', 4, 'F', TRUE, '1111111111'),
('Luna', 2 , 'Poodle', 1, 'F', FALSE, '1092940550'),
('Rocky', 3 , 'Bulldog', 6, 'M', TRUE, '3333333333'),
('Max', 2 , 'Beagle', 2, 'M', FALSE, '1111111111'),
('Nina', 1 , 'Persa', 3, 'F', TRUE, '0000000000'),
('Toby', 1 , 'Golden Retriever', 4, 'M', TRUE, '1092940550'),
('Kitty', 1 , 'Maine Coon', 1, 'F', FALSE, '2222222222');

INSERT INTO Visita (fecha, id_mascota, id_servicio) VALUES
('2025-07-01', 1, 1),
('2025-07-02', 2, 2),
('2025-07-03', 3, 3),
('2025-07-04', 4, 4),
('2025-07-05', 5, 5),
('2025-07-06', 6, 1),
('2025-07-07', 7, 2),
('2025-07-08', 8, 3),
('2025-07-09', 9, 4),
('2025-07-10', 10, 5);

INSERT INTO Tratamiento (nombre, observaciones, id_visita) VALUES
('Antibiótico', 'Administrar por 5 días', 3),
('Vitaminas', 'Una pastilla diaria', 4),
('Antipulgas', 'Aplicar pipeta una vez al mes', 6),
('Desparasitación interna', 'Repetir en 15 días', 9),
('Vacuna triple felina', 'Revisión en 30 días', 10);