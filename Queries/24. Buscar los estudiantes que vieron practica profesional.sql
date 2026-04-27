SELECT 
    u.pk_usuario as "Cédula", 
    CONCAT(u.nombre, ' ', u.apellido) AS "Estudiante", 
    proy.titulo as "Proyecto Práctica"
FROM tbl_inscripcionespasantias ip
JOIN tbl_inscripciones i ON ip.fk_inscripcion = i.pk_inscripcion
JOIN tbl_usuariosgrupos ug ON i.fk_usuariogrupo = ug.pk_usuariogrupo
JOIN tbl_usuarios u ON ug.fk_usuario = u.pk_usuario
JOIN tbl_asignacionesproyectos ap ON ip.fk_asignacionproyecto = ap.pk_asignacionproyecto
JOIN tbl_proyectos proy ON ap.fk_proyecto = proy.pk_proyecto
WHERE proy.titulo ILIKE '%Practica Profesional%' OR proy.descripcion ILIKE '%Practica Profesional%'
ORDER BY "Estudiante";