SELECT 
    p.pk_periodo as "Periodo", 
    m.valor as "Materia", 
    ra.nota as "Nota", 
    est.valor as "Estado"
FROM tbl_recordsacademicos ra
JOIN tbl_inscripciones i ON ra.fk_inscripcion = i.pk_inscripcion
JOIN tbl_periodos p ON i.fk_periodo = p.pk_periodo
JOIN tbl_usuariosgrupos ug ON i.fk_usuariogrupo = ug.pk_usuariogrupo
JOIN tbl_usuarios u ON ug.fk_usuario = u.pk_usuario
JOIN tbl_asignaturas a ON ra.fk_asignatura = a.pk_asignatura
JOIN tbl_atributos m ON a.fk_materia = m.pk_atributo
JOIN tbl_atributos est ON ra.fk_atributo = est.pk_atributo
WHERE u.pk_usuario = TU_CEDULA AND est.valor ILIKE '%aprobado%'
ORDER BY p.fechainicio DESC, "Materia";
