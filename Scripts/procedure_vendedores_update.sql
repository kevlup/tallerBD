/*
PROCEDIMIENTO ACTUALIZAR CORREO DE VENDEDOR EN LA TABLA VENDEDORES
call actualizar_correo(IDVENDEDOR, CORREO)

FECHA: 02/10/2023
AUTOR: MATIAS RIVAS
*/

USE tienda;

drop procedure if exists actualizar_correo;
delimiter $$
CREATE PROCEDURE actualizar_correo(
	IN _id INT,
    IN _correo VARCHAR(20)
)
BEGIN
UPDATE VENDEDORES
SET CORREO = _correo
WHERE IDVENDEDOR=_id;
END$$