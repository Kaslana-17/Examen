-- Insertar datos en Campus
INSERT INTO Campus (NombreCampus, DireccionCampus) VALUES
('Campus Central', 'Av. Universitaria 123, Ciudad Universitaria'),
('Campus Norte', 'Calle Norte 456, Zona Industrial'),
('Campus Sur', 'Av. del Sol 789, Barrio Jardín');

-- Insertar datos en Carreras
INSERT INTO Carreras (NombreCarrera, TituloOtorgado) VALUES
('Ingeniería de Sistemas', 'Ingeniero de Sistemas'),
('Medicina', 'Médico Cirujano'),
('Derecho', 'Abogado'),
('Administración', 'Administrador de Empresas'),
('Psicología', 'Psicólogo Clínico');

-- Insertar datos en Departamentos
INSERT INTO Departamentos (NombreDepartamento, Edificio) VALUES
('Ciencias de la Computación', 'Edificio Turing'),
('Medicina', 'Edificio Pasteur'),
('Ciencias Jurídicas', 'Edificio Justicia'),
('Administración', 'Edificio Gerencial'),
('Psicología', 'Edificio Freud');

-- Insertar datos en Profesores (con email)
INSERT INTO Profesores (Nombre, Apellido, Titulo, IDDepartamento, Email) VALUES
('Carlos', 'Mendoza', 'PhD en Ciencias de la Computación', 1, 'cmendoza@universidad.edu'),
('Ana', 'Gutiérrez', 'MD con especialidad en Cardiología', 2, 'agutierrez@universidad.edu'),
('Luis', 'Fernández', 'Doctor en Derecho Constitucional', 3, 'lfernandez@universidad.edu'),
('María', 'Rodríguez', 'MBA en Gestión Empresarial', 4, 'mrodriguez@universidad.edu'),
('Pedro', 'Sánchez', 'PhD en Psicología Clínica', 5, 'psanchez@universidad.edu');

-- Insertar datos en Estudiantes (sin ciudad y con IDCarrera)
INSERT INTO Estudiantes (Nombre, Apellido, FechaNacimiento, Direccion, Email, IDCarrera) VALUES
('Juan', 'Pérez', '2000-05-15', 'Calle Primavera 123', 'jperez@estudiante.edu', 1),
('Sofía', 'García', '1999-08-22', 'Av. Libertad 456', 'sgarcia@estudiante.edu', 2),
('Miguel', 'López', '2001-03-10', 'Jr. Unión 789', 'mlopez@estudiante.edu', 3),
('Laura', 'Martínez', '2000-11-30', 'Calle Paz 321', 'lmartinez@estudiante.edu', 4),
('Diego', 'Ramírez', '1999-07-05', 'Av. Central 654', 'dramirez@estudiante.edu', 5);

-- Insertar datos en Cursos (con IDCampus)
INSERT INTO Cursos (NombreCurso, Descripcion, Creditos, Semestre, IDDepartamento, IDCampus) VALUES
('Programación I', 'Fundamentos de programación en Python', 4, '2023-1', 1, 1),
('Anatomía Humana', 'Estudio de la estructura del cuerpo humano', 6, '2023-1', 2, 1),
('Derecho Civil', 'Introducción al derecho civil', 5, '2023-2', 3, 2),
('Contabilidad Financiera', 'Principios de contabilidad general', 4, '2023-2', 4, 3),
('Psicología General', 'Introducción a la psicología', 4, '2023-1', 5, 1);

-- Insertar datos en CursosProfesores
INSERT INTO CursosProfesores (IDCurso, IDProfesor) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- Insertar datos en Inscripciones
INSERT INTO Inscripciones (IDEstudiante, IDCurso, FechaInscripcion, Calificacion) VALUES
(1, 1, '2023-01-10', 16.5),
(2, 2, '2023-01-12', 18.0),
(3, 3, '2023-06-15', 14.5),
(4, 4, '2023-06-18', 17.0),
(5, 5, '2023-01-09', 15.5),
(1, 3, '2023-06-16', 13.0),
(2, 5, '2023-01-11', 16.0);

-- Insertar datos en ProgramasEstudio
INSERT INTO ProgramasEstudio (NombrePrograma, DescripcionPrograma) VALUES
('Programa de Honor', 'Programa para estudiantes con excelencia académica'),
('Intercambio Internacional', 'Programa de intercambio con universidades extranjeras'),
('Doble Titulación', 'Programa que permite obtener dos títulos profesionales');

-- Insertar datos en ProgramasCursos
INSERT INTO ProgramasCursos (IDPrograma, IDCurso) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(3, 5);

-- Insertar datos en EstudiantesCarreras (relación muchos a muchos)
INSERT INTO EstudiantesCarreras (IDEstudiante, IDCarrera, FechaInicio, FechaFin) VALUES
(1, 1, '2020-03-15', '2024-12-15'),
(2, 2, '2019-08-10', '2025-07-20'),
(3, 3, '2021-03-20', '2025-12-10'),
(4, 4, '2020-08-05', '2024-11-30'),
(5, 5, '2019-03-18', '2023-12-15'),
(1, 4, '2022-01-10', NULL); -- Doble carrera en progreso