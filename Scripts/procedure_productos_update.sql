/*
PROCEDIMIENTO PARA CAMBIAR EL PRECIO DE UN PRODUCTO
call cambiar_precio(IDPRODUCTO, PRECIO);

FECHA: 02/10/2023
AUTOR: MATIAS RIVAS
*/

USE tienda;

drop procedure if exists cambiar_precio;
delimiter $$
CREATE PROCEDURE cambiar_precio(
	IN _id INT,
    IN _precio INT
)
BEGIN
UPDATE productos
SET PRECIO = _precio
WHERE IDPRODUCTO= _id;
END$$