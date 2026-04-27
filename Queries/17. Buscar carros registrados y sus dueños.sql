SELECT 
    v.placa as "Placa", 
    marca.valor as "Marca", 
    modelo.valor as "Modelo", 
    u.pk_usuario as "Cédula", 
    CONCAT(u.nombre, ' ', u.apellido) AS "Propietario"
FROM tbl_vehiculos v
JOIN tbl_usuariosvehiculos uv ON v.pk_vehiculo = uv.fk_vehiculo
JOIN tbl_usuarios u ON uv.fk_usuario = u.pk_usuario
JOIN tbl_atributos modelo ON v.fk_modelo = modelo.pk_atributo
LEFT JOIN tbl_atributos marca ON modelo.fk_atributo = marca.pk_atributo
ORDER BY "Marca", "Modelo";