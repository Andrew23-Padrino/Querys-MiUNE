select count(*)   
from tbl_inscripciones ti
join tbl_usuariosgrupos tu 
on ti.fk_usuariogrupo = tu.pk_usuariogrupo 
join tbl_usuarios tu2 
on tu.fk_usuario = tu2.pk_usuario 
where fk_usuario = 28507012