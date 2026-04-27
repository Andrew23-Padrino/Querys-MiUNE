SELECT DISTINCT 
    u.pk_usuario as "Cédula", 
    CONCAT(u.nombre, ' ', u.apellido) AS "Nombre Completo"
FROM tbl_usuarios u
JOIN tbl_usuariosgrupos ug_est ON u.pk_usuario = ug_est.fk_usuario
JOIN tbl_atributos attr_est ON ug_est.fk_grupo = attr_est.pk_atributo
JOIN tbl_inscripciones i ON ug_est.pk_usuariogrupo = i.fk_usuariogrupo
WHERE attr_est.valor ILIKE '%Estudiante%' AND i.fk_periodo = 164
AND EXISTS (
    SELECT 1 FROM tbl_usuariosgrupos ug_prof 
    JOIN tbl_atributos attr_prof ON ug_prof.fk_grupo = attr_prof.pk_atributo
    WHERE ug_prof.fk_usuario = u.pk_usuario AND attr_prof.valor ILIKE '%Profesor%'
)
ORDER BY "Nombre Completo";
