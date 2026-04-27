SELECT 
    u.pk_usuario as "Cédula", 
    CONCAT(u.nombre, ' ', u.apellido) AS "Nombre Completo", 
    attr.valor as "Rol"
FROM tbl_usuarios u
JOIN tbl_usuariosgrupos ug ON u.pk_usuario = ug.fk_usuario
JOIN tbl_atributos attr ON ug.fk_grupo = attr.pk_atributo
WHERE attr.valor ILIKE '%Administrativo%' OR attr.valor ILIKE '%Profesor%'
ORDER BY "Rol", "Nombre Completo";