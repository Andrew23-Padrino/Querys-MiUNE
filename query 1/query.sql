select concat(tu2.nombre, ' ' ,tu2.apellido) as "NOMBRE COMPLETO", ti.numeropago, tu2.pk_usuario as "cedula", tu2.correo /*tu2.nombre|| ' ' ||tu2.apellido */  
from tbl_inscripciones ti
join tbl_usuariosgrupos tu 
on ti.fk_usuariogrupo = tu.pk_usuariogrupo 
join tbl_usuarios tu2 
on tu.fk_usuario = tu2.pk_usuario 
where fk_periodo = 164 and fk_usuario = 28507012


select * from tbl_usuariosgrupos tu 
where fk_usuario = 28507012