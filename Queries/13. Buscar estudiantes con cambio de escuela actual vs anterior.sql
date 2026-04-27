SELECT 
    u.pk_usuario as "Cédula", 
    CONCAT(u.nombre, ' ', u.apellido) AS "Nombre Completo", 
    esc_ant.valor AS "Escuela Anterior", 
    esc_act.valor AS "Escuela Nueva"
FROM tbl_inscripciones i_act
JOIN tbl_inscripciones i_ant ON i_act.fk_usuariogrupo = i_ant.fk_usuariogrupo 
     AND i_act.pk_inscripcion > i_ant.pk_inscripcion
JOIN tbl_usuariosgrupos ug ON i_act.fk_usuariogrupo = ug.pk_usuariogrupo
JOIN tbl_usuarios u ON ug.fk_usuario = u.pk_usuario
JOIN tbl_atributos esc_act ON i_act.fk_atributo = esc_act.pk_atributo
JOIN tbl_atributos esc_ant ON i_ant.fk_atributo = esc_ant.pk_atributo
WHERE i_act.fk_periodo = 164
AND i_act.fk_atributo <> i_ant.fk_atributo;