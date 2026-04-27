SELECT 
    CONCAT(u.apellido, ', ', u.nombre) AS "Estudiante",
    AGE(CURRENT_DATE, u.fechanacimiento) AS "Edad Exacta",
    m.valor AS "Materia"
FROM tbl_usuarios u
JOIN tbl_usuariosgrupos ug ON u.pk_usuario = ug.fk_usuario
JOIN tbl_inscripciones i ON ug.pk_usuariogrupo = i.fk_usuariogrupo
JOIN tbl_recordsacademicos ra ON i.pk_inscripcion = ra.fk_inscripcion
JOIN tbl_asignaturas a ON ra.fk_asignatura = a.pk_asignatura
JOIN tbl_atributos m ON a.fk_materia = m.pk_atributo
WHERE m.valor = 'NOMBRE_DE_LA_MATERIA' AND i.fk_periodo = 164
ORDER BY "Edad Exacta" DESC;