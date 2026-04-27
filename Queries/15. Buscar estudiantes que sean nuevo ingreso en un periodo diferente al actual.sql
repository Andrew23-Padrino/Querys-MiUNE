SELECT 
    u.pk_usuario as "Cédula", 
    CONCAT(u.nombre, ' ', u.apellido) AS "Nombre Completo", 
    p.fechainicio as "Periodo Ingreso"
FROM tbl_inscripciones i
JOIN tbl_usuariosgrupos ug ON i.fk_usuariogrupo = ug.pk_usuariogrupo
JOIN tbl_usuarios u ON ug.fk_usuario = u.pk_usuario
JOIN tbl_atributos tipo_ing ON i.fk_tipo = tipo_ing.pk_atributo
JOIN tbl_periodos p ON i.fk_periodo = p.pk_periodo
WHERE tipo_ing.valor ILIKE '%Nuevo Ingreso%' 
AND i.fk_periodo <> 164
ORDER BY p.fechainicio DESC;