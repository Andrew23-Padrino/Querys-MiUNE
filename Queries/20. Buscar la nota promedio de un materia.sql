SELECT 
    m.valor as "Materia", 
    ROUND(AVG(ra.nota), 2) as "Nota Promedio"
FROM tbl_recordsacademicos ra
JOIN tbl_asignaturas a ON ra.fk_asignatura = a.pk_asignatura
JOIN tbl_atributos m ON a.fk_materia = m.pk_atributo
WHERE m.valor = 'NOMBRE_DE_LA_MATERIA' AND ra.nota > 0
GROUP BY m.valor;