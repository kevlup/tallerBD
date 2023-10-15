/*
PROCEDIMIENTO ELIMINAR PRODUCTOS EN LA TABLA PRODUCTOS
call eliminar_producto(IDPRODUCTO)

FECHA: 02/10/2023
AUTOR: MATIAS RIVAS
*/
USE tienda;

drop procedure if exists eliminar_producto;
delimiter $$
CREATE PROCEDURE eliminar_producto(
	IN _id INT
)
BEGIN
DELETE
FROM PRODUCTOS
WHERE IDPRODUCTO=_id;
END$$