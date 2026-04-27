SELECT 
    m.valor as "Materia Pendiente", 
    a.codigopropietario as "Código"
FROM tbl_asignaturas a
JOIN tbl_atributos m ON a.fk_materia = m.pk_atributo
WHERE a.fk_pensum = (
    SELECT i.fk_pensum FROM tbl_inscripciones i 
    JOIN tbl_usuariosgrupos ug ON i.fk_usuariogrupo = ug.pk_usuariogrupo
    JOIN tbl_usuarios u ON ug.fk_usuario = u.pk_usuario
    WHERE u.pk_usuario = TU_CEDULA ORDER BY i.pk_inscripcion DESC LIMIT 1
)
AND a.pk_asignatura NOT IN (
    SELECT ra.fk_asignatura 
    FROM tbl_recordsacademicos ra
    JOIN tbl_inscripciones i ON ra.fk_inscripcion = i.pk_inscripcion
    JOIN tbl_usuariosgrupos ug ON i.fk_usuariogrupo = ug.pk_usuariogrupo
    JOIN tbl_usuarios u ON ug.fk_usuario = u.pk_usuario
    WHERE u.pk_usuario = TU_CEDULA AND ra.nota >= 10
)
ORDER BY "Materia Pendiente";
