select escuela.valor, tp.nombre, materia.valor  
from tbl_asignaturas ta  
join tbl_pensums tp on ta.fk_pensum = tp.pk_pensum 
join tbl_atributos escuela on tp.fk_escuela = escuela.pk_atributo  
join tbl_atributos materia on ta.fk_materia = materia.pk_atributo;

----Codigo del pensum, codigo de la materia y codigo de la carrera