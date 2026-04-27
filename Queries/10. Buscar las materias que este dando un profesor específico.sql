SELECT DISTINCT 
    m.valor as "Materia", 
    a.codigopropietario as "Código", 
    sec.valor as "Sección"
FROM tbl_asignaciones asig
JOIN tbl_usuariosgrupos ug ON asig.fk_usuariogrupo = ug.pk_usuariogrupo
JOIN tbl_usuarios u ON ug.fk_usuario = u.pk_usuario
JOIN tbl_asignaturas a ON asig.fk_asignatura = a.pk_asignatura
JOIN tbl_atributos m ON a.fk_materia = m.pk_atributo
JOIN tbl_atributos sec ON asig.fk_seccion = sec.pk_atributo
WHERE u.pk_usuario = CEDULA_PROFESOR AND asig.fk_periodo = 164
ORDER BY "Materia", "Sección";