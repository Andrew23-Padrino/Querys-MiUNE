SELECT 
    h.valor as "Horario", 
    m.valor as "Materia", 
    sec.valor as "Sección", 
    est.nombre as "Edificio/Salón"
FROM tbl_asignaciones asig
JOIN tbl_usuariosgrupos ug ON asig.fk_usuariogrupo = ug.pk_usuariogrupo
JOIN tbl_usuarios u ON ug.fk_usuario = u.pk_usuario
JOIN tbl_asignaturas a ON asig.fk_asignatura = a.pk_asignatura
JOIN tbl_atributos m ON a.fk_materia = m.pk_atributo
JOIN tbl_atributos sec ON asig.fk_seccion = sec.pk_atributo
JOIN tbl_horarios h ON asig.fk_horario = h.pk_horario
JOIN tbl_estructuras est ON asig.fk_estructura = est.pk_estructura
WHERE u.pk_usuario = CEDULA_PROFESOR AND asig.fk_periodo = 164
ORDER BY "Horario";