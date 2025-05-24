-- Cambiar la descripción de un programa
UPDATE ProgramasEstudio
SET DescripcionPrograma = 'Programa para estudiantes con promedio mayor a 16.0'
WHERE IDPrograma = 1;

-- Eliminar un curso de un programa especial
DELETE FROM ProgramasCursos
WHERE IDPrograma = 3 AND IDCurso = 5;