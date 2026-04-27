SELECT 
    sede.nombre as "Sede", 
    esc.valor as "Escuela", 
    COUNT(i.pk_inscripcion) as "Cantidad de Alumnos"
FROM tbl_inscripciones i
JOIN tbl_estructuras sede ON i.fk_estructura = sede.pk_estructura
JOIN tbl_atributos esc ON i.fk_atributo = esc.pk_atributo
WHERE i.fk_periodo = 164
GROUP BY sede.nombre, esc.valor
ORDER BY sede.nombre, "Cantidad de Alumnos" DESC;