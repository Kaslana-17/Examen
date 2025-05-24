WITH PromediosPorCurso AS (
    SELECT pc.IDPrograma, i.IDCurso, AVG(i.Calificacion) AS Promedio
    FROM ProgramasCursos pc
    JOIN Inscripciones i ON pc.IDCurso = i.IDCurso
    GROUP BY pc.IDPrograma, i.IDCurso
),
MaxPromedioPorPrograma AS (
    SELECT IDPrograma, MAX(Promedio) AS MaxPromedio
    FROM PromediosPorCurso
    GROUP BY IDPrograma
)
SELECT pe.NombrePrograma, c.NombreCurso, ppc.Promedio
FROM ProgramasEstudio pe
JOIN PromediosPorCurso ppc ON pe.IDPrograma = ppc.IDPrograma
JOIN MaxPromedioPorPrograma mpp ON ppc.IDPrograma = mpp.IDPrograma AND ppc.Promedio = mpp.MaxPromedio
JOIN Cursos c ON ppc.IDCurso = c.IDCurso
ORDER BY pe.NombrePrograma;