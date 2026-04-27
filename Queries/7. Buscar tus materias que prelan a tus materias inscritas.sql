SELECT 
    m_ins.valor as "Materia Inscrita", 
    m_prelada.valor as "Materia Requisito"
FROM tbl_recordsacademicos ra
JOIN tbl_inscripciones i ON ra.fk_inscripcion = i.pk_inscripcion
JOIN tbl_usuariosgrupos ug ON i.fk_usuariogrupo = ug.pk_usuariogrupo
JOIN tbl_usuarios u ON ug.fk_usuario = u.pk_usuario
JOIN tbl_asignaturas a_ins ON ra.fk_asignatura = a_ins.pk_asignatura
JOIN tbl_atributos m_ins ON a_ins.fk_materia = m_ins.pk_atributo
JOIN tbl_prelaciones pre ON a_ins.pk_asignatura = pre.fk_asignatura
JOIN tbl_asignaturas a_prelada ON pre.fk_asignaturaprelada = a_prelada.pk_asignatura
JOIN tbl_atributos m_prelada ON a_prelada.fk_materia = m_prelada.pk_atributo
WHERE u.pk_usuario = TU_CEDULA AND i.fk_periodo = 164
ORDER BY "Materia Inscrita";