/*
PROCEDIMIENTO ELIMINAR VENDEDORES EN LA TABLA VENDEDORES
call eliminar_vendedor(IDVENDEDOR);

FECHA: 02/10/2023
AUTOR: MATIAS RIVAS
*/

USE tienda;

drop procedure if exists eliminar_vendedor;
delimiter $$
CREATE PROCEDURE eliminar_vendedor(
	IN _id INT
)
BEGIN
DELETE
FROM VENDEDORES
WHERE IDVENDEDOR=_id;
END$$