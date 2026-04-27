SELECT 
    m.valor as "Materia", 
    MIN(ra.nota) as "Nota Mínima", 
    MAX(ra.nota) as "Nota Máxima"
FROM tbl_recordsacademicos ra
JOIN tbl_inscripciones i ON ra.fk_inscripcion = i.pk_inscripcion
JOIN tbl_asignaturas a ON ra.fk_asignatura = a.pk_asignatura
JOIN tbl_atributos m ON a.fk_materia = m.pk_atributo
WHERE i.fk_periodo = 164 AND m.valor = 'NOMBRE_DE_LA_MATERIA'
GROUP BY m.valor;