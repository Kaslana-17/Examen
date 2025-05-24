-- Eliminar tabla Aulas (y sus referencias)
-- Primero necesitamos eliminar las dependencias en Horarios
ALTER TABLE Horarios DROP CONSTRAINT horarios_idaula_fkey;
DROP TABLE Aulas;