SELECT 
    CONCAT(tu2.nombre, ' ' ,tu2.apellido) as "NOMBRE COMPLETO", 
    escuela.valor as "ESCUELA",
    ti.numeropago, 
    tu2.pk_usuario as "cedula", 
    tu2.correo 
FROM tbl_inscripciones ti
JOIN tbl_usuariosgrupos tu ON ti.fk_usuariogrupo = tu.pk_usuariogrupo 
JOIN tbl_usuarios tu2 ON tu.fk_usuario = tu2.pk_usuario 
JOIN tbl_atributos escuela ON ti.fk_atributo = escuela.pk_atributo 
WHERE ti.fk_periodo = 160 AND tu2.pk_usuario = 28507012;
