SELECT i.pk_inscripcion, u.pk_usuario as cedula, u.nombre, u.apellido, p.fechainicio, p.fechafin, esc.valor as escuela, sede.nombre as sede
FROM tbl_inscripciones i
JOIN tbl_usuariosgrupos ug ON i.fk_usuariogrupo = ug.pk_usuariogrupo
JOIN tbl_usuarios u ON ug.fk_usuario = u.pk_usuario
JOIN tbl_periodos p ON i.fk_periodo = p.pk_periodo
JOIN tbl_pensums pen ON i.fk_pensum = pen.pk_pensum
JOIN tbl_atributos esc ON pen.fk_escuela = esc.pk_atributo
JOIN tbl_estructuras sede ON i.fk_estructura = sede.pk_estructura
WHERE u.pk_usuario = TU_CEDULA AND p.pk_periodo = N°_periodo;
