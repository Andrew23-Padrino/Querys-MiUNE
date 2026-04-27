SELECT 
    t.titulo as "Tesis", 
    CONCAT(tutor.nombre, ' ', tutor.apellido) AS "Tutor",
    CONCAT(jurado.nombre, ' ', jurado.apellido) AS "Jurado"
FROM tbl_tesis t
LEFT JOIN tbl_tutorestesis tt ON t.fk_datotesis = tt.fk_datotesis
LEFT JOIN tbl_evaluadorestesis et ON t.fk_datotesis = et.fk_datotesis
LEFT JOIN tbl_usuariosgrupos ug_t ON tt.fk_usuariogrupo = ug_t.pk_usuariogrupo
LEFT JOIN tbl_usuarios tutor ON ug_t.fk_usuario = tutor.pk_usuario
LEFT JOIN tbl_usuariosgrupos ug_j ON et.fk_usuariogrupo = ug_j.pk_usuariogrupo
LEFT JOIN tbl_usuarios jurado ON ug_j.fk_usuario = jurado.pk_usuario
WHERE t.titulo = 'TITULO_DE_LA_TESIS' OR t.cota = 'COTA_DE_LA_TESIS';