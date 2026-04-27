SELECT 
    m.valor as "Materia", 
    sec.valor as "Sección", 
    est.nombre as "Edificio/Salón", 
    h.valor as "Horario", 
    CONCAT(prof.nombre, ' ', prof.apellido) as "Profesor"
FROM tbl_recordsacademicos ra
JOIN tbl_inscripciones i ON ra.fk_inscripcion = i.pk_inscripcion
JOIN tbl_usuariosgrupos ug_est ON i.fk_usuariogrupo = ug_est.pk_usuariogrupo
JOIN tbl_usuarios u_est ON ug_est.fk_usuario = u_est.pk_usuario
JOIN tbl_asignaciones asig ON ra.fk_asignacion = asig.pk_asignacion
JOIN tbl_asignaturas a ON asig.fk_asignatura = a.pk_asignatura
JOIN tbl_atributos m ON a.fk_materia = m.pk_atributo
JOIN tbl_atributos sec ON asig.fk_seccion = sec.pk_atributo
JOIN tbl_estructuras est ON asig.fk_estructura = est.pk_estructura
JOIN tbl_horarios h ON asig.fk_horario = h.pk_horario
JOIN tbl_usuariosgrupos ug_prof ON asig.fk_usuariogrupo = ug_prof.pk_usuariogrupo
JOIN tbl_usuarios prof ON ug_prof.fk_usuario = prof.pk_usuario
WHERE u_est.pk_usuario = TU_CEDULA AND i.fk_periodo = 164
ORDER BY "Materia";