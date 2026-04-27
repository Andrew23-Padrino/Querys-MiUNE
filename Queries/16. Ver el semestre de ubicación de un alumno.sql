SELECT 
    u.pk_usuario as "Cédula", 
    CONCAT(u.nombre, ' ', u.apellido) AS "Nombre Completo", 
    sem.valor as "Semestre Ubicación"
FROM tbl_inscripciones i
JOIN tbl_usuariosgrupos ug ON i.fk_usuariogrupo = ug.pk_usuariogrupo
JOIN tbl_usuarios u ON ug.fk_usuario = u.pk_usuario
JOIN tbl_atributos sem ON i.fk_semestre = sem.pk_atributo
WHERE u.pk_usuario = TU_CEDULA AND i.fk_periodo = 164;