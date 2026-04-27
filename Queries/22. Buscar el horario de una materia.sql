SELECT 
    sec.valor as "Sección", 
    est.nombre as "Edificio/Salón", 
    h.valor as "Horario", 
    CONCAT(prof.nombre, ' ', prof.apellido) AS "Profesor"
FROM tbl_asignaciones asig
JOIN tbl_asignaturas a ON asig.fk_asignatura = a.pk_asignatura
JOIN tbl_atributos m ON a.fk_materia = m.pk_atributo
JOIN tbl_atributos sec ON asig.fk_seccion = sec.pk_atributo
JOIN tbl_horarios h ON asig.fk_horario = h.pk_horario
JOIN tbl_estructuras est ON asig.fk_estructura = est.pk_estructura
JOIN tbl_usuariosgrupos ug_prof ON asig.fk_usuariogrupo = ug_prof.pk_usuariogrupo
JOIN tbl_usuarios prof ON ug_prof.fk_usuario = prof.pk_usuario
WHERE m.valor = 'NOMBRE_DE_LA_MATERIA' AND asig.fk_periodo = 164
ORDER BY "Sección", "Horario";