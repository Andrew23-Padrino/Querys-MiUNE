SELECT 
    esc.valor as "Escuela", 
    pen.nombre as "Pensum", 
    m.valor as "Materia", 
    a.codigopropietario as "Código"
FROM tbl_asignaturas a
JOIN tbl_pensums pen ON a.fk_pensum = pen.pk_pensum
JOIN tbl_atributos esc ON pen.fk_escuela = esc.pk_atributo
JOIN tbl_atributos m ON a.fk_materia = m.pk_atributo
WHERE esc.valor = 'NOMBRE_CARRERA' AND pen.nombre = 'AÑO_PENSUM'
ORDER BY "Escuela", "Pensum", "Materia";
