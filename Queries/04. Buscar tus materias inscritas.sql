SELECT 
    m.valor as "Materia", 
    a.codigopropietario as "Código", 
    sec.valor as "Sección"
FROM tbl_recordsacademicos ra
JOIN tbl_inscripciones i ON ra.fk_inscripcion = i.pk_inscripcion
JOIN tbl_usuariosgrupos ug ON i.fk_usuariogrupo = ug.pk_usuariogrupo
JOIN tbl_usuarios u ON ug.fk_usuario = u.pk_usuario
JOIN tbl_asignaturas a ON ra.fk_asignatura = a.pk_asignatura
JOIN tbl_atributos m ON a.fk_materia = m.pk_atributo
JOIN tbl_asignaciones asig ON ra.fk_asignacion = asig.pk_asignacion
JOIN tbl_atributos sec ON asig.fk_seccion = sec.pk_atributo
WHERE u.pk_usuario = TU_CEDULA AND i.fk_periodo = N°_de_periodo
ORDER BY "Materia";
